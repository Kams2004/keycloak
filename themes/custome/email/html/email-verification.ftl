<#import "template.ftl" as layout>
<@layout.emailLayout>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .email-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
        }
        .email-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .email-header img {
            max-width: 150px;
        }
        .email-content {
            font-size: 16px;
            color: #333;
            line-height: 1.5;
        }
        .verify-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .email-footer {
            text-align: center;
            font-size: 12px;
            color: #777;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <!-- Logo Section -->
        <div class="email-header">
            <img src="${url.resourcesPath}/img/logo.png" alt="Your Company Logo" />
        </div>

        <!-- Email Content -->
        <div class="email-content">
            <p>${msg("emailVerificationBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}</p>
            <p>
                <a href="${link}" class="verify-button">Verify Email</a>
            </p>
        </div>

        <!-- Footer Section -->
        <div class="email-footer">
            <p>&copy; ${java.time.Year.now()} Your Company. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
</@layout.emailLayout>

