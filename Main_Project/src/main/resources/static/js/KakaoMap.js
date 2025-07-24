function loadMap() {
    const container = document.getElementById('map');
    if (!container) {
        console.error("map div를 찾을 수 없습니다.");
        return;
    }

    const options = {
        center: new kakao.maps.LatLng(34.932650, 127.493047),
        level: 4 
    };

    const map = new kakao.maps.Map(container, options);
}
