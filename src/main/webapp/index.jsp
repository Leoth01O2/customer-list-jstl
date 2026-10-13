<%@ page import="java.util.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%
    List<Map<String, String>> customers = new ArrayList<>();

    customers.add(Map.of(
            "name", "Mai Văn Hoàn",
            "birthday", "1983-08-20",
            "address", "Hà Nội",
            "image", "https://randomuser.me/api/portraits/men/32.jpg"
    ));

    customers.add(Map.of(
            "name", "Nguyễn Văn Nam",
            "birthday", "1983-08-21",
            "address", "Bắc Giang",
            "image", "https://randomuser.me/api/portraits/women/44.jpg"
    ));

    customers.add(Map.of(
            "name", "Nguyễn Thái Hòa",
            "birthday", "1983-08-22",
            "address", "Nam Định",
            "image", "https://randomuser.me/api/portraits/men/46.jpg"
    ));

    customers.add(Map.of(
            "name", "Trần Đăng Khoa",
            "birthday", "1983-08-17",
            "address", "Hà Tây",
            "image", "https://randomuser.me/api/portraits/men/52.jpg"
    ));

    customers.add(Map.of(
            "name", "Nguyễn Đình Thi",
            "birthday", "1983-08-19",
            "address", "Hà Nội",
            "image", "https://randomuser.me/api/portraits/women/65.jpg"
    ));

    request.setAttribute("customers", customers);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }

        .container {
            width: 900px;
            margin: 30px auto;
            background: white;
            box-shadow: 0 0 14px #b8d5ee;
        }

        h1 {
            text-align: center;
            padding: 20px 0 10px;
            margin: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 18px 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            font-size: 20px;
        }

        td {
            font-size: 18px;
        }

        img {
            width: 85px;
            height: 85px;
            object-fit: cover;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Danh sách khách hàng</h1>

    <table>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>

        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.birthday}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.image}" alt="${customer.name}"></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>