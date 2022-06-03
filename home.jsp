<%@ page language="java"%>
<html>
    <head>
        <title>Calculator</title>
    </head>
    <body><style>h1{
            color:red;
            font-size:25px;
    }
        </style>
    </head>
    <body><h1>Calculator</h1>
        <%
            if(request.getParameter("button") != null) {
        %>
        <% String s = request.getParameter("button");
           int no1,no2;
           if(request.getParameter("no1").equals("")) { no1 = 0; } else no1 = Integer.valueOf(request.getParameter("no1"));
           if(request.getParameter("no2").equals("")) { no2 = 0; } else no2 = Integer.valueOf(request.getParameter("no2"));
           if (s.equals("ADD")) {
               out.println("Result: " + (no1 + no2));
           }
           else if (s.equals("SUB")) {
               out.println("Result: " + (no1-no2));
           }
           else if(s.equals("MUL")) {
               out.println("Result: " + (no1*no2));
           }
           else if(s.equals("DIV")) {
               out.println("Result: " + (no1/no2));
           }
       
        %>
        <%
            }
        %>
       
       
        <form name="form1" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="ADD">
            <input type="submit" value="ADD">
        </form>
        <form name="form2" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="SUB">
            <input type="submit" value="SUB">
        </form>
        <form name="form3" method="get">
                    <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="MUL">
            <input type="submit" value="MUL">
        </form>
        <form name="form4" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="DIV">
            <input type="submit" value="DIV">
        </form>
    </body>
</html>
