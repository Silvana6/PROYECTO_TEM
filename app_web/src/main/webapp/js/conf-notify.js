document.addEventListener('DOMContentLoaded', function () {
    var checkbox = document.getElementById('mark-checkbox');
    var settingsSection = document.getElementById('settings-section');

    checkbox.addEventListener('change', function () {
        if (checkbox.checked) {
            settingsSection.style.display = 'block';
        } else {
            settingsSection.style.display = 'none';
        }
    });
});

/*document.addEventListener('DOMContentLoaded', (event) => {
 const reminderCheckbox = document.getElementById('reminder-checkbox');
 const settingsSection = document.getElementById('settings-section');
 // Function to schedule notification
 function scheduleNotification() {
 const repeatCount = document.getElementById('repeat-count').value;
 const interval = document.getElementById('interval').value;
 const intervalUnit = document.getElementById('interval-unit').value;
 const time = document.getElementById('time').value;
 const startDate = document.getElementById('start-date').value;
 const endDate = document.getElementById('end-date').value;
 
 const [hours, minutes] = time.split(':');
 const [startYear, startMonth, startDay] = startDate.split('-');
 const start = new Date(startYear, startMonth - 1, startDay, hours, minutes);
 
 let current = new Date(start);
 
 for (let i = 0; i < repeatCount; i++) {
 if (intervalUnit === "days") {
 current.setDate(current.getDate() + parseInt(interval));
 } else if (intervalUnit === "weeks") {
 current.setDate(current.getDate() + parseInt(interval) * 7);
 } else if (intervalUnit === "months") {
 current.setMonth(current.getMonth() + parseInt(interval));
 } else if (intervalUnit === "years") {
 current.setFullYear(current.getFullYear() + parseInt(interval));
 }
 
 if (current > new Date(endDate)) break;
 
 // Schedule notification
 const delay = current.getTime() - new Date().getTime();
 setTimeout(() => {
 new Notification("Recordatorio", {
 body: "Es hora de tu recordatorio programado.",
 icon: "icon-url" // Opcional, URL del icono de la notificación
 });
 }, delay);
 }
 }
 
 // Attach event to button or form submission
 document.getElementById('reminder-checkbox').addEventListener('change', scheduleNotification);
 });*/
