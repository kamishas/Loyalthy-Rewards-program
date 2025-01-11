<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get the transaction reference (tref) from the request parameter
    String tref = request.getParameter("tref");

    // Database connection
    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    // Prepare SQL query to fetch transaction and product details
    String sql = "SELECT t.t_date, t.t_points, p.prod_name, p.prod_points, tp.quantity " +
                 "FROM Transactions t " +
                 "JOIN Transactions_Products tp ON t.tref = tp.tref " +
                 "JOIN Products p ON tp.prod_id = p.prod_id " +
                 "WHERE t.tref = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, tref);

    rs = stmt.executeQuery();

    boolean isDataFound = false;

    // Process the ResultSet
    while (rs.next()) {
        if (!isDataFound) {
            out.println("Success<br>");
            isDataFound = true;
        }
        out.println("Date: " + rs.getDate("t_date") +
                    ", Points: " + rs.getInt("t_points") +
                    ", Product: " + rs.getString("prod_name") +
                    ", Product Points: " + rs.getInt("prod_points") +
                    ", Quantity: " + rs.getInt("quantity") + "<br>");
    }

    if (!isDataFound) {
        out.println("No details available for the provided transaction reference.<br>");
    }
} catch (SQLException e) {
    out.println("SQL Error: " + e.getMessage() + "<br>");
} catch (Exception e) {
    out.println("An unexpected error occurred: " + e.getMessage() + "<br>");
} finally {
    // Close ResultSet
    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException ignored) {}
    }

    // Close PreparedStatement
    if (stmt != null) {
        try {
            stmt.close();
        } catch (SQLException ignored) {}
    }

    // Close Connection
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException ignored) {}
    }
}
%>
