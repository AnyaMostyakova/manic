function validate() {
    let password = pwd.value; // document.getElementById('pwd');
    let password1 = pwd1.value; // document.getElementById('pwd1');
    console.log(password);
    console.log(password1);
    // TODO место для проверок данных
    console.log('validate form');


    if (password != password1) {
        //alert('Пароли не совпадают!');
        let d = document.getElementById('error');
        d.innerHTML = '<span style="color:red">Passwords don\'t match!</span>';
        return false;
    }
    return true;
}

function validatePassword(input) {
    if (input.value.length < 8) {
        // необходимо вызвать setCustomValidity с сообщением об ошибке
        input.setCustomValidity("The password is too short, it must consist of at least 8 characters!");
    }
    else {
        // очищаем сообщение об ошибке
        input.setCustomValidity("");
    }
}
