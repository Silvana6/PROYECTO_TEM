document.addEventListener('DOMContentLoaded', (event) => {
    const reminderCheckbox = document.getElementById('reminder-checkbox');

    // Check if the browser supports notifications
    if (!("Notification" in window)) {
        alert("Este navegador no soporta notificaciones.");
        reminderCheckbox.disabled = true;
    }

    reminderCheckbox.addEventListener('change', function () {
        if (this.checked) {
            Notification.requestPermission().then(function (permission) {
                if (permission === "granted") {
                    settingsSection.style.display = "block";
                } else {
                    alert("Permiso para notificaciones no concedido.");
                    reminderCheckbox.checked = false;
                }
            });
        } else {
            settingsSection.style.display = "none";
        }
    });
});
