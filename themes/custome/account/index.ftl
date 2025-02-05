<!doctype html>
<html lang="${locale}">
    <head>
        <title>Auth Account Management</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="noindex, nofollow">

        <!-- Inline CSS -->
        <style>
            /* General Styles */
            body {
                font-family: 'Arial', sans-serif;
                margin: 0;
                padding: 0;
                color: #ecf0f1;
                background-color: #1c1e26;
            }

            /* Header */
            .header {
                background-color: #2c3e50;
                padding: 1em 2em;
                display: flex;
                align-items: center;
                justify-content: space-between;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .header .header-left {
                display: flex;
                align-items: center;
            }

            .header-logo img {
                height: 40px;
                width: auto;
            }

            .header-title {
                margin-left: 10px;
                font-size: 1.5em;
                font-weight: bold;
            }

            .header .header-right {
                display: flex;
                align-items: center;
            }

            .header .role {
                margin-right: 20px;
                font-size: 1em;
                color: #bdc3c7;
            }

            .header .user-icon {
                background-color: #34495e;
                border-radius: 50%;
                height: 40px;
                width: 40px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #ecf0f1;
                font-size: 1.2em;
                font-weight: bold;
                cursor: pointer;
            }

            /* Layout */
            .layout {
                display: flex;
                height: calc(100vh - 72px); /* Adjust height for header */
            }

            /* Sidebar */
            .sidebar {
                width: 250px;
                background-color: #34495e;
                padding: 1em;
                box-shadow: 2px 0 4px rgba(0, 0, 0, 0.1);
            }

            .sidebar ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .sidebar ul li {
                margin: 1em 0;
            }

            .sidebar ul li a {
                color: #ecf0f1;
                text-decoration: none;
                padding: 0.5em 1em;
                display: block;
                border-radius: 4px;
                transition: background-color 0.3s ease;
            }

            .sidebar ul li a:hover {
                background-color: #16a085;
            }

            .sidebar ul li .dropdown {
                display: none;
                padding-left: 1em;
            }

            .sidebar ul li.active > a {
                background-color: #16a085;
                font-weight: bold;
            }

            .sidebar ul li.active .dropdown {
                display: block;
            }

            .sidebar ul li .dropdown li {
                margin: 0.5em 0;
            }

            .sidebar ul li .dropdown li a {
                font-size: 0.9em;
                padding: 0.3em 1em;
            }

            /* Main Content */
            .content {
                flex: 1;
                padding: 2em;
                background-color: #ffffff;
                color: #333;
                overflow-y: auto;
            }

            .content h2 {
                font-size: 1.5em;
                color: #2c3e50;
                margin-top: 0;
            }

            .content p {
                font-size: 1em;
                line-height: 1.5;
                color: #555;
            }

            .form-group {
                margin-bottom: 1.5em;
            }

            .form-group label {
                display: block;
                margin-bottom: 0.5em;
                font-weight: bold;
                color: #34495e;
            }

            .form-group input {
                width: 100%;
                padding: 0.8em;
                border: 1px solid #bdc3c7;
                border-radius: 4px;
                font-size: 1em;
            }

            .form-buttons {
                margin-top: 1em;
            }

            .form-buttons button {
                padding: 0.8em 1.5em;
                border: none;
                border-radius: 4px;
                background-color: #16a085;
                color: #ffffff;
                font-size: 1em;
                cursor: pointer;
                margin-right: 1em;
            }

            .form-buttons button:hover {
                background-color: #138d75;
            }
        </style>
    </head>

    <body>
        <!-- Header -->
        <header class="header">
            <div class="header-left">
                <div class="header-logo">
                    <img src="/themes/custome/account/resources/img/Auth.png" alt="Auth Logo" />
                </div>
                <h1 class="header-title">Auth Account Management</h1>
            </div>
            <div class="header-right">
                <span class="role">Role: Admin</span>
                <div class="user-icon">A</div>
            </div>
        </header>

        <!-- Layout -->
        <div class="layout">
            <!-- Sidebar -->
            <nav class="sidebar">
                <ul>
                    <li class="active">
                        <a href="#">Personal Info</a>
                    </li>
                    <li>
                        <a href="#">Account Security</a>
                        <ul class="dropdown">
                            <li><a href="#">Signing In</a></li>
                            <li><a href="#">Device Activity</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Applications</a>
                    </li>
                </ul>
            </nav>

            <!-- Content -->
            <main class="content">
                <h2>Personal Information</h2>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" value="admin" disabled />
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" value="admin@example.com" />
                </div>
                <div class="form-group">
                    <label for="first-name">First Name</label>
                    <input type="text" id="first-name" value="Admin" />
                </div>
                <div class="form-group">
                    <label for="last-name">Last Name</label>
                    <input type="text" id="last-name" value="User" />
                </div>
                <div class="form-buttons">
                    <button type="submit">Save</button>
                    <button type="button">Cancel</button>
                </div>
            </main>
        </div>
    </body>
</html>

