<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Lấy thông tin từ form
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    // Kiểm tra đăng nhập
    if (username != null && password != null) {
        // Kiểm tra nếu tên đăng nhập = ABC và mật khẩu bằng MNK
        if (username.equals("ABC") && password.equals("MNK")) {
            // Đăng nhập thành công - chuyển đến trang UserProfile
            session.setAttribute("username", username);
            response.sendRedirect("UserProfile.html");
        } else {
            // Đăng nhập thất bại - quay lại trang Login
            response.sendRedirect("Login.html");
        }
    } else {
        // Nếu không có dữ liệu, quay lại trang Login
        response.sendRedirect("Login.html");
    }
%>
