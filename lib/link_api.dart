class AppLink {
  static const String baseUrl = "http://10.0.2.2/ecommerce";

  // مسار التوثيق
  static const String authroot = "$baseUrl/auth";

  // مسار نسيان كلمة المرور
  static const String forgetroot = '$baseUrl/forgetpassword';

  static const String test = "$baseUrl/test1.php";

  //==============================Auth========================//
  static const String signup = "$authroot/signup.php";
  static const String login = "$authroot/login.php";

  //==============================ForgetPassword========================//
  static const String chcekemail = "$forgetroot/chcekemail.php";
  static const String verifiyCodeforgetpass = "$forgetroot/verifiyCodeforgetpass.php";
  static const String resetpassword = '$forgetroot/resetpassword.php';
}
