class AppLink {
  static const String baseUrl = "http://10.0.2.2/ecommerce";

  static const String authroot = "http://10.0.2.2/ecommerce/auth";

  static const String forgetroot = 'http://10.0.2.2/ecommerce/forgetpassword';

//==============================Image============================//
  static const String imageroot = 'http://10.0.2.2/ecommerce/items';

  static const String imageItems = '$imageroot/images';
  static const String ImageCategories = '';

  static const String test = "$baseUrl/test1.php";

  //==============================Auth========================//
  static const String signup = "$authroot/signup.php";
  static const String login = "$authroot/login.php";

  //==============================ForgetPassword========================//
  static const String chcekemail = "$forgetroot/chcekemail.php";
  static const String verifiyCodeforgetpass =
      "$forgetroot/verifiyCodeforgetpass.php";
  static const String resetpassword = '$forgetroot/resetpassword.php';

  //===============================Home========================//

  static const String home = '$baseUrl/home.php';

  //================= Items Ecommerce===========//

  static const String items = '$imageroot/items.php';

  // http://localhost/ecommerce/items/items.php

  //==================Favorite======================
  static const String favoriteAdd = '$baseUrl/Favorite/add.php';
  static const String favoriteRemove = '$baseUrl/Favorite/remove.php';
  static const String MyfavoriteView = '$baseUrl/Favorite/view.php';
}
