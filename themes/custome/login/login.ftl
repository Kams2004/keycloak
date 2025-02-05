<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=messagesPerField?exists displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section == "form">
        <!-- Logo Section -->
        <div id="kc-logo">
            <img src="${url.resourcesPath}/img/Auth.png" alt="My Logo" />
        </div>

        <div class="container" id="container">
            <!-- Sign Up Form -->
            <div class="form-container sign-up-container">
                <form action="${url.registrationAction}" method="post">
                    <h1>Create Account</h1>
                    <div class="social-container">
                        <#if identityProviders?? && identityProviders?size > 0>
                            <#list identityProviders as idp>
                                <a href="${idp.loginUrl}" class="social" title="${idp.displayName}">
                                    <img src="${idp.iconUrl}" alt="${idp.displayName}" />
                                    ${idp.displayName}
                                </a>
                            </#list>
                            <span>or use your email for registration</span>
                        </#if>
                    </div>
                    <input id="signup-username" type="text" name="username" placeholder="Username" required />
                    <input id="signup-email" type="email" name="email" placeholder="Email" required />
                    <input id="signup-password" type="password" name="password" placeholder="Password" required />
                    <button type="submit">Sign Up</button>
                </form>
            </div>

            <!-- Sign In Form -->
            <div class="form-container sign-in-container">
                <form id="kc-form-login" action="${url.loginAction}" method="post">
                    <h1>Sign in</h1>
                    <#if messagesPerField?exists>
                        <div class="error-message">
                            ${messagesPerField.getFirstError('username', 'password')}
                        </div>
                    </#if>
                    <input id="login-username" type="text" name="username" placeholder="Username" value="${login.username!' '}" required />
                    <input id="login-password" type="password" name="password" placeholder="Password" required />
                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}">Forgot your password?</a>
                    </#if>
                    <button type="submit">Sign In</button>
                    <div class="social-container">
                        <#if realm.password && social?? && social.providers?has_content>
                            <div class="divider-container">
                                <hr class="divider" />
                                <span class="divider-text">${msg("identity-provider-login-label")}</span>
                                <hr class="divider" />
                            </div>
                            <ul class="social-providers-list">
                                <#list social.providers as p>
                                    <li>
                                        <a id="social-${p.alias}" class="social-provider-button" href="${p.loginUrl}">
                                            <#if p.iconClasses?has_content>
                                                <img src="${p.iconUrl}" alt="${p.displayName}" class="social-provider-logo" />
                                            <#else>
                                                <span class="social-provider-name">${p.displayName!}</span>
                                            </#if>
                                        </a>
                                    </li>
                                </#list>
                            </ul>
                        </#if>
                    </div>
                </form>
            </div>

            <!-- Overlay -->
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start your journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>

<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
</script>
<style>
  .social-container a {
    border: 1px solid #DDDDDD;
    border-radius: 50%;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    margin: 0 5px;
    height: 50px; /* Adjust icon size */
    width: 50px;
    background-color: #FFFFFF;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
    text-decoration: none;
}

.social-container a img {
    height: 20px; /* Icon size */
    width: 20px;
    margin: 0 auto;
}

.social-container a:hover {
    background-color: #f1f1f1;
    transform: scale(1.05);
}

.divider-container {
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 20px 0;
}

.divider {
    flex: 1;
    height: 1px;
    background-color: #ddd;
    border: none;
    margin: 0 10px;
}

.divider-text {
    font-size: 14px;
    color: #666;
    white-space: nowrap;
}

.social-container h2 {
    margin-bottom: 10px;
    font-size: 16px;
    text-align: center;
}

.social-providers-list {
    display: flex;
    justify-content: center;
    gap: 10px;
    flex-wrap: wrap;
}

</style>

