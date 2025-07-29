<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>실시간 알림 로그 확인</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        #alertLog {
            width: 100%;
            height: 300px;
            border: 1px solid #ccc;
            padding: 10px;
            overflow-y: scroll;
            background-color: #f1f1f1;
            white-space: pre-wrap;
        }
    </style>
</head>
<body>
    <h2>🔔 실시간 알림 </h2>
    <div id="alertLog"> 알림을 불러오는 중...</div>

    <script>
        let previousData = "";

        async function fetchAlerts() {
            console.log("📡 fetchAlerts() 호출됨");

            try {
            	const res = await fetch("${cpath}/api/alerts/latest");
                console.log("🌐 fetch 결과:", res);
                if (!res.ok) {
                    console.error("❌ 응답 실패", res.statusText);
                    return;
                }

                const data = await res.json();
                console.log("📦 받은 데이터:", data);

                const alertLog = document.getElementById("alertLog");
                const newText = data.messages.join("\n");

                if (newText !== previousData) {
                    alertLog.textContent = newText;
                    alertLog.scrollTop = alertLog.scrollHeight;
                    previousData = newText;
                }

            } catch (err) {
                console.error("❌ fetchAlerts 실패:", err);
            }
        }

        setInterval(fetchAlerts, 5000);
        fetchAlerts();
    </script>
</body>
</html>
