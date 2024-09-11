class AppLink {
  static const String baseUrl = "http://10.0.2.2/ecommerce";

  static const String authroot = "http://10.0.2.2/ecommerce/auth";

  static const String forgetroot = 'http://10.0.2.2/ecommerce/forgetpassword';




  static const String test = "$baseUrl/test1.php";

  //==============================Auth========================//
  static const String signup = "$authroot/signup.php";
  static const String login = "$authroot/login.php";

  //==============================ForgetPassword========================//
  static const String chcekemail = "$forgetroot/chcekemail.php";
  static const String verifiyCodeforgetpass = "$forgetroot/verifiyCodeforgetpass.php";
  static const String resetpassword = '$forgetroot/resetpassword.php';
}
