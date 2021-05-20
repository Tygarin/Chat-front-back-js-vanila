const server = new Server(callbackGetMessages);


window.onload = function(){
    const modal_reg = document.getElementById('modal-reg');
    const modal_auth = document.getElementById('modal-log');
    const reg_button = document.getElementById('reg-button');
    const log_button = document.getElementById('log-button');
    const name_header = document.getElementById('name_header');
    const name = document.querySelector('.name');

    // Открываем модальные окна
    reg_button.addEventListener('click', function () {
        modal_reg.style.display = "block";
    });

    log_button.addEventListener('click', function () {
        modal_auth.style.display = "block";
    });

    // При нажатии за пределы окна оно закрывается
    window.onclick = function (event) {
        if (event.target == modal_reg) {
            modal_reg.style.display = "none";
        }

        if (event.target == modal_auth) {
            modal_auth.style.display = "none";
        }
    }

    //reg, log кнопки
    document
        .getElementById('reg-submit')
        .addEventListener('click', async function () {
            const name = document.getElementById('name').value;
            const login = document.getElementById('reg-login').value;
            const password = document.getElementById('reg-password').value;
            const verify = document.querySelector('.verify');
            const result = await server.registration({ name, login, password });
            console.log(login, password);
            if (result) { // регистрация и логин успешные
                verify.innerText = 'Пользователь создан';
            } else { // показать сообщение об ошибке
                verify.innerText = 'Пользователь уже существует';
            }
        });

    document.querySelector('#user-login-btn').addEventListener('click', async function () {
        const login = document.getElementById('login').value;
        const password = document.getElementById('password').value;
        const result = await server.login({ login, password });
        console.log('вход');
        if (result) {
            modal_auth.style.display = 'none';
            reg_button.style.display = 'none';
            log_button.style.display = 'none';
            name.innerText = `Привет, ${localStorage.name}`;
            document.querySelector('.start-chat').addEventListener('click', ()=>{
                document.querySelector('.main-content').style.display = 'none';
                document.querySelector('.chat_main').style.display = 'block';
                document.querySelector('.header').style.display = 'none';
                name_header.innerText = `${localStorage.name}`;
            })
        } else {
            console.log('sdfs');
        }
    })   
}