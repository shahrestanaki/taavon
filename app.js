/*var mysql = require('mysql');*/
/*var connection = require('express-myconnection');*/
/*require('ejs');*/
/*require('passport-local')*/
/*require('bcrypt-nodejs')*/
/*require('moment-timezone')*/
/*require('persian-date');https://github.com/babakhani/PersianDate*/
/*require('svg-captcha');*/
/*require('xss-filters')*/
/*require('validator')*/

//---- cluster for reastart server For handle Error -----//
/*var cluster = require('cluster');
var workers = process.env.WORKERS || require('os').cpus().length;

if (cluster.isMaster) {
  console.log('start cluster with %s workers', workers);
  for (var i = 0; i < workers; ++i) {
    var worker = cluster.fork().process;
    console.log('worker %s started.', worker.pid);
  }
  cluster.on('exit', function(worker) {
    console.log('worker %s died. restart...', worker.process.pid);
    cluster.fork();
  });
//--------------------------------//  
} else {*/
	//-------- Main App ----------//
	var express = require('express');/*express v4*/
	var bodyParser = require('body-parser');
	var methodOverride = require('method-override');
	var errorHandler = require('express-error-handler');
	var http = require('http');
	var path = require('path');
	var morgan = require('morgan');
	require('./config/global.js');
	var app = module.exports = express();
	var helmet = require('helmet');
	var csrf = require('csurf');
	var RateLimit = require('express-rate-limit');
	var corejs = require('./controller/core.js');
	require('css.escape');
	var fs = require('fs');
	var util = require('util');
	
	//-------- for log in file
	var logFile = fs.createWriteStream('log.txt', { flags: 'a' });// Or 'w' to truncate the file every time the process starts.
	var logStdout = process.stdout;
	console.error = function () {
	  logFile.write(util.format.apply(null, arguments) + '\n');
	  logStdout.write(util.format.apply(null, arguments) + '\n');
	}
	/*console.log = console.error;*/
	
	/* send error for console */
	process.on('uncaughtException', function (err) {
		console.error((new Date)+ ' uncaughtException:', err.message)
		console.error("\n" +err.stack)
		process.exit(1);
	})

	/*auth*/
	var cookieParser = require('cookie-parser');
	var session  = require('express-session');
	var passport = require('passport');
	var flash    = require('connect-flash');
	var passportOneSessionPerUser=require('passport-one-session-per-user');
	// ---- required for passport
	var SessionStore = require('express-mysql-session')(session);
	var db = require('./config/database');
	// store session in db /* user resume in app restart */
	var sessionStore = new SessionStore(db.options);

	app.use(cookieParser()); // read cookies (needed for auth)
	app.use(session({
		name : 'hello_cookie',
		key: 'session_cookie_ForYou',
		secret: 'session_cookie_secretMSH', // session secret
		store: sessionStore,
		resave: false,
		saveUninitialized: false,/*false is useful for implementing login sessions*/
		cookie: {maxAge: global.maxAgeSession,secure:false,httpOnly: true,signed: true},//maxAge: new Date(Date.now() + 20000)}/* secure:true fore https */
		rolling: true,/*for reset maxAge*/
		unset: 'destroy',
	}));
	app.use(passport.initialize());
	app.use(passport.session()); // persistent login sessions
	passport.use(new passportOneSessionPerUser()); /* must after passport.session() */
	app.use(passport.authenticate('passport-one-session-per-user'));
	app.use(flash()); // use connect-flash for flash messages stored in session

	/** Configuration */
	//all environments
	app.set('port', process.env.PORT || 3000);
	app.set('views', __dirname + '/views');
	app.set('view engine', 'ejs'); /* npm install ejs */
	app.engine('html', require('ejs').renderFile);// install html file 
	
	app.use(express.static(path.join(__dirname, 'public')));
	app.use(morgan('dev'));

	app.use(bodyParser.urlencoded({extended : false})); // for parsing application/x-www-form-urlencoded
	app.use(bodyParser.json()); // for parsing application/json
	
	app.use(methodOverride());

	var env = process.env.NODE_ENV || 'development';
	//development only
	if (env === 'development')app.use(errorHandler());

	// clear chache for security logOut
	/*app.use(function(req, res, next) {
	  res.set('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');
	  next();
	});*/
	
	// security
	app.use(helmet({frameguard: {action: 'deny'}}));

	app.use(csrf());
	//app.use(csrf({cookie: true ,cookie:{key:'XSRF-TOKEN'}}));
	app.use(function (err, req, res, next) {
		console.log('\n : err.code' + err.code  );
		if (err && err.code === 'EBADCSRFTOKEN'){
			corejs._createLog('log',req,req.user === undefined ? null : req.user.id,global.exitLoginLog,'403.html');
			res.status(403).render('./403.html');
		}else{
			return next(err);
		}
	});
	
	app.use(function ( req, res, next) {
		res.set('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');// clear chache for security logOut
		//res.locals._csrf = req.csrfToken(); //csrf token validation
		//res.cookie('XSRF-TOKEN', req.csrfToken());/*for every change csrf*/
		return next();
	});
	//Preventing brute force and DoS attack
	var loginLimiter = new RateLimit({windowMs: global.bruteforce_windowMs,max: global.bruteforce_max,
		delayMs: global.bruteforce_delayMs,delayAfter: global.bruteforce_delayAfter,message: global.bruteforce_message,
	});app.use('/login',loginLimiter);//  apply to login requests
	var limiter = new RateLimit({windowMs: global.bruteforceAll_windowMs,max: global.bruteforceAll_max,
		delayMs: global.bruteforceAll_delayMs,delayAfter: global.bruteforceAll_delayAfter,message: global.bruteforce_message,
	});app.use(limiter);//  apply to all requests

	//production only
	if (env === 'production') {	/*TODO*/};
	
	require('./config/passport')(passport); // pass passport for configuration
	
	// routes ======================================================================
	require('./config/routes.js')(app, passport); // load our routes and pass in our app and fully configured passport

	var server = http.createServer(app).listen(app.get('port'), function() {
		console.log('Express server listening on port ' + app.get('port'));
	});
	//-------- Main App ----------//
/*}*/

