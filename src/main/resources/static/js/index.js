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

$(document).ready(function() {
    // 검색창 숨기기
    $("#searchInput").hide();

    // 검색 버튼 클릭시 검색창의 가시성 전환
    $("#searchButton").click(function() {
        $("#searchInput").toggle();
        $("#recommendationList").hide(); // 검색창 표시시 추천 목록 숨김
    });

    // 추천 버튼 클릭시 추천 목록의 가시성 전환
    $("#recommendButton").click(function() {
        $("#recommendationList").toggle();
        $("#searchInput").hide(); // 추천 목록 표시시 검색창 숨김
    });
});