<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>welcome</title>
    <script src="https://kit.fontawesome.com/fe7d9866b2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./welcome.css">
  </head>
  <body>
    <div class="root">
    <%! 
    String greeting = "Welcome to Book Shopping Mall";
    String tagline = "Welcome to Web Market!"; 
    %>
    <header>
      <div class="top-menu">
        <i class="fa-solid fa-house"></i>HOME
      </div>
      <div class="tit">
        <h1><%= greeting %></h1>
    <p>BookMarket</p>
      </div>
    </header>
    <section><h3><%= tagline %></h3></section>
    <footer>&copy;BookMarket</footer>
    </div>
</html>
