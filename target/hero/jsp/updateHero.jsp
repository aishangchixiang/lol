<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/add.css"/>
</head>
<body>
<div class="container" >
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div id="addtext">英&nbsp;&nbsp;&nbsp;&nbsp;雄&nbsp;&nbsp;&nbsp;&nbsp;信&nbsp;&nbsp;&nbsp;&nbsp;息&nbsp;&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;&nbsp;&nbsp;改 </div>
            <div id="formbox">
                <form action="${pageContext.request.contextPath}/user/updateHero" method="post" >
                    <span>英雄id:</span> <input type="hidden" name="id" value="${hero.id}" /><br>
                    <span>英雄名称:</span> <input type="text" name="hname" value="${hero.hname}" /><br>
                    <span>英雄称号:</span> <input type="text" name="hnick" value="${hero.hnick}" ><br>
                    <span>英雄价格:</span> <input type="text" name="hprice" value="${hero.hprice}" /><br>
                    <span>背景故事:</span> <input type="text" name="hstory" value="${hero.hstory}" /><br>
                    <span>分类:</span>
                    <select name="cid" value="${hero.cid}">
                        <option value="1">战士</option>
                        <option value="2">法师</option>
                        <option value="3">射手</option>
                        <option value="4">刺客</option>
                    </select><br>
                    <input type="submit" value="提交">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
