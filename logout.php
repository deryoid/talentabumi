<?php

session_start();
   $_SESSION['id_user'];    
   $_SESSION['username'];  
   $_SESSION['role'];     


if ($_SESSION['role'] == "Masyarakat") {
   unset($_SESSION['id_masyarakat']);  
   unset($_SESSION["id_user"]);
   unset($_SESSION["username"]);
   unset($_SESSION["role"]);
}else{
   unset($_SESSION["id_user"]);
   unset($_SESSION["username"]);
   unset($_SESSION["role"]);
}


session_unset();
session_destroy();

echo "<meta http-equiv='refresh' content='0; url=index'>";
