const menuButton = document.getElementById('menuButton');
const chat_field = document.querySelector('.chat');
const chat_input = document.getElementById('chat-input');
const send_btn = document.getElementById('send-message');

//создание нового сообщения после получения его от сервера
function callbackGetMessages(messages) {
    chat_field.innerHTML = '';
    messages.forEach(message => {
        const div = document.createElement('div');
        div.classList.add('message');
        div.innerText = `${message.name}: ${message.message}`;
        chat_field.appendChild(div);
    });
}

//создание нового сообщения и отправка на сервер
function newMessage() {
    console.log('new msg');
    const message = chat_input.value;
    if (message) {
        server.sendMessage(message);
        chat_input.value = '';
    }
}

// отправка сообщения на клавишу enter
send_btn.addEventListener('click', newMessage);
chat_input.addEventListener('keydown', (event) => {
    if (event.keyCode == '13') {
        newMessage();
        console.log('sasd');
    }
});

//Логаут(хитросделанный)
menuButton.addEventListener('click', function () {
    window.location.reload();
});