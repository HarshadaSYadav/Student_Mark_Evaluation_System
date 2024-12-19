
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission and Display</title>
    <style type="text/css">
    <%@ include file="css/style.css" %>
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <form action="submit" method="post">
                <h2>User Information</h2>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
                <label for="rollNo">Roll No:</label>
                <input type="text" id="rollNo" name="rollNo" required>
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
                <button type="submit">Submit</button>
            </form>
        </div>
        <div class="table-container">
            <h2>Submitted Entries</h2>
            <table id="entriesTable">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Roll No</th>
                        <th>Gender</th>
                        <th>Actions</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</body>
</html>
