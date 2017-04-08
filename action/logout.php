<?php
session_start();

//注销登录
unset($_SESSION['userid']);
unset($_SESSION['username']);
// 修改location
header("Location:../");
