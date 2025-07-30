<script>
  document.addEventListener("DOMContentLoaded", function () {
    let previousData = "";

    const parentId = "${parentId}";
    const encodedParentId = encodeURIComponent(parentId);

    const alertLog = document.getElementById("alertLog");

    if (!parentId || parentId.trim() === "") {
      console.error("❌ parentId가 비어있습니다.");
      if (alertLog) {
        alertLog.innerHTML = "<span style='color:red'>parentId가 없습니다. URL을 확인하세요.</span>";
      }
    } else {
      console.log("✅ parentId:", parentId);

      async function fetchAlerts() {
        try {
          const res = await fetch(`${cpath}/api/alerts/${encodedParentId}`);
          if (!res.ok) {
            console.error("❌ 응답 실패", res.statusText);
            return;
          }

          const data = await res.json();

          if (!alertLog) return;

          let newText = "";
          data.messages.forEach(msg => {
            newText += `🔔 ${msg.alarmContent} - ${msg.alarmCreatedAt}\n`;
          });

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
    }
  });
</script>
