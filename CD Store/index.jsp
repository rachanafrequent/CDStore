<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@ page import="java.util.*"%>
<%

String connectionURL = "jdbc:mysql://localhost:3306/cdstore";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

%>

<html>
  <!--head>
    <title>CSI5380 Project: The CD Store</title>
  </head>  

  <body bgcolor=AliceBlue>
    <h1><center>The CD_Store</center></h1>
    <h2><bold><italics>1) Team & Setup Environment Details</bold></italics></h2>
    <table border="1">
        <tr>
            <td colspan=3> <h3> Student Details <h3> </td>
        </tr>
        <tr>
            <th> Student_Name </th>
            <th> Student_Id </th>
            <th> Email_Id </th>
        </tr>
        <tr>
            <td>Rachana Chandrashekar</td>
            <td>7487187</td>
            <td>rachanafrequent@gmail.com<br>rchan092@uottawa.ca</td>
    </table>
<br>

    <table border="1">
        <tr>
            <td colspan=3> <h3> Team Details <h3> </td>
        </tr>
        <tr>
            <th> Team_Name </th>
            <th> Team Members </th>
            <th> Team_Leader </th>
        </tr>
        <tr>
            <td>Team Name</td>
            <td>Rachana Chandrashekar<br>
                Priyanka Patel<br>
                Priya<br>
                Aishwarya<br>
            </td>
            <td>Team Leader<br></td>
</table>
<br>

    <table border="1">
        <tr>
            <td colspan=4> <h3> SetUp Environment Details <h3> </td>
        </tr>
        <tr>
            <th> Development M/C </th>
            <th colspan=3> Environment/IDE </th>
        </tr>
        <tr>
            <td rowspan=5>Windows8, Laptop <br>
                          8GB RAM <br>
            </td>
            <th>Software</th>
            <th>Version being used </th>
            <th>Used for</th>
        </tr>

        <tr>
            <td> Apache Tomcat </td>
            <td> 7.0.55 </td>
            <td> Server </td>
        </tr>

        <tr>
            <td>Eclipse(IDE) </td>
            <td> NA </td>
            <td> Development Java Code </td>
        </tr>

        <tr>
            <td> MySql </td>
            <td> 5.6.20 </td>
            <td> DBMS </td>
        </tr>

        <tr>
            <td> Notepad ++ </td>
            <td> 6.4.5 </td>
            <td> Editing files </td>
        </tr>

</table>-->



<%

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, 
"root", 
"root");

statement = connection.createStatement();
/*
//To Display the contents of Address table
rs = statement.executeQuery("SELECT * FROM address");

out.print("<br><h2>2) Displaying the DB table contents:</h2>"
        +"<table border=1>"
        + "<tr><td colspan=6><h3>address</h1></td></tr>"
        + "<tr><th><u>id</u></th>"
        + "<th>street</th>"
        + "<th>province</th>"
        + "<th>country</th>"
        + "<th>zip</th>"
        + "<th>phone</th>"
        );

while (rs.next()) {
out.print("<tr><td>"+ rs.getString("id") + "</td><td>"
        + rs.getString("street") + "</td><td>"
        + rs.getString("province") + "</td><td>"
        + rs.getString("country") + "</td><td>"
        + rs.getString("zip") + "</td><td>"
        + rs.getString("phone")+"</td></tr>");

}

out.print("</table>");

//To display the contents of cd table
rs = statement.executeQuery("SELECT * FROM cd");
out.print("<br><table border=1>"
        + "<tr><td colspan=6><h3>cd</h3></td></tr>"
        + "<tr><th><u>cdid</u></th>"
        + "<th>title</th>"
        + "<th>price</th>"
        + "<th>category</th>"
        );

while (rs.next()) {
out.print("<tr><td>"+ rs.getString("cdid") + "</td><td>"
        + rs.getString("title")+"</td><td>"
        + rs.getString("price")+"</td><td>"
        + rs.getString("category")+"</td></tr>");
    
}

out.print("</table>");

//To display the contents of po table
rs = statement.executeQuery("SELECT * FROM po");
out.print("<br><table border=1>"
        + "<tr><td colspan=6><h3>po</h3></td></tr>"
        + "<tr><th><u>id</u></th>"
        + "<th>lname</th>"
        + "<th>fname</th>"
        + "<th>status</th>"
        + "<th>address</th>"
        );

while (rs.next()) {
out.print("<tr><td>"+ rs.getString("id") + "</td><td>"
        + rs.getString("lname")+"</td><td>"
        + rs.getString("fname")+"</td><td>"
        + rs.getString("status")+"</td><td>"
        + rs.getString("address")+"</td></tr>");
                  }
out.print("</table>");


//To display the contents of poitem table
rs = statement.executeQuery("SELECT * FROM poitem");
out.print("<br><table border=1>"
        + "<tr><td colspan=6><h3>poitem</h3></td></tr>"
        + "<tr><th><u>id</u></th>"
        + "<th><u>cdid</u></th>"
        + "<th>price</th>"
        );

while (rs.next()) {
    
out.print("<tr><td>"+ rs.getString("id") + "</td><td>"
        + rs.getString("cdid")+"</td><td>"
        + rs.getString("price")+"</td></tr>");
                  }
out.print("</table><br>");

//To display the contents of visitevent table
rs = statement.executeQuery("SELECT * FROM visitevent");
out.print("<table border=1>"
        + "<tr><td colspan=6><h3>visitevent</h3></td></tr>"
        + "<tr><th>day</th>"
        + "<th>cdid</th>"
        + "<th>eventtype</th>"
        );

while (rs.next()) {
out.print("<tr><td>"+ rs.getString("day") + "</td><td>"
        + rs.getString("cdid")+"</td><td>"
        + rs.getString("eventtype")+"</td></tr>");
                  }
out.print("</table><br>"); */

//To display the contents of category column items from cd table
rs = statement.executeQuery("SELECT DISTINCT(category) FROM cd");
out.print("<br><table border=1>"
        + "<tr><th><h3>Category</h3></th></tr>"
         );

while (rs.next()) {
out.print("<tr><td>"+ rs.getString("category") + "</td><tr>");
                  }
out.print("</table>");

rs.close();

%>

</body></html>