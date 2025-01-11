<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get parameters from the request
    String cid = request.getParameter("cid");
    String tref = request.getParameter("tref");

    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    String sql = "SELECT c.family_id, pa.percent_added, t.t_points " +
                 "FROM Customers c " +
                 "JOIN Point_Accounts pa ON c.family_id = pa.family_id " +
                 "JOIN Transactions t ON t.tref = ? " +
                 "WHERE c.cid = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, tref);
    stmt.setString(2, cid);

    // Execute query
    rs = stmt.executeQuery();

    // Process the result
    if (rs.next()) {
        out.println("Family ID: " + rs.getInt("family_id") +
                    ", Percent Added: " + rs.getInt("percent_added") +
                    ", Transaction Points: " + rs.getInt("t_points"));
    } else {
        out.println("No data found for the given cid and tref.");
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
