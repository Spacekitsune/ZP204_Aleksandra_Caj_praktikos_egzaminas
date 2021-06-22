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

       document.getElementById('success-message').setAttribute("class", "container-md bg-success text-light");
       document.getElementById('success-message').innerText = "Jūsų duomenys išsiųsti sėkmingai";


    }
}

document.getElementById('button-submit').addEventListener('click', function () {
    validateForm();
});


