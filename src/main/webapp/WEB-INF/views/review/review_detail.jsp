<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>review_detail</title>
    <link href ="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>

    /*profile*/

.profile-section{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: flex-start;

    margin: 100px 100px;
}


#profile-picture{
    width: 200px;
    margin-right: 60px;
}

#info-edit{
    margin-bottom:10px;
}

#auth{
    float:right;
    margin: 0 120px 0 0;
    word-spacing: 5px;
    
}

.introduction>h1{
    margin: 0px;
    font-family: 'Montserrat', sans-serif;
    font-size: 20px;
}

.introduction>p{
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 300;
    font-size: 16px;

    margin-bottom: 40px;
}



.frame{
    margin: 30px 150px;
    display: flex;
    flex-direction: column;
}

    </style>
</head>
<body>
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
                    <h2 class="fw-normal">Cajari</h2>
            
                  <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                      <li><a href="#" class="nav-link px-2 link-dark">Home</a></li>
                      <li><a href="#" class="nav-link px-2 link-dark">Service</a></li>
                    <li><a href="#" class="nav-link px-2 link-dark">About us</a></li>
                    <li><a href="#" class="nav-link px-2 link-dark">Review</a></li>
                    <li><a href="#" class="nav-link px-2 link-dark">Q & A</a></li>
                  </ul>
            
                  <div class="col-md-3 text-end">
                        <button type="button" class="btn btn-outline-primary me-2 ">mypage</button>
                        <button type="button" class="btn btn-outline-primary me-2 ">logout</button>
                    </div>
                </header>
              </div>
        </div>
        <div class="col-lg-12">
            <div id = "auth" style="padding-left:50px">
                <span class="badge bg-primary">Premium</span>
                <h6><span class="TODO">user1</span>님 환영합니다</h6>
            </div>
        </div>
        <div class="col-lg-12">
            <div style="text-align:center">
                <h2>Cajari</h2>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="frame">
              <div class="container mt-3">
                <h2>조회 - el-제목란</h2>
                <hr>
                <div class="mb-3 mt-3 clearfix">
                    <span class="float-start me-2">id: el-제목</span>
                    <span class="float-end ms-4">작성일: el-작성일</span>
                    <span class="float-end">조회수: el-조회수</span>
                </div>
        
                <section>
                  <form name="frmDelete" action="delete" method="POST">
                    <input type="hidden" name="id" value="${dto.id }">
                  </form>
                    <div class="mb-3">
                        <label for="name">작성자:</label>
                        <span class="form-control" >el-작성자</span>
                    </div>    
                    <div class="mb-3 mt-3">
                        <label for="subject">제목:</label>
                        <span class="form-control" >el-제목</span>
                    </div>    
                    <div class="mb-3 mt-3">
                      <label for="subject">주차장:</label>
                      <span class="form-control" >el-주차장</span>
                  </div>    
                    <div class="mb-3 mt-3">
                        <label for="content">내용:</label>
                        <span class="form-control" >el-내용</span>
                    </div>    
        
                    <!-- 하단 링크 -->
                    <a class="btn btn-outline-dark" href="#">수정</a>
                    <a class="btn btn-outline-dark" href="#">목록</a>
                    <button type="button" class="btn btn-outline-dark" onclick>삭제</button>
                    <a class="btn btn-outline-dark" href="#">작성</a>
                    <!-- 하단 링크 -->        
        
                </section>
            </div>
            </div>
                </div>
            </div>
        </div>
        
        
</body>
</html>