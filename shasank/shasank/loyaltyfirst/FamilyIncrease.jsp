<%@ page import="java.sql.*" %>
<%
Connection conn = null;
PreparedStatement stmt = null;

try {
    // Get parameters from the request
    String fid = request.getParameter("fid");
    String cid = request.getParameter("cid");
    String npoints = request.getParameter("npoints");

    conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu",
        "skamine3", "xixissak"
    );

    String sql = "UPDATE Point_Accounts SET num_of_points = num_of_points + ? " +
                 "WHERE family_id = ? AND cid != ?";
    stmt = conn.prepareStatement(sql);
    stmt.setInt(1, Integer.parseInt(npoints));
    stmt.setString(2, fid);
    stmt.setString(3, cid);

    int updatedRows = stmt.executeUpdate();

    if (updatedRows > 0) {
        out.println(updatedRows + " family members' point accounts updated successfully.");
    } else {
        out.println("No family members were updated. Please check the provided family ID and customer ID.");
    }
} 
catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
    e.printStackTrace();
} 
finally {
    try { if (stmt != null) stmt.close(); } catch (Exception ignored) {}
    try { if (conn != null) conn.close(); } catch (Exception ignored) {}
}
%>
