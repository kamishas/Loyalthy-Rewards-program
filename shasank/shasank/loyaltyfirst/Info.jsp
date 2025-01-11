<%@ page import="java.sql.*" %>
<%
String result = "";
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get the customer ID from the request parameter
    String cid = request.getParameter("cid");

    // Check if cid is numeric
    if (cid == null || !cid.matches("\\d+")) {
        result = "Invalid customer ID. It must be numeric.";
        out.print(result);
        return;
    }

    // Load Oracle JDBC driver and establish connection
    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3",
        "xixissak"
    );

    // Prepare and execute SQL query to calculate total points dynamically
    String sql = "SELECT c.cname, COALESCE(SUM(t.t_points), 0) AS total_points " +
                 "FROM Customers c " +
                 "LEFT JOIN Transactions t ON c.cid = t.cid " +
                 "WHERE c.cid = ? " +
                 "GROUP BY c.cname";
    stmt = conn.prepareStatement(sql);
    stmt.setInt(1, Integer.parseInt(cid)); // Convert cid to integer
    rs = stmt.executeQuery();

    // Process the result
    if (rs.next()) {
        String customerName = rs.getString("cname");
        int totalPoints = rs.getInt("total_points");
        result = "Name: " + customerName + ", Points: " + totalPoints;
    } else {
        result = "Customer not found";
    }
    out.print(result);

} catch (SQLException sqlEx) {
    result = "Database error: " + sqlEx.getMessage();
    out.print(result);
    sqlEx.printStackTrace(new java.io.PrintWriter(out));
} catch (Exception e) {
    result = "An error occurred: " + e.getMessage();
    out.print(result);
    e.printStackTrace(new java.io.PrintWriter(out));
} finally {
    // Close all resources
    try { if (rs != null) rs.close(); } catch (Exception ignored) {}
    try { if (stmt != null) stmt.close(); } catch (Exception ignored) {}
    try { if (conn != null) conn.close(); } catch (Exception ignored) {}
}
%>
