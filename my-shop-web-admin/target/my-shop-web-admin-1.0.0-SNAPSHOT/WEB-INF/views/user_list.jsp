<%--
  Created by IntelliJ IDEA.
  User: hp-pc
  Date: 2020/6/21
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的商城 | 用户管理</title>
    <jsp:include page="../includes/header.jsp"/>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <jsp:include page="../includes/nav.jsp"/>

    <jsp:include page="../includes/menu.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">用户管理</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">首页</a></li>
                            <li class="breadcrumb-item">用户列表</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <!-- /.row -->
            <div class="row">
                <div class="container-fluid">
                    <div class="col-12">
                        <c:if test="${baseResult != null}">
                            <div class="alert alert-${baseResult.status == 200 ? "success" : "danger"} alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <h5><i class="icon fas fa-check"></i> ${baseResult.message}</h5>
                            </div>
                        </c:if>
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">用户列表</h3>

                                <div class="card-tools">
                                    <div class="input-group input-group-sm">
                                        <input type="text" name="table_search" class="form-control float-right"
                                               placeholder="搜索">

                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i>
                                            </button>
                                        </div>
                                        &nbsp;
                                        <div>
                                            <a href="/user/form" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-plus"></i> 新增</a>
                                            <a href="#" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-trash"></i> 删除</a>
                                            <a href="#" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-upload"></i> 导入</a>
                                            <a href="#" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-download"></i> 导出</a>
                                        </div>
                                    </div>


                                </div>


                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>用户名</th>
                                        <th>手机号</th>
                                        <th>邮箱</th>
                                        <th>更新时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${tbUsers}" var="tbUser">
                                        <tr>
                                            <td>${tbUser.id}</td>
                                            <td>${tbUser.username}</td>
                                            <td>${tbUser.phone}</td>
                                            <td>${tbUser.email}</td>
                                            <td><fmt:formatDate value="${tbUser.updated}"
                                                                pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td><a href="#" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-search"></i> 查看</a>
                                                <a href="#" type="button" class="btn btn-sm btn-primary"><i
                                                        class="fa fa-edit"></i> 编辑</a>
                                                <a href="#" type="button" class="btn btn-sm btn-danger"><i
                                                        class="fa fa-trash"></i> 删除</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </section>
    </div>


    <jsp:include page="../includes/copyright.jsp"/>

</div>

<jsp:include page="../includes/footer.jsp"/>

</body>
</html>
