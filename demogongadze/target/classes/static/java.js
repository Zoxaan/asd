const express = require('express');
const app = express();

// Поддержка статических файлов из папки static
app.use(express.static('static'));

// Роут для вашей HTML-страницы
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

// Прослушивание порта
const PORT = 8082;
app.listen(PORT, () => {
    console.log(`Сервер запущен на порту ${PORT}`);
});

function showNotification() {
    // Проверяем поддержку API уведомлений
    if (!("Notification" in window)) {
        alert("Ваш браузер не поддерживает уведомления");
    } else if (Notification.permission === "granted") {
        // Если разрешение уже получено, создаем уведомление
        createNotification();
    } else if (Notification.permission !== 'denied') {
        // Запрашиваем разрешение у пользователя
        Notification.requestPermission().then(function (permission) {
            if (permission === "granted") {
                createNotification();
            }
        });
    }
}

function createNotification() {
    // Создаем уведомление
    var notification = new Notification("Уведомление", {
        body: "пам па рам Ты нажал на кнопку, гений",
        icon: "path/to/icon.png" // Путь к иконке уведомления
    });

    // Обработка клика по уведомлению
    notification.onclick = function () {
        alert("Уведомление было кликнуто");
    };
}