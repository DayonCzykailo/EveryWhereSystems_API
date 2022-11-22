function valida() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
    var email = document.getElementById('validationEmail')
    var nome = document.getElementById('validationNome')
    var senha = document.getElementById('validationSenha')
    var senhaConf = document.getElementById('validationSenhaConf')
    var phone = document.getElementById('validationCelular')

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (validNome(nome) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validEmail(email) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validSenha(senha) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validSenhaConf(senha, senhaConf) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
            }, false)
        })

    email.addEventListener('keyup', function () {
        validEmail(email)
    }, false)
    nome.addEventListener('keyup', function () {
        validNome(nome)
    }, false)
    senha.addEventListener('keyup', function () {
        validSenha(senha)
    }, false)
    senhaConf.addEventListener('keyup', function () {
        validSenhaConf(senha, senhaConf)
    }, false)
    phone.addEventListener('keyup', function () {
        validPhone(phone)
    }, false)

}

valida()


//==== \/Mascaras\/ =====
$("#validationCelular").mask("(00) 00000-0000");
//$('#validationNome').bind('keyup blur', function () {
//    var node = $(this);
//    node.val(node.val().replace(/[^a-zA-Z ]/g, ''));
//}
//);
//==== /\Mascaras/\ =====

//==== \/Validações\/ =====
function validEmail(item) {
    if (item.value.includes(".") && item.value.includes("@") && item.value.length > 6) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false

}

function validNome(item) {
    if (item.value.match(/[a-zA-Z ]+/g) && item.value.length > 4) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false

}

function validSenha(item) {
    if (item.value.length > 5) {
        if (item.value.match(/[a-z]+/g) && item.value.match(/[0-9]+/g) && item.value.match(/[!@#$%&*()<>]+/g)) {
            item.classList.remove('is-invalid')
            item.classList.add('is-valid')
            return true
        }
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}

function validSenhaConf(item, item2) {
    if (item2.value == item.value && item2.value.length != 0) {
        item2.classList.remove('is-invalid')
        item2.classList.add('is-valid')
        return true
    }
    item2.classList.remove('is-valid')
    item2.classList.add('is-invalid')
    return false
}

function validPhone(item) {
    if (item.value.length === 15 || item.value.length === 0) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}


//==== /\Validações/\ =====
