<?php
require "include/conecta.php";

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Login | Cherry</title>
</head>
<body>
<div class="row mt-4 justify content-center">
    <div class="col-sm-10 col-md-10 col-lag-10">
        <h1 class="text-center">Login | <span class="text-danger"> Cherry Tree Soft </span></h1>
    </div>
</div>

<div class="row container justify-content-center mt-3">
    <div class="col col-sm-8 col-md-8 col-lg-10"> </div>
    <div class="input-group flex-nowrap">
        <span class="input-group-text" id="imagen">
            <svg class="bi" width="20" height="20" fill="currentColor">
                <use xlink:href="Library/ICONS/bootstrap-icons.svg#person-circle"/>
              </svg>
        </span>
        <input type="text" class="form-control" placeholder="Usuario" aria-label="Usuario" aria-describedby="addon-wrapping">
      </div>
</div>

<div class="row container justify-content-center mt-1">
    <div class="col col-sm-10 col-md-10 col-lg-10"> </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="imagen">
            <svg class="bi" width="20" height="20" fill="currentColor">
                <use xlink:href="Library/ICONS/bootstrap-icons.svg#lock-fill"/>
              </svg>
        </span>
        <input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
      </div>
</div>

<div class="row mt-1">
    <input type="submit" value=" Ingresar" class="btn btn-sm btn-success">
</div>
<script src="js/bootstrap.min.js"></script>
</body>
</html>