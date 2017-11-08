<%-- <%@ include file="/WEB-INF/views/common/header.jsp"%> --%>
<title>APPOLO</title>
<!-- 구글 로그인  -->
<head>
<meta name="google-signin-client_id" content="169403854536-0v60a987872ivtnaiisnj8dd2kbjacd7.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
</head>
<body>
<!-- 팝업 콘텐츠 -->
<div class="popup" data-popup="popup-1">
    <div class="popup-inner">
        <h2 style="color:#ffab40">Login</h2><p/>
        <h6 style="color:#ffab40">구글 아이디로 시작하기</h6><p/>
        <div id="my-signin2"></div><p/>
        <p align="center" ><a data-popup-close="popup-1" href="#" class="cbtn">Close</a></p>
        <a class="popup-close" data-popup-close="popup-1" href="#">x</a>
    </div>
</div>
</body>
<script>
// 구글 인가 보오 
function renderButton() {
   gapi.signin2.render('my-signin2', {
       'scope': 'profile email',
       'width': 234,
       'height': 39,
       'longtitle': true,
       'theme': 'dark',
       'onsuccess': onSuccess,
         'onfailure': onFailure
   });
}
function onSuccess(googleUser) {
   var profile = googleUser.getBasicProfile(); // 유저의 정보를 가진 변수를 선언
   // console.log("ID: " + profile.getId());  고유의 ID값 (21자)
   // console.log('Full Name: ' + profile.getName());  이름
   // console.log("Image URL: " + profile.getImageUrl());  프로필 사진 url
   // console.log("Email: " + profile.getEmail());  email
   var nameLength = profile.getName().length; // 닉네임(10자제한)
   var param = {};
   param["userId"] = profile.getId();
   param["userEmail"] = profile.getEmail();
   var emailPrefix = profile.getEmail().split("@"); // email검색을 위해 @를 기준으로 split
   param["emailPrefix"] = emailPrefix[0]; // @를 포함하지 않은 email정보를 대입
   if(nameLength > 10) {
      var setName = profile.getName().substr(0,10); // 글자수 10자리 제한 
      param["userName"] = setName;
      param["nickName"] = setName;
   } else {
      param["userName"] = profile.getName();
      param["nickName"] = profile.getName();
   }
   param["img"] = profile.getImageUrl(); 
   param["loginCheck"] = "1"; //로그인 여부 판단을 위해 1 전송
   movePageWithAjax(param,"user/join", joinCallback);
}
function onFailure(error) {
}
function joinCallback(result) {
   var list = result.list;
   // console.log(result.msg);
   location.href="${rootPath}"+result.url + "?userNo=" + list.userNo + "&img=" + list.img;  
}

</script>