<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Scripting Tag</title>
  </head>
  <body>
    <h2>Scripting Tag</h2>
    <%! 
    /*선언부*/
    int count = 3;
    String maketItLower(String data) {
        return data.toLowerCase();
    } %>
    <% 
    /*구현부*/
     for (int i =1;i<= count;i++) {
        out.println("Java Server Pages "+i+".<br>");
     }
    %>

    <%= /*값출력*/ 
    maketItLower("Hello World") 
    %>
  </body>
</html>
