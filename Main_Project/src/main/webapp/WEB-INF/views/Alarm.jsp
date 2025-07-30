<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>실시간 분석 로그</title>
    <style>
        body {
            font-family: 'Segoe UI', '나눔고딕', 'Pretendard', sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 40px auto;
            background-color: #ffffff;
            border-radius: 16px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.06);
            padding: 30px 25px;
        }

        h2 {
            font-size: 1.6em;
            color: #222;
            margin-bottom: 20px;
        }

        .log-box {
		    background-color: #fff;
		    color: #222;
		    padding: 20px;
		    border: 1px solid #ccc;
		    white-space: pre-wrap;
		    word-wrap: break-word;
		    font-family: 'Noto Sans KR', sans-serif;
		    font-size: 16px;
		    height: 500px; /* ⬅️ 여기 값을 크게 조정 */
		    overflow-y: auto;
		}


        .title-area {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .title-area img {
            width: 24px;
            height: 24px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="title-area">
        <img src="https://cdn-icons-png.flaticon.com/512/1827/1827504.png" alt="알림">
        <h2>📋 실시간 분석 로그</h2>
    </div>

    <div class="log-box" id="logBox">불러오는 중...</div>
</div>

<script>
    function fetchLog() {
        fetch("/api/log")
            .then(res => res.text())
            .then(data => {
                const logBox = document.getElementById("logBox");
                logBox.textContent = data || "📭 현재 기록된 로그가 없습니다.";
                logBox.scrollTop = logBox.scrollHeight;
            })
            .catch(err => {
                document.getElementById("logBox").textContent = "🚫 로그 불러오기 실패";
                console.error("로그 불러오기 실패:", err);
            });
    }

    setInterval(fetchLog, 3000);
    fetchLog();
</script>

</body>
</html>
