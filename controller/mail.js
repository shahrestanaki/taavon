var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'flowerflymy@gmail.com',
    pass: '95*FLmohammad'
  }
});

var mailOptions = {
  from: 'flowerflymy@gmail.com',
  to: 'adernalin_77@yahoo.com',
  subject: 'Sending Email using Node.js',
  text: 'That was easy!'
};

transporter.sendMail(mailOptions, function(error, info){
  if (error) {
    console.log(error);
  } else {
    console.log('Email sent: ' + info.response);
  }
}); 
