var xhr = new XMLHttpRequest();
xhr.open('GET', '../detail/popup.html', true);
xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
        // 가져온 HTML을 삽입할 요소를 찾아서 삽입
        document.getElementById('popupImport').innerHTML = xhr.responseText;
    }
};
xhr.send();