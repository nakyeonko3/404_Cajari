<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
   rel="stylesheet" />
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,400;0,500;0,600;0,800;0,900;1,200;1,400;1,500;1,600;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

/*profile*/
.profile-section {
   display: flex;
   flex-direction: row;
   justify-content: center;
   align-items: flex-start;
   margin: 100px 100px;
}

#profile-picture {
   width: 350px;
   margin-right: 60px;
}

#info-edit {
   margin-bottom: 10px;
}

#auth {
   float: right;
   margin: 0 120px 0 0;
   word-spacing: 5px;
}

.introduction>h1 {
   margin: 0px;
   font-family: 'Montserrat', sans-serif;
   font-size: 20px;
}

.introduction>p {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 300;
   font-size: 16px;
   margin-bottom: 40px;
}

.frame{
    margin: 0px 150px;
    display: flex;
    flex-direction: column;
}

/*logo*/

.logo{
    font-family: 'Montserrat', sans-serif;
    font-size: 15px;
    font-weight: 700;
    color: #C2B4AB;
    
    text-align: right;
    margin-top: 100px;
}



/* content */

.content{
    display: flex;
    flex-direction: column;
}

.article{
    display: flex;
    flex-direction: row;
    margin-bottom: 120px;
    align-items: center;
}

.thumbnail{
    width: 1400px;
}

.article-info{
    margin: 0px 20px;
}

.article-comment{
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    font-weight: 100;
}

#name{
    text-align: right;
    position: relative;
    left: 50px;
}

#name:hover{
    color: orange;
}
</style>
</head>
<body>
   <header class="py-3 mb-4 border-bottom">
      <div class="row">
         <div class="col-lg-12">
            <div class="container">
               <div class="row">
                  <div class="col-lg-1">
                     <h1 class="fw-normal">Cajari</h1>
                  </div>

                  <div class="col-lg-8">
                     <ul class="nav nav-tabs align-itmes-center">
                        <li class="nav-item"><a class="nav-link"
                            href="/404_Cajari/home">Home</a></li>
                        <li class="nav-item dropdown"><a
                           class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                           href="/404_Cajari/search/search_main" role="button"
                           aria-expanded="false">Search</a>
                           <ul class="dropdown-menu">
                              <li><a class="dropdown-item"
                                 href="/404_Cajari/search/search_basic">Basic Search</a></li>
                              <li><a class="dropdown-item"
                                 href="/404_Cajari/search/search_map">Map Search</a></li>
                           </ul></li>
                        <li class="nav-item"><a class="nav-link"
                           href="/404_Cajari/review/review_list">Review</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="/404_Cajari/qna/qna_list">Q & A</a></li>
                        <li class="nav-item"><a class="nav-link active"
                           aria-current="page"
                           href="/404_Cajari/aboutus">About us</a></li>
                     </ul>
                  </div>

                  <div class="col-lg-3">
                     <div>
                        <span class="align-items-center badge bg-light"><p
                              class="text-dark">${sessionScope.PRINCIPAL.authorities }</p>
                           <h6 class="text-dark">
                              <span class="text-dark">${sessionScope.PRINCIPAL.username }(${sessionScope.PRINCIPAL.name })</span>님
                              환영합니다
                           </h6>
                           <div class="text-center">
                              <form action="${pageContext.request.contextPath }/mypage"
                                 method="GET">
                                 <button type="submit" class="btn btn-outline-dark"
                                    style="float: right;">mypage</button>
                              </form>
                              <form action="${pageContext.request.contextPath }/cover"
                                 method="POST">
                                 <button type="submit" class="btn btn-outline-dark"
                                    style="float: right;">logout</button>
                              </form>
                           </div> </span>
                     </div>
                  </div>

               </div>
            </div>
         </div>
      </div>
   </header>

   <div class="frame">

        <h5 class="logo">Cajari Company</h5>

        <div class="content">
            <div class="article" id="arti1">
                <img class="thumbnail img-fluid rounded-circle" src="./Image/gv70.png">
                <div class="article-info">
                    <p class="article-comment">
                        Cajari Company는 글로벌 기업으로서 지자체와 협력하여 서비스하고 있고, 그 협력업체에서 모바일 위치 찾기, 지도로 찾기, 주차 정보 공유, 주차 커뮤니티 등을 서비스하고 있습니다. 또한, Cajari Company는 인공지능, 모빌리티 등 미래 기술에 대한 지속적인 연구개발을 통해 기술 플랫폼의 변화와 혁신을 추구하며 세계 각국의 수많은 이용자와 다양한 파트너들이 함께 성장할 수 있도록 노력하고 있습니다.
                    </p>
                </div>
            </div>

            <div class="article" id="arti2">
                <div class="article-info">
                    <h3 class="article-name" id="name">contact us</h3>
                    <p class="article-comment" id="comment2">
                        대표 : 안일찬 주소 : 서울특별시 강남구 테헤란로 146 현익빌딩 3,4층 | 전화 : 02-538-0021 E-mail : koreais@koreaedugroup.com 대표 문의 : 1588-5890 
                    </p>
                </div>
            </div>


        </div>


    </div>
   
</body>
</html>