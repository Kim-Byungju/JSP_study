<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="javax.swing.*, java.awt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>시작버튼, 종료버튼, 바탕색 yellow, 창의크기 500, 500</h3>
	<%
		JFrame f = new JFrame();
		Container c = f.getContentPane();
		c.setLayout(new FlowLayout());
		c.setBackground(Color.yellow);
		JButton btn1 = new JButton("시작");
		JButton btn2 = new JButton("종료");
		c.add(btn1);
		c.add(btn2);
		f.setSize(500,500);
		f.setVisible(true);
	%>

</body>
</html>