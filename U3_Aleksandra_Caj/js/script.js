function validateForm() {
    if ((document.getElementById('email').value=="")&&(document.getElementById('name').value=="")) {
        alert('Užpildykite visus laukus.');
        return false;
    } else if (document.getElementById('name').value=="") {
        alert('Įveskite vardą.');
        return false;
    } else if (document.getElementById('email').value=="") {
        alert('Įveskite el. paštą.');
        return false;
    } else {
        alert('Jūsų duomenys išsiųsti!');
        return true;

    }
}

document.getElementById('button-submit').addEventListener('click', function () {
    validateForm();
});





