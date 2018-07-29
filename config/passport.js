// config/passport.js

// load all the things we need
var LocalStrategy   = require('passport-local').Strategy;
var mysql = require('mysql');
var bcrypt = require('bcrypt-nodejs');
var pool = require('./database');
var myjs = require('../public/js/my.js');
var corejs = require('../controller/core.js');
		
// expose this function to our app using module.exports
module.exports = function(passport) {

    // =========================================================================
    // passport session setup ==================================================
    // =========================================================================
    // required for persistent login sessions
    // passport needs ability to serialize and unserialize users out of session

    // used to serialize the user for the session
    passport.serializeUser(function(user, done) {
		done(null, user.id);
    });

    // used to deserialize the user
    passport.deserializeUser(function(id, done) {
		pool.getConnection(function(err, connection) {
			connection.query("SELECT * FROM vi_taa_userlist WHERE id = ? ",[id], function(err, rows){
				var sql2 = "select * from vi_taa_userloginlog log where log.userid = ? limit ?";
				connection.query(sql2,[id,global.loginLogShowCount],function(err, logrows){
					connection.release();
					if (err){
						//corejs._createLog("log",req,id,0,err);
						rows[0].log = [];
					}else{
						rows[0].log = logrows;
					}
					done(err, rows[0]);
				});	
			});
		});
    });

    // =========================================================================
    // LOCAL SIGNUP ============================================================
    // =========================================================================
    // we are using named strategies since we have one for login and one for signup
    // by default, if there was no name, it would just be called 'local'

  /*  passport.use(
        'local-signup',
        new LocalStrategy({
            // by default, local strategy uses username and password, we will override with email
            usernameField : 'username',
            passwordField : 'password',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
        function(req, username, password, done) {
            // find a user whose email is the same as the forms email
            // we are checking to see if the user trying to login already exists
			connection.getConnection(function(err, mclient) {
				mclient.query("SELECT * FROM users WHERE username = ?",[username], function(err, rows) {
					if (err)
						return done(err);
					if (rows.length) {
						return done(null, false, req.flash('signupMessage', 'That username is already taken.'));
					} else {
						// if there is no user with that username
						// create the user
						var newUserMysql = {
							username: username,
							password: bcrypt.hashSync(password, null, null)  // use the generateHash function in our user model
						};

						var insertQuery = "INSERT INTO users ( username, password ) values (?,?)";

						mclient.query(insertQuery,[newUserMysql.username, newUserMysql.password],function(err, rows) {
							newUserMysql.id = rows.insertId;

							return done(null, newUserMysql);
						});
					}
				});
			});
        })
    );
*/
    // =========================================================================
    // LOCAL LOGIN =============================================================
    // =========================================================================
    // we are using named strategies since we have one for login and one for signup
    // by default, if there was no name, it would just be called 'local'

    passport.use(
        'local-login',
        new LocalStrategy({
            // by default, local strategy uses username and password, we will override with email
            usernameField : 'username',
            passwordField : 'password',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
        function(req, username, password, done) { // callback with email and password from our form
			validate = validateForm(req,username, password)
			if(validate!= true){
				return done(null, false, req.flash('loginMessage', validate)); 
			}
			
			var savedCaptcha = req.session.captcha;
			var captcha = corejs._cleanXss(req.body.captcha);
			username = corejs._cleanXss(username);
			password = corejs._cleanXss(password);
			
			if(savedCaptcha != null && savedCaptcha != undefined && req.session.countLog >= global.countCaptchaForShow){
				if(captcha != null && captcha != undefined){
					if(savedCaptcha.toUpperCase != captcha.toUpperCase){
						return done(null, false, req.flash('loginMessage', "متن عکس به درستی ارسال نشده است")); 
					}
				}else{
					return done(null, false, req.flash('loginMessage', "متن عکس به درستی ارسال نشده است")); 
				}
			}
			
			req.session.countLog ++;
			
            pool.getConnection(function(err, connection) {
				/*var insertQuery = "update taa_users us set password = '"+bcrypt.hashSync("1", null, null)+"' where us.username = 'msh';";
				connection.query(insertQuery ,function(err, rows) {});
				connection.release();*/
				var sql = "SELECT *,COALESCE(userCountLogin(us.id,"+global.countCaptchaForShow+","+global.errorLoginLog+"),0) as countLog FROM taa_users us WHERE us.status != 0 and  us.username = ?";
				connection.query(sql,[username],function(err, rows){
					if (err){
						connection.release();
						req.flash('loginMessage','M99');
						return done(err);
					}
					if (!rows.length) {
						connection.release();						
						corejs._createLog("login",req,null,global.errorLoginLog,username);
						req.flash('loginMessage','M103');
						return done(null, false, req.flash('loginMessage','مجوز ورود صادر نگردید , لطفا '+global.timeMinuteForUnLock+' دقیقه دیگر امتحان نمایید یا در صورت لزوم با مدیر سامانه تماس بگیرید')); // req.flash is the way to set flashdata using connect-flash
					}
					
					// if the user is found but the password is wrong
					bcrypt.compare(password, rows[0].password, function(err, res) {
						var checkUserLogin = corejs._checkUserLogin(req,res,rows[0]);
						if(checkUserLogin == true){
							delete rows[0].password;
							return done(null, rows[0]);
							//return done(null, false, req.flash('loginMessage', 'OK')); // create the loginMessage and save it to session as flashdata
						}else{
							connection.release();
							return done(null, false, req.flash('loginMessage','مجوز ورود صادر نگردید , لطفا '+global.timeMinuteForUnLock+' دقیقه دیگر امتحان نمایید یا در صورت لزوم با مدیر سامانه تماس بگیرید')); // create the loginMessage and save it to session as flashdata
						}
					});				
				});
			});
        })
    );
};

function validateForm(req,username , password){
	if(username == '' || password == ''){
		return 'نام کاربری یا رمز عبور خالی می باشد';
	}
	if(username.length > 20 || password.length > 20){
		return 'تعداد کاراکترهای ارسالی قابل قبول نیست';
	}
	var test1 = myjs.usernamePatern(username) && !myjs.blackList(username); 
	if(test1 == false){
		corejs._createLog("login",req,null,global.successLoginLog,corejs._cleanXss(username));
		return 'نام کاربری شامل کاراکترهای غیر مجاز می باشد';
	}
	var test2 = myjs.passwordPatern(password) && !myjs.blackList(password);  
	if(test2 == false){
		corejs._createLog("login",req,null,global.successLoginLog,corejs._cleanXss(password));
		return 'رمز عبور شامل کاراکترهای غیر مجاز می باشد';
	}
	return true;
}
