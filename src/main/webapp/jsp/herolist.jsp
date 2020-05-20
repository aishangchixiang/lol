<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>heros</title>
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/herolist.css"/>
</head>

<body>
<a href="hero.jsp">英雄详情</a>
<a href="addhero.jsp">页面跳转</a>
<a href="updateHero.jsp">修改页面</a>
<div class="container-fluid" style="background-color: black;">
    <img src="../res/bar.png" class="img-responsive" >
</div>

<!-- 主体内容 -->

<div class="website-path" >
    <i class="icon-home"></i>
    <a href=#>英雄联盟首页</a>
    <i class="icon-arrow-2"></i>
    <a href=#>游戏资料</a>
    <i class="icon-arrow-2"></i>
    <a class="here">英雄</a>
</div>

<div class="container" style="border: 3px solid black;">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="top" >
                英雄列表
            </div>
            <div id="select_catgory">
                <form action="" method="post">
                    <input name= "catgory" type="radio" checked="checked"/>所有英雄&nbsp;
                    <input name= "catgory" type="radio" value="2" />战士&nbsp;
                    <input name= "catgory" type="radio" value="3" />法师&nbsp;
                    <input name= "catgory" type="radio" value="4" />刺客&nbsp;
                    <input name= "catgory" type="radio" value="5" />坦克
                    <input type="text" name="search" id="search" placeholder="请输入您要搜索的英雄名"/>
                </form>
            </div>
            <%
                String path=request.getContextPath();
                String basePath =request.getScheme() + "://"
                        + request.getServerName() + ":" + request.getServerPort()
                        + path + "/";
            %>
            <table align="center" bgcolor="yellow" border="1" cellpadding="0">
                <tr>
                    <th width="140">英雄id</th>
                    <th width="140">英雄名</th>
                    <th width="140">称号</th>
                    <th width="140">价格</th>
                    <th width="140">故事</th>
                    <th width="140">分类id</th>
                    <th width="140">英雄类别</th>
                </tr>

            <c:forEach items="${list}" var="hero">
                <tr>
                    <td>${hero.id}</td>
                    <td>${hero.hname}</td>
                    <td>${hero.hnick}</td>
                    <td>${hero.hprice}</td>
                    <td>${hero.hstory}</td>
                    <td>${hero.cid}  </td>
                    <td>${hero.category.cname}</td>
                    <td>
                        <a href="${path}/user/toUpdateHero?id=${hero.id}">
                            <button>编辑</button>
                        </a>
                    </td>
                    <td>
                        <a href="${path}/user/del?id=${hero.id}">
                            <button>删除</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </table>
            <br>
            <a href="${pageContext.request.contextPath }/user/toaddhero">
                <button>增加新用户</button>
            </a>
        </div>
    </div>
</div>
</body>
</html>
