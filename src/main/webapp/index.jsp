<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
</head>
<body style="font-family:Arial, sans-serif; margin:0; padding:0;">
    <jsp:include page="WEB-INF/header.jsp"/>
    
    <div style="max-width:1200px; margin:20px auto; padding:20px;">
        <%
            String fromServlet = (String) request.getAttribute("HomeServlet");
            if (fromServlet == null) {
        %>
        <div style="background-color:#f8d7da; color:#721c24; padding:15px; border-radius:5px; margin-bottom:20px;">
            Нелегальний запит в обхід сервлету
        </div>
        <%
            } else {
                // Пример массива для демонстрации
                String[] arr = {"Item 1", "Item 2", "Item 3", "Item 4", "Item 5"};
        %>
        <h2>Java EE</h2>
        <p>
            Java Enterprise Edition - java + додаткові модулі для роботи з мережею.
            Також до складу входить сервер застосунків (App Server),
            проте, може знадобитись встановити його окремо:
            <a href="https://tomcat.apache.org/">Apache Tomcat</a>,
            <a href="https://glassfish.org/">Eclipse GlassFish</a>,
            <a href="https://www.wildfly.org/">WildFly</a>
        </p>
        <h2>JSP</h2>
        <p>Java Server Pages - технології створення веб-сторінок</p>
        <h3>Вирази</h3>
        <p>
            Інструкції (дії без результату) задаються спецтегом
            <code>&lt;% String str = "Hello World!";%&gt;</code>
            <% String str = "Hello World!";%>
            <br>
            Вирази (дії з результатом, що виводиться) задаються спецтегом
            <code>&lt;%= str + "!" %&gt; → <%= str + "!" %></code>
        </p>

        <p>Вивести парні індекси курсивом, непарні - жирним (0 вважати парним):</p>
        <ul>
            <% for (int i = 0; i < arr.length; i++) { %>
                <li style="<%= (i % 2 == 0) ? "font-style:italic;" : "font-weight:bold;" %>"><%= arr[i] %></li>
            <% } %>
        </ul>

        <h3>Передача даних від серверу (контроллера)</h3>
        <div><%= fromServlet %></div>
        <% } %>
    </div>

    <jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
