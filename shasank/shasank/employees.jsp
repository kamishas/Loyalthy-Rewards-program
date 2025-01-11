<%@page import="java.sql.*"%>
<%
    try {
        // Register the Oracle JDBC driver
        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
        String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
        Connection con = DriverManager.getConnection(url, "skamine3", "xixissak");

        // Get the 'sal' parameter from the request
        String salParam = request.getParameter("sal");

        // Check if 'sal' parameter is null or empty
        if (salParam == null || salParam.isEmpty()) {
            out.print("Error: Missing 'sal' parameter.");
            con.close();
            return;
        }

        // Parse 'sal' to an integer
        int sal;
        try {
            sal = Integer.parseInt(salParam);
        } catch (NumberFormatException e) {
            out.print("Error: Invalid salary input.");
            con.close();
            return;
        }

        // Create the SQL query
        String query = "SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY > " + sal;
        Statement stmt = con.createStatement();

        // Execute the query
        ResultSet rs = stmt.executeQuery(query);
        String result = "";

        // Loop through the result set
        while (rs.next()) {
            result += rs.getString("FIRST_NAME") + "," + rs.getString("LAST_NAME") + "," + rs.getInt("SALARY") + "#";
        }

        // Close resources
        rs.close();
        stmt.close();
        con.close();

        // Check if the result is empty
        if (result.isEmpty()) {
            out.print("No results found.");
        } else {
            out.print(result);
        }
    } catch (Exception e) {
        // Print any exceptions for debugging
        out.print("Error: " + e.getMessage());
    }
%>
