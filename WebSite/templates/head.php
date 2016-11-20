<!DOCTYPE html>
<html lang="en">
<head>

  <?php
    // Ensure encoding type for document is utf-8.
    header('Content-type: text/html; charset=utf-8');

    // Sets base url for all links.
    global $baseUrl;
    $baseUrl = 'http://127.0.0.1/';
  ?>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Coffee Shop</title>
  <link rel="shortcut icon" href="<?php echo $baseUrl; ?>static/images/favicon.ico">

  <link rel="stylesheet" type="text/css" href="<?php echo $baseUrl; ?>static/css/base.css">

  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>
