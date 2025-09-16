<%-- 
    Document   : header
    Created on : 16 ????. 2025??., 23:02:20
    Author     : alecs
--%>

<nav style="background-color:#343a40; padding:10px;">
    <div style="max-width:1200px; margin:0 auto; display:flex; justify-content:space-between; align-items:center;">
        <a href="<%= request.getContextPath()%>/" style="color:white; font-weight:bold; text-decoration:none;">JavaWeb222</a>
        <div>
            <a href="<%= request.getContextPath()%>/" style="color:white; margin-right:15px; text-decoration:none;">Home</a>
            <a href="<%= request.getContextPath()%>/user?name=User" style="color:white; text-decoration:none;">User</a>
        </div>
    </div>
</nav>