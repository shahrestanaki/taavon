// app/routes.js

var dashboard = require('../controller/admin/dashboard');
var userslist = require('../controller/admin/userslist');
var userstrans = require('../controller/admin/userstrans');
var mytrans = require('../controller/users/mytrans');
var message = require('../controller/public/message');
var corejs = require('../controller/core.js');
var svgCaptcha = require('svg-captcha');
//var csrf = require('csurf');
	//var csrfProtection = csrf({ cookie: true })
module.exports = function(app, passport) {
	
	// HOME PAGE (with login links) ========
	app.get('/', function(req, res) {
		var captchaShow = false;
		if(req.session.countLog != null && req.session.countLog != undefined && req.session.countLog >= global.countCaptchaForShow -1 ){
			captchaShow = true;
		}
		res.render('login.ejs', { message: req.flash('loginMessage'),captcha: captchaShow,csrfToken: req.csrfToken()});
	});

	// LOGIN ===============================
	// show the login form
	app.get('/login', function(req, res) {
		var captchaShow = false;
		if(req.session.countLog != null && req.session.countLog != undefined && req.session.countLog >= global.countCaptchaForShow -1 ){
			captchaShow = true;
		}
		//delete req.session.user;
		res.render('login.ejs', { message: req.flash('loginMessage'),captcha: captchaShow,csrfToken: req.csrfToken()});
	});

	// process the login form
	app.post('/login', passport.authenticate('local-login', {
            successRedirect : '/dashboard', // redirect to the secure profile section
            failureRedirect : '/login', // redirect back to the signup page if there is an error
            failureFlash : true // allow flash messages
		}), function(req, res) {
            /*if (req.body.remember) {
              req.session.cookie.maxAge = 1000 * 60 * 3;
            } else {
              req.session.cookie.expires = false;
            }*/
	});

	// get captcha
	app.get('/captcha', function (req, res) {
		var options = {
			size : 5,
			ignoreChars: '0o1i' ,
			noise : 2,
		};
		var captcha = svgCaptcha.create(options);
		req.session.captcha = captcha.text;
		
		res.type('svg');
		res.status(200).send(captcha.data);
	});

	/*// SIGNUP ============================
	// show the signup form
	app.get('/signup', function(req, res) {
		// render the page and pass in any flash data if it exists
		res.render('signup.ejs', { message: req.flash('signupMessage') });
	});

	// process the signup form
	app.post('/signup', passport.authenticate('local-signup', {
		successRedirect : '/profile', // redirect to the secure profile section
		failureRedirect : '/signup', // redirect back to the signup page if there is an error
		failureFlash : true // allow flash messages
	}));*/

	// PROFILE SECTION ======================
	// we will want this protected so you have to be logged in to visit
	// we will use route middleware to verify this (the isLoggedIn function)
	/*app.get('/profile', isLoggedIn, function(req, res) {
		res.render('admin/dashboard.ejs', {
			user : req.user // get the user out of session and pass to template
		});
	});*/

	// LOGOUT ===============================
	app.get('/logout', function(req, res) {
		if(req.user && req.user.id){
			corejs._createLog("login",req,req.user.id,global.exitLoginLog,null);
		}
		req.session.destroy(function (err) {
			if (!err) {
				req.logout();
				res.clearCookie('hello_cookie', { path: '/' });
				res.redirect('/login');
			} else {
				console.log('\n error in req.session.destroy:' + err);
			}

		});		
	});

	// controller ===========================
	// dashboard -----
	app.get('/dashboard', isLoggedIn,dashboard.form);
	app.post('/changepass', isLoggedIn,dashboard.changepass);
	app.get('/loginchart', isAdminLoggedIn,dashboard.loginchart);
	app.post('/avatar', isLoggedIn,dashboard.avatar);
	// users list -----
	app.get('/usersform', isAdminLoggedIn, userslist.form);
	app.get('/userslist', isAdminLoggedIn, userslist.list);
	app.post('/userslist',isAdminLoggedIn, userslist.save);
	app.put('/userschangepass', isAdminLoggedIn,userslist.changepass);
	app.delete('/userslist',isAdminLoggedIn, userslist.delete);
	app.put('/userslist',isAdminLoggedIn, userslist.edit);
	app.get('/usersloglogin',isAdminLoggedIn, userslist.usersloglogin);	
	app.delete('/ejectuser',isAdminLoggedIn, userslist.ejectuser);
	app.get('/userlistlight',isAdminLoggedIn, userslist.userlistlight);
	
	// users Transaction -----
	app.get('/userstransform',isAdminLoggedIn, userstrans.form);
	app.get('/userstrans',isAdminLoggedIn, userstrans.list);
	app.post('/userstrans',isAdminLoggedIn, userstrans.save);
	app.post('/userstransedit',isAdminLoggedIn, userstrans.edit);
	app.delete('/userstrans',isAdminLoggedIn, userstrans.delete);
	app.get('/userstranssum',isAdminLoggedIn, userstrans.userstranssum);
	// my Transaction -----
	app.get('/mytransform',isLoggedIn, mytrans.form);
	app.get('/mytrans',isLoggedIn, mytrans.list);
	app.get('/mystranssum',isLoggedIn, mytrans.userstranssum);
	
	// public message --------
	app.get('/mymessagecount', isLoggedIn, message.message_count);
	app.get('/message_new', isLoggedIn, message.newform);
	app.post('/message_new',isLoggedIn, message.save);
	app.get('/message_load/:code', isLoggedIn, message.message_load);
	app.get('/message_history/:code', isLoggedIn, message.message_history);
	app.get('/message_laststatue/:code', isLoggedIn, message.message_laststatue);
	app.get('/listuseradmin', isLoggedIn, message.listuseradmin);
	app.post('/changeStatus',isLoggedIn, message.changeStatus);
	app.get('/message_receive', isLoggedIn, message.receiveform);
	app.get('/message_received', isLoggedIn, message.message_received);
	app.get('/message_send', isLoggedIn, message.sendform);
	app.get('/message_sended', isLoggedIn, message.message_sended);
	// redirect to error page -------
	app.get('/403', function(req, res){
		res.status(403).render('./403.html');
	});
	app.get('/404', function(req, res){
		res.status(404).render('./404.html');
	});
	//The 404 Route *****(ALWAYS Keep this as the last route) *****
	app.get('*', function(req, res){
		corejs._createLog('log',req,req.user === undefined ? null : req.user.id,global.exitLoginLog,'404.html');
		res.status(404).render('./404.html');
	});
};

	// route middleware to make sure
	function isAdminLoggedIn(req, res, next) {
		if(req.user.rules == 2){
			corejs._createLog('log',req,req.user === undefined ? null : req.user.id,global.exitLoginLog,'401.html');
			res.status(401).render('./401.html');
			return ;
		}
		if (req.isAuthenticated()){
			return next();
		}
		res.redirect('/logout');
	}
	
	// route middleware to make sure
	function isLoggedIn(req, res, next) {
		// if user is authenticated in the session, carry on
		if (req.isAuthenticated()){
			return next();
		}
		// if they aren't redirect them to the home page
		res.redirect('/logout');
	}
