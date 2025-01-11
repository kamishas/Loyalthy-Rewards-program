<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    // Get parameters from the request
    String prizeid = request.getParameter("prizeid");
    String cid = request.getParameter("cid");

    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    String sql = "SELECT p.p_description, p.points_needed, r.r_date, e.center_name " +
                 "FROM Redemption_History r " +
                 "JOIN Prizes p ON r.prize_id = p.prize_id " +
                 "JOIN ExchgCenters e ON r.center_id = e.center_id " +
                 "WHERE r.prize_id = ? AND r.cid = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, prizeid);
    stmt.setString(2, cid);

    rs = stmt.executeQuery();

    // Process the result
    if (rs.isBeforeFirst()) { // Check if there are results
        while (rs.next()) {
            out.println("Prize Description: " + rs.getString("p_description") +
                        ", Points Needed: " + rs.getInt("points_needed") +
                        ", Redemption Date: " + rs.getDate("r_date") +
                        ", Exchange Center: " + rs.getString("center_name"));
        }
    } else {
        out.println("No redemption history found for the given prize ID and customer ID.");
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
