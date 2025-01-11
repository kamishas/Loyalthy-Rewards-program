<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get the customer ID from the request parameter
    String cid = request.getParameter("cid");

    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    String sql = "SELECT tref, t_date, t_points, amount FROM Transactions WHERE cid = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, cid);

    rs = stmt.executeQuery();

    while (rs.next()) {
        out.println("Reference: " + rs.getString("tref") +
                    ", Date: " + rs.getDate("t_date") +
                    ", Points: " + rs.getInt("t_points") +
                    ", Amount: " + rs.getDouble("amount"));
    }
} catch (Exception e) {
    
    out.println("An error occurred: " + e.getMessage());
    e.printStackTrace();
} finally {
   
    try { if (rs != null) rs.close(); } catch (Exception ignored) {}
    try { if (stmt != null) stmt.close(); } catch (Exception ignored) {}
    try { if (conn != null) conn.close(); } catch (Exception ignored) {}
}
%>
