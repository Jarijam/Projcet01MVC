<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<title>리뷰 작성하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="/pro01/common/css/bootstrap.min.css">
<link rel="stylesheet" href="/pro01/common/css/templatemo.css">
<link rel="stylesheet" href="/pro01/common/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">

<!-- Load map styles -->
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
	integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
	crossorigin="" />
<link rel="stylesheet" type="text/css" href="/pro01/common/css/map.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	        function count(message) {
	            var totalByte = 0;
	
	            for (var index=0, length=message.length; index<length; index++) {
	                var currentByte = message.charCodeAt(index);
	                (currentByte > 256) ? totalByte += 2: totalByte++;
	            }
	            return totalByte;
	        }
	
	        function checkByte(event) {
	            const totalByte = count(event.target.value);
	
	            if(totalByte <= MAX_MESSAGE_BYTE) {
	                countSpan.innerText = totalByte.toString();
	                message= event.target.value;
	            }else {
	                alert(MAX_MESSAGE_BYTE+"바이트까지 작성가능합니다.");
	                countSpan.innerText = count(message).toString();
	                event.target.value = message;
	            }
	        }
	    </script>
</head>

<body>

	<!-- Start Content Page -->
	<div class="container-fluid bg-light py-5">
		<div class="col-md-6 m-auto text-center">
			<h1 class="h1">리뷰 작성을 해보아요</h1>
			<p>1. 먼저 식당을 검색해서 선택해주시고 현재 위치를 확인해주세요.</p>
			<p>2. 위치 저장이 가능해지면 위치 저장 버튼을 활성화 시키고 위치 저장 버튼이 눌리면 타이머 on (sample
				예제 참고)</p>
			<p>3. 타이머가 끝나기 전까지 리뷰 작성 버튼 활성화</p>
			<p>4. 리뷰 작성 버튼을 누르면 선택한 식당 정보를 넘기고 리뷰 작성 페이지로 이동.</p>
		</div>
	</div>

	<!-- Start Map -->
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" placeholder="식당 검색" value="" id="keyword"
							size="15">
						<button type="submit">검색하기</button>
					</form>
				</div>
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6b777dfc5bd00124977083ca84a84785&libraries=services"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			/* if (!keyword.replace(/^\s+|\s+$/g, '')) {
			    alert('키워드를 입력해주세요!');
			    return false;
			} */

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';

			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;

			/* var juso = place.road_address_name; */
			var juso = 'teahhhhhhh';
			var result = document.getElementById('clickLatlng');

			result.innerHTML = juso;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>
	<div id="clickLatlng"></div>

	<!-- End Map -->

	<!-- Start Contact -->
	<div class="container py-5">
		<div class="row py-5">
			<form class="col-md-9 m-auto" method="post" role="form">
				<div class="mb-3">
					<label for="inputsubject">식당이름</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">식당주소</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">전화번호</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">음식 종류</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">식당 홈페이지 바로가기</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="row">
					<div class="form-group col-md-6 mb-3">
						<label for="inputname">작성자 id </label> <input type="text"
							class="form-control mt-1" id="name" name="name" placeholder="Id">
					</div>
					<div class="form-group col-md-6 mb-3">
						<label for="inputemail">작성자 Email</label> <input type="email"
							class="form-control mt-1" id="email" name="email"
							placeholder="Email">
					</div>
				</div>
				<div class="mb-3">
					<label for="inputmessage">리뷰내용</label>
					<textarea class="form-control mt-1" id="text-area" name="message"
						placeholder="Message" rows="8"></textarea>
					<div><span id="count"></span><span id="max-count"></span></div>
					 <script type="text/javascript">
	                    $(document).ready(function () {
	                        $('#test').on('keyup', function () {
	                            $('#test_cnt').html("(" + $(this).val().length + " /100)");
	
	                            if ($(this).val().length > 200) {
	                                $(this).val($(this).val().substring(0, 100));
	                                $('#test_cnt').html("(100 / 100)");
	                            }
	                        });
	                    });
	
	                    document.getElementById("text-area").addEventListener('keyup', checkByte);
	                    var countSpan = document.getElementById('count');
	                    var massage = '';
	                    var MAX_MESSAGE_BYTE = 500;
	                    var slash = '/';
	                    document.getElementById('max-count').innerHTML = slash.toString()+MAX_MESSAGE_BYTE.toString();
	                    
	                </script>
				</div>
				
				<div class="row">
					<div class="col text-end mt-2">
						<button type="submit" class="btn btn-success btn-lg px-3">리뷰
							작성</button>
					</div>
				</div>
			</div>
			
		</div>

	<!-- End Contact -->

	<!-- Start Script -->
	<script src="/pro01/common/js/jquery-1.11.0.min.js"></script>
	<script src="/pro01/common/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="/pro01/common/js/bootstrap.bundle.min.js"></script>
	<script src="/pro01/common/js/templatemo.js"></script>
	<script src="/pro01/common/js/custom.js"></script>
	<!-- End Script -->
</body>
</html>