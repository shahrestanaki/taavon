//----- General 
global.loginLogShowCount = 5;
global.loginLogShowCountAdmin = 15;
global.changIdForHack = 99;
//----- Error
global.ErrorDataBase = 'خطایی رخ داده است . در صورت تکرار با ادمین سامانه تماس بگیرید';
global.Error_Hack = 3;
//----- log login status
global.successLoginLog = 1;
global.successLoginLogDesc = "ورود موفق";
global.exitLoginLog = 2;
global.exitLoginLogDesc = "خروج کاربر";
global.errorLoginLog = 3;
global.errorLoginLogDesc = "ورود ناموفق";
//----- user login
global.countCaptchaForShow = 3;
global.countForUserLock = global.countCaptchaForShow ;
global.timeMinuteForUnLock = 3 ;
global.maxAgeSession = 20*60*1000 ; // 20 minutes
//----- brute force and DoS attack
global.bruteforce_windowMs= 5*60*1000; // 5 minutes
global.bruteforce_max= 100; // limit each IP to 30 requests per windowMs
global.bruteforce_delayMs= 1*1000; // slow down subsequent responses by 1 seconds per request
//delayMs= 0; // disable delaying - full speed until the max limit is reached
global.bruteforce_delayAfter= 15; // begin slowing down responses after the 10 request

global.bruteforceAll_windowMs= 5*60*1000; // 5 minutes
global.bruteforceAll_max= 100; // limit each IP to 100 requests per windowMs
global.bruteforceAll_delayMs= 1*1000; // slow down subsequent responses by 1 seconds per request
global.bruteforceAll_delayAfter= 40; // begin slowing down responses after the 50 request

global.bruteforce_message= "تعداد درخواست های دریافت شده از سمت آی پی بیش از میزان مجاز می باشد , لطفا پس از 5 دقیقه دیگر مجددا تلاش نمایید";
//----- user list
global.userStatusDisable = 0;
global.userStatusDisableDesc = "غیر فعال";
global.userStatusActive = 1;
global.userStatusActiveDesc  = "فعال";
global.userStatusLock = 2;
global.userStatusLockDesc = "قفل موقت";

global.userAdmin = 1;
global.userAdminDesc = "کاربر ادمین";
global.userCommon = 2;
global.userCommonDesc = "کاربر عادی";

global.useronline = 1;
global.useronlineDesc = "Online";
global.userOffLine = 0;
global.userOffLineDesc = "OffLine";
//----- user message
global.messageUnread = 1;
global.messageUnreadDesc = "اقدام نشده";
global.messageAnswer = 2;
global.messageAnswerDesc = "پاسخ داده شده";
global.messageClose = 3;
global.messageCloseDesc = "بسته شده";
global.messageReplay = 4;
global.messageReplayDesc = "وابسته";
global.messageSee = 5;
global.messageSeeDesc = "در دست بررسی";
//----- transaction
global.transactionTypeDebit = 0;
global.transactionTypeDebitDesc = 'برداشت';
global.transactionTypeCredit = 1;
global.transactionTypeCreditDesc = 'واریز';
//----- dashboard
global.avatarUrl = "images/faces/";
global.avatarType = "png,jpg,gif";
global.avatarSize = 300;