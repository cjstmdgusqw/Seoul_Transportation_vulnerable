var num =1;
  var q = {
    1: {"qnum": "Q1.", "title": "관광지를 갈 때 선호하는 것은?", "type": "EI", "A": "혼자 가는 관광지는 외로워! 가족이나 친구들과 함께 가야지", "B": "난 혼자 가는 관광지도 나름 재밌어!"},
    2: {"qnum": "Q2.", "title": "관광지 코스를 정할때 나는?", "type": "JP", "A": "미리 계획한다!", "B": "즉흥적으로 정한다!"},
    3: {"qnum": "Q3.", "title": "관광지를 정할 때 나는", "type": "TF", "A": "도전적이고 활동적인 경험을 할 수 있는 곳을 알아본다.", "B": "조용하고 평화로운 분위기에서 휴식을 즐길 수 있는 곳을 알아본다."},
    4: {"qnum": "Q4.", "title": "친구와 관광지를 돌아다니던 중<br>'근처에 내 친구 있다는데 잠깐 볼래?'<br>이럴 때 나의 기분은?", "type": "EI", "A": "그래그래! (새로운 친구도 금방 친해질 수 있다.)", "B": "불편할 거 같은데..(아무리 친구의 친구라도 불편하다)"},
    5: {"qnum": "Q5.", "title": "관광지에서 갑자기 화장실이 급한 나!<br>아무리 둘러봐도 안내원이 없을 때 당신의 행동은?", "type": "EI", "A": "지나가는 사람에게 물어본다.", "B": "물어보지 않고 어떻게 해서든 내가 찾아낸다."},
    6: {"qnum": "Q6.", "title": "관광지에서 울창한 숲을 발견한 당신", "type": "SN", "A": "와 여기 나무 진짜 많다", "B": "나무를 보면서 상상에 빠진다"},
    7: {"qnum": "Q7.", "title": "둘 중 더 서운한 것은?", "type": "TF", "A": "내가 고른 관광지를 만족해하지 않는 것 같을 때", "B": "기분이 좋아서 같이 간 친구에게 리액션을 했는데 시큰둥할 때"},
    8: {"qnum": "Q8.", "title": "관광지를 돌아다니던 중 맛있어 보이는<br> 밥집을 발견한 나는", "type": "JP", "A": "네이버 블로그에 리뷰도 많고 평점도 괜찮으니 맛있겠군", "B": "간판에서 맛집의 기운이 느껴진다 가보자고~"},
    9: {"qnum": "Q9.", "title": "관광지에서 안내책자를 받은 나는", "type": "JP", "A": "안내책자 속 쓰여져 있는 행사나 맛집을 보고 계획적으로 관광지를 탐험한다.", "B": "즉흥적으로 행동하며 자유롭게 즐긴다."},
    10: {"qnum": "Q10.", "title": "관광을 하는 도중 새로운 관광지를<br> 발견했을 때 나는", "type": "SN", "A": "이미 계획한 일정대로 가기로 한다.", "B": "호기심을 갖고 가보고 싶다."},
    11: {"qnum": "Q11.", "title": "관광지에서 다른 사람들과<br> 의견 충돌이 생겼을 때 나는", "type": "TF", "A": "논리적인 접근으로 문제를 해결하려고 노력한다.<br>(100분 토론 시작)", "B": "타협점을 찾으며 갈등을 피한다.<br>(갈등회피)"},
    12: {"qnum": "Q12.", "title": "관광을 할 때 나는", "type": "SN", "A": "편안하고 익숙한 경험을 선호한다.", "B": "새로운 경험과 문화적인 측면에 주목한다."}
  };


  var result = {
    "ISTJ": {"mbtiResult" : "창덕궁과 후원", "subTitle" : "유네스코 세계문화유산에 등록 되어있는<br>우리나라의 으뜸가는 정원", "explain": "당신은 체계적이고 조직적인 일정과 목표를 가지며 관광지에 대해서도 공부해가는 타입입니다.<br>유네스코 세계문화유산에 등재되어 있는<br>창덕궁과 후원 을 추천합니다.", "img": "창덕궁.jpg"},
    "ISTP": {"mbtiResult" : "서울식물원", "subTitle" : " 도시의 생태감수성을 높이기 위해 서울에 남은 마지막 개발지", "explain": "당신은 자유로운 스타일로 새로운 경험을 즐기며, 자연 경관이나 자유로움과 독립성을 중요시하는 타입입니다.<br>서울속에서 자연을 탐험할 수 있는<br>서울식물원 호수공원 을 추천합니다.", "img": "서울식물원.jpg"},
    "ISFJ": {"mbtiResult" : "서울숲", "subTitle" : "서울시민에게 환경친화적인 대규모 휴식 공간", "explain": "당신은 안정적이고 따뜻한 관광을 좋아하며, 자연 속에서 휴식을 찾는 타입입니다.<br>따뜻한 감성을 채워줄<br>서울숲 을 추천합니다.", "img": "서울숲.jpg"},
    "INFJ": {"mbtiResult" : "63빌딩 63아트", "subTitle" : "아름다운 한강의 풍경과 어우러진 문화공간", "explain": "당신은 문화적인 행사나 예술 관련 장소에 관심이 많으며,<br>예술, 철학, 문학 등의 영감을 얻을 수 있는 장소를 찾는 타입입니다.<br>다양한 장르의 미술작품을 좀 더 친숙하게 즐길 수 있는<br>63빌딩 63아트 을 추천합니다.", "img": "63아트.jpg"},
    "INTP": {"mbtiResult" : "코엑스아쿠아리움", "subTitle" : "휴식공간과 상부개방형 수조가 있는 힐링플레이스", "explain": "당신은 내적 성장과 감정적인 경험을 추구하는 관광 스타일이며,<br>조용하고 평화로운 자연 속에서 여유로움을 찾는 것을 좋아하는 타입입니다. 정신적인 활동을 즐길 수 있는<br>코엑스아쿠아리움 를 추천합니다.", "img": "코엑스아쿠아리움.jpg"},
    "INFJ": {"mbtiResult" : "경복궁", "subTitle" : " 5대 궁궐 가운데 으뜸의 규모와 건축미", "explain": "당신은 깊은 생각과 내적인 성장을 추구하는 관광 스타일이며,<br>예술, 철학, 문학 등의 영감을 얻을 수 있는 장소를 찾는 타입입니다. 문화적인 면모를 탐험할 수 있는<br>경복궁 을 추천합니다.", "img": "경복궁.jpg"},
    "ISFP": {"mbtiResult" : "보라매공원", "subTitle" : "휴식과 운동, 자연과 교감을 동시에 즐길 수 있는 장소", "explain": "당신은 아름다운 자연과 예술,<br>문화에 대한 경험을 중요시 하며,<br>예술적이고 감성적인 관광 장소를 찾는 타입입니다.<br>여린 감성이 피어날 수 있는<br>보라매공원 을 추천합니다.", "img": "보라매공원.jpg"},
    "INFP": {"mbtiResult" : "푸른수목원", "subTitle" : "2,100 여종의 다양한 식물을<br>감상할 수 있는 친환경 청정수목원", "explain": "당신은 감정적인 경험을 추구하는 관광 스타일이며,<br>자연 속에서 여유로움을 찾을 수 있는<br>장소를 찾는 타입입니다.<br>정신적인 활동을 즐길 수 있는<br>푸른수목원 을 추천합니다.", "img": "푸른수목원.jpg"},
    "ENTJ": {"mbtiResult" : "국립중앙박물관", "subTitle" : " 우리나라의 역사와 문화, 예술을<br>한곳에서 만날 수 있는 최고의 박물관", "explain": "당신은 목표 지향적이고 도전적인 관광 스타일을 가지며,<br>새로운 경험과 도전을 통해 성장하는 타입입니다.<br>관광과 자기계발을 동시에 즐길 수 있는<br>국립중앙박물관 을 추천합니다", "img": "국립중앙박물관.jpg"},
    "ENTP": {"mbtiResult" : "국립항공박물관", "subTitle" : "항공사의 보석 같은 전시물과 실물 비행기를<br>한곳에서 만날 수 있는 공간", "explain": "당신은 호기심이 많고 창의적인 관광 스타일을 가지며,<br>새로운 아이디어를 탐구하는 것을 즐기는 타입입니다.<br>무엇을 상상하든 그 이상을 보여주는<br>국립항공박물관 을 추천합니다.", "img": "국립항공박물관.jpg"},
    "ENFJ": {"mbtiResult" : "일자산허브천문공원", "subTitle" : "울창한 숲부터 아차산까지 시원스러운 전망을 즐길 수 있는 공원", "explain": "당신은 아름다운 풍경을 관찰하고 경험하는 관광 스타일을 가지며,<br>자연 속에서 신선한 공기를 마시고,<br>아름다운 풍경을 감상하며 산책하는 활동을 즐기는 타입입니다.<br>마음을 안정시키고 새로운 영감을 불어넣을 수 있는<br>일자산허브천문공원 을 추천합니다.", "img": "일자산허브공원.jpg"},
    "ESFJ": {"mbtiResult" : "무중력지대", "subTitle" : "학교공부, 스펙쌓기, 혹은 직장생활에 치여 고달픈 삶 속에 사는 청년들의 아지트", "explain": "당신은 사람과의 교류를 중요시 하는 관광 스타일이며,<br>다른 사람들과의 커뮤니케이션을 즐깁니다!<br>커뮤니티 활동을 즐길 수 있는<br>무중력지대 을 추천합니다", "img": "무중력지대 .jpg"},
    "ESFP": {"mbtiResult" : "하이커그라운드", "subTitle" : " K-POP 체험과 미디어 아트 관람을 동시에 할 수 있는 한국 관광 홍보관", "explain": "당신은 사회적이고 활기찬 관광 스타일을 가지며,<br>문화, 행사, 공연, 축제 등 다양한 이벤트와 파티에 참여하는 것을 즐기는 타입입니다.<br>즐거움과 낙천적인 기운이 가득한<br>하이커그라운드 를 추천합니다.", "img": "하이커그라운드.jpg"},
    "ENFP": {"mbtiResult" : "광나루한강공원", "subTitle" : "연간 4천 만 명 이상이 찾는 대표적인 휴식공원", "explain": "당신은 자유로운 관광 스타일을 가지며,<br>다양한 경험과 새로운 만남을 찾는 것을 좋아합니다.<br>자유로움을 추구하며 열정을 마음껏 발산할 수 있는<br>광나루한강공원 를 추천합니다.", "img": "광나루한강공원.jpg"},
    "ESTP": {"mbtiResult" : "롯데월드", "subTitle" : "세계에서 가장 큰 실내 테마파크", "explain": "당신은 활동적이고 모험적인 관광 스타일 이며,<br>새로운 경험이나 자극을 찾는 타입 입니다.<br>활기찬 활동을 즐길 수 있는<br>롯데월드 을 추천합니다.", "img": "롯데월드.jpg"},
    "ESTJ": {"mbtiResult" : "고척스카이돔", "subTitle" : "체육·문화행사를 즐길 수 있는 대한민국 최고의 복합체육문화시설", "explain": "당신은 목표지향적이고 도전적인 관광 스타일이며,<br>실용적이고 현실적인 요소를<br>중요하게 생각하는 타입입니다.<br>콘서트나 야구 등을 직관할 수 있는<br>고척스카이돔 을 추천합니다", "img": "고척스카이돔.jpg"},
  }
  
  function start() {
  $(".start").hide();
  $(".question").show();
  next();
}

$("#A").click(function() {
  var type = $("#type").val();
  var preValue = $("#"+type).val();
  $("#"+type).val(parseInt(preValue)+1);
  next();
});

$("#B").click(function() {
  next();
});

function next() {
  if (num == 13) {
    $(".question").hide();
    $(".loading-screen").show(); // 로딩 메시지 표시
    var mbti = "";
    ($("#EI").val() < 2) ?  mbti += "I" : mbti += "E";
    ($("#SN").val() < 2) ?  mbti += "N" : mbti += "S";
    ($("#TF").val() < 2) ?  mbti += "F" : mbti += "T";
    ($("#JP").val() < 2) ?  mbti += "P" : mbti += "J";
    
    // 결과 표시
    setTimeout(function() {
      $('#imgResult').attr("src", "/guide/resources/img/test/" + result[mbti]["img"]);
      $('#mbtiResult').html(result[mbti]["mbtiResult"]);
      $('#subTitle').html(result[mbti]["subTitle"]);
      $('#explain').html(result[mbti]["explain"]);
      $(".loading-screen").hide(); // 로딩 메시지 숨김
      $(".result").show();
    }, 2000);

  } else {
    $(".progress-bar").attr('style','width: calc(100/12*'+num+'%)');
    $("#qnum").html(q[num]["qnum"]);
    $("#title").html(q[num]["title"]);
    $("#type").val(q[num]["type"]);
    $("#A").html(q[num]["A"]);
    $("#B").html(q[num]["B"]);
    num++;
  }
}
  

  