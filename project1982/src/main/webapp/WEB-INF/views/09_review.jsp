<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome@5.14.0/css/all.min.css">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='9_review.css'/>" >
</head>
<body>
    <div class="wrap">
        <main>
           <p class="review_title">리뷰 작성 페이지</p>
           <img src="./1.png" alt="" />
           <div class="star">
               <i class="far fa-star"></i>
               <i class="far fa-star"></i>
               <i class="far fa-star"></i>
               <i class="far fa-star"></i>
               <i class="far fa-star"></i>
           </div>
        </main>
        <article class="article">
            <input type="text" class="input_text">
            <input type="text" class="input_text">
            <input type="text" class="input_text">
            <input type="text" class="input_text">
            <input type="text" class="input_text">
            <input type="text" class="input_box">
            <button>작성 완료</button>
        </article>
    </div>
    <script src="./snow.js"></script>
</body>
</html>