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
function validEmail(email) {
    if (email.value.includes("@")) {
        email.classList.remove('is-invalid')
        email.classList.add('is-valid')
        return true
    }
    email.classList.remove('is-valid')
    email.classList.add('is-invalid')
    return false

}

function validNome(nome) {
    if (nome.value.match(/[a-zA-Z ]+/g) && nome.value.length > 4) {
        nome.classList.remove('is-invalid')
        nome.classList.add('is-valid')
        return true
    }
    nome.classList.remove('is-valid')
    nome.classList.add('is-invalid')
    return false

}

function validSenha(senha) {
    if (senha.value.length > 5) {
        if (senha.value.match(/[a-z]+/g) && senha.value.match(/[A-Z]+/g) && senha.value.match(/[0-9]+/g) && senha.value.match(/[!@#$%&*()<>]+/g)) {
            senha.classList.remove('is-invalid')
            senha.classList.add('is-valid')
            return true
        }
    }
    senha.classList.remove('is-valid')
    senha.classList.add('is-invalid')
    return false
}

function validSenhaConf(senha, senhaConf) {
    if (senhaConf.value == senha.value && senhaConf.value.length != 0) {
        senhaConf.classList.remove('is-invalid')
        senhaConf.classList.add('is-valid')
        return true
    }
    senhaConf.classList.remove('is-valid')
    senhaConf.classList.add('is-invalid')
    return false
}

function validPhone(phone) {
    if (phone.value.length === 15 || phone.value.length === 0) {
        phone.classList.remove('is-invalid')
        phone.classList.add('is-valid')
        return true
    }
    phone.classList.remove('is-valid')
    phone.classList.add('is-invalid')
    return false
}


//==== /\Validações/\ =====
