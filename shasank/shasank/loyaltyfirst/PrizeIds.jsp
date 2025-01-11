<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get customer ID from the request parameter
    String cid = request.getParameter("cid");

    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    // SQL query to fetch distinct prize IDs
    String sql = "SELECT DISTINCT prize_id FROM Redemption_History WHERE cid = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, cid);

    rs = stmt.executeQuery();

    if (rs.isBeforeFirst()) { // Check if there are results
        while (rs.next()) {
            out.println("Prize ID: " + rs.getInt("prize_id"));
        }
    } else {
        out.println("No prizes found for the given customer ID.");
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
