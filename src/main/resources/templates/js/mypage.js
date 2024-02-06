window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
        container: '#kakao-talk-channel-chat-button',
    });
};

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.channel.min.js';
    js.integrity = 'sha384-ty4605mXDCz/lA+RRt4bHCRa1c9uIaIi0JrsmmWVxaNJZzu58jMhJK8wAMqDxrYv';
    js.crossOrigin = 'anonymous';
    fjs.parentNode.insertBefore(js, fjs);
})(document, 'script', 'kakao-js-sdk');
document.addEventListener("DOMContentLoaded", function () {
    var showFormLink = document.getElementById("showFormLink");
    var myInfoForm = document.getElementById("myInfoForm");
    var editInfoForm = document.getElementById("editInfoForm");
    var bucketForm = document.getElementById("bucketForm");
    var myReviewForm = document.getElementById("myReviewForm");
    var writeReviewForm = document.getElementById("writeReviewForm");
    var supportForm = document.getElementById("supportForm");

    myInfoForm.style.display = "none";
    editInfoForm.style.display = "none";
    bucketForm.style.display = "none";
    myReviewForm.style.display = "none";
    writeReviewForm.style.display = "none";
    supportForm.style.display = "none";

    showFormLink.addEventListener("click", function () {
        myInfoForm.style.display = "block";
        editInfoForm.style.display = "none";
        bucketForm.style.display = "none";
        myReviewForm.style.display = "none";
        writeReviewForm.style.display = "none";
        supportForm.style.display = "none";
    });

    var editInfoLink = document.getElementById("editInfoLink");
    editInfoLink.addEventListener("click", function () {
        myInfoForm.style.display = "none";
        editInfoForm.style.display = "block";
        bucketForm.style.display = "none";
        myReviewForm.style.display = "none";
        writeReviewForm.style.display = "none";
        supportForm.style.display = "none";
    });

    var bucketLink = document.getElementById("bucketLink");
    bucketLink.addEventListener("click", function () {
        myInfoForm.style.display = "none";
        editInfoForm.style.display = "none";
        bucketForm.style.display = "block";
        myReviewForm.style.display = "none";
        writeReviewForm.style.display = "none";
        supportForm.style.display = "none";
    });

    var myReviewLink = document.getElementById("myReviewLink");
    myReviewLink.addEventListener("click", function () {
        myInfoForm.style.display = "none";
        editInfoForm.style.display = "none";
        bucketForm.style.display = "none";
        myReviewForm.style.display = "block";
        writeReviewForm.style.display = "none";
        supportForm.style.display = "none";
    });

    var writeReviewLink = document.getElementById("writeReviewLink");
    writeReviewLink.addEventListener("click", function () {
        myInfoForm.style.display = "none";
        editInfoForm.style.display = "none";
        bucketForm.style.display = "none";
        myReviewForm.style.display = "none";
        writeReviewForm.style.display = "block";
        supportForm.style.display = "none";
    });

    var supportLink = document.getElementById("supportLink");
    supportLink.addEventListener("click", function () {
        myInfoForm.style.display = "none";
        editInfoForm.style.display = "none";
        bucketForm.style.display = "none";
        myReviewForm.style.display = "none";
        writeReviewForm.style.display = "none";
        supportForm.style.display = "block";
    });
});
