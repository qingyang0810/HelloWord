<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%--<%@ page import="com.oraps.servlet.OperationHelpers" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="/scripts/OAS_Web_Control_Strs_CN.js"></script>
    <%--    <link rel="stylesheet" href="/basicScripts/orui_style/orui_section.css">--%>

    <link rel="stylesheet" href="/basicScripts/orui_style/orui_section_canvas.css">
    <link rel="stylesheet" href="/basicScripts/orui_style/orui_transfer.css">
    <script type="text/javascript" src="/basicScripts/konva.js"></script>
    <script type="text/javascript" src="/basicScripts/orui_section_canvas.js"></script>
    <script id="scriptNode" type="text/javascript" src="/basicScripts/orui_init_javascript.js"></script>
    <script type="text/javascript" src="/basicScripts/orui_magnet.js"></script>
    <script type="text/javascript" src="/basicScripts/orui_transfer.js"></script>
    <%--<script type="text/javascript" src="/basicJspJS/index.js"></script>--%>
    <script type="text/javascript" src="/scripts/bom/bom.js"></script>
    <script type="text/javascript" src="/scripts/bom/bom_params.js"></script>
    <script type="text/javascript" src="/scripts/bom/bom_confirm_cancel.js"></script>
    <script type="text/javascript" src="/scripts/setTreeHelper.js"></script>


    <%
        String name = request.getParameter("name");
        String token = request.getParameter("token");
        String siteName = request.getParameter("siteName");
    %>
</head>
<body>
<script type="text/javascript">
    var ORAPS;
    window.onload = function (ev) {
        try {
            if (ORAPS == undefined) {
                ORAPS = new OrapsInit("bom");
                ORAPS.init({
                    "url": "/basicJsp/index.jsp",
                    "params": index_bom,
                    "func_name": ["index_init_bom"],
                    "title":OAS_Web_Bom_Title
                })
            }
        } catch (e) {
            ORAPS = new OrapsInit("bom");
        }

    }
</script>
<div class="orui_frame" name="<%=name%>" siteName="<%=siteName%>" token="<%=token%>" _url="/controller">

</div>
</body>
</html>
