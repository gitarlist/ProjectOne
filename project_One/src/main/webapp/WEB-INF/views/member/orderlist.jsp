<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- HEAD(link파일들 모음) -->
<%-- include 경로를 불러온 jsp 페이지의 상대경로에 따라 
../를 추가해주어야 한다(절대경로로 할 방법이 없음) --%>
<%@ include file="../include/head.jsp"%>

<body class="layout-boxed skin-blue sidebar-mini">
  <div class="wrapper">
    <!-- Main Header(네비게이션 바) -->
    <%@ include file="../include/main_header.jsp"%>

    <!-- Left Column(사이드바) -->
    <%@ include file="../include/left_column.jsp"%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          주문내역 <small></small>
        </h1>
      </section>

      <!-- Main content -->
      <section class="content container-fluid">
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <h3 class="box-title"></h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <th width="10%">주문번호</th>
                      <th>상품명</th>
                      <th>주문가격</th>
                      <th width="15%">주문일자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="orderlist" items="${orderList}">
                      <tr>
                        <td>${orderlist.ord_bill}</td>
                        <c:choose>
                          <c:when test="${orderlist.ord_pronum == 1}">
                            <td>아메리카노</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 2}">
                            <td>카페라떼</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 3}">
                            <td>카페모카</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 4}">
                            <td>흑당커피</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 5}">
                            <td>콜드브루</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 6}">
                            <td>바닐라라떼</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 7}">
                            <td>벌꿀커피</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 8}">
                            <td>카라멜 마키아또</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 35}">
                            <td>녹차라떼</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 19}">
                            <td>초코 아이스크림</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 36}">
                            <td>밀크티</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 40}">
                            <td>초코 아이스크림</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 39}">
                            <td>마카롱</td>
                          </c:when>
                          <c:when test="${orderlist.ord_pronum == 41}">
                            <td>흑당 아이스크림</td>
                          </c:when>
                          <c:otherwise>
                            <td>삭제상품</td>
                          </c:otherwise>
                        </c:choose>
                        <td>${orderlist.ord_proprice}</td>
                        <td>
                          <fmt:formatDate value="${orderlist.ord_date}" pattern="yyyy-MM-dd HH:mm:ss" />
                        </td>
                      </tr>
                    </c:forEach>
                </table>
              </div>
              <!-- /.box-body -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <%@ include file="../include/main_footer.jsp"%>

  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED JS SCRIPTS -->

  <!-- JS 스크립트모음 -->
  <%@ include file="../include/plugin_js.jsp"%>

  <!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>

</html>