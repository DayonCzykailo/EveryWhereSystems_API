function valida() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
    var email = document.getElementById('validationEmail')
    var nomeFantasia = document.getElementById('nomeFantasia')
    var razaoSocial = document.getElementById('nomeRazaoSocial')
    var senha = document.getElementById('validationSenha')
    var senhaConf = document.getElementById('validationSenhaConf')
    var validationCNPJ = document.getElementById('validationCNPJ')
    //var phone = document.getElementById('validationCelular')

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (validNomeFantasia(nomeFantasia) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validNomeRazaoSocial(razaoSocial) === false) {
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
                if (validarCNPJ(validationCNPJ) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
            }, false)
        })

    email.addEventListener('keyup', function () {
        validEmail(email)
    }, false)
    nomeFantasia.addEventListener('keyup', function () {
        validNomeFantasia(nomeFantasia)
    }, false)
    razaoSocial.addEventListener('keyup', function () {
        validNomeRazaoSocial(razaoSocial)
    }, false)
    validationCNPJ.addEventListener('keyup', function () {
        validarCNPJ(validationCNPJ)
    }, false)
    senha.addEventListener('keyup', function () {
        validSenha(senha)
    }, false)
    senhaConf.addEventListener('keyup', function () {
        validSenhaConf(senha, senhaConf)
    }, false)


}

valida()


//==== \/Mascaras\/ =====
//$("#validationCelular").mask("(00) 00000-0000");
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

function validNomeFantasia(item) {
    if (item.value.match(/[a-zA-Z ]+/g)) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validNomeRazaoSocial(item) {
    if (item.value.match(/[a-zA-Z ]+/g)) {
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

function validarCNPJ(item) {
    if (CNPJ(item.value)) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}

function CNPJ(cnpj) {

    cnpj = cnpj.replace(/[^\d]+/g, '');

    if (cnpj == '') return false;

    if (cnpj.length != 14)
        return false;

    // Elimina CNPJs invalidos conhecidos
    if (cnpj == "00000000000000" ||
        cnpj == "11111111111111" ||
        cnpj == "22222222222222" ||
        cnpj == "33333333333333" ||
        cnpj == "44444444444444" ||
        cnpj == "55555555555555" ||
        cnpj == "66666666666666" ||
        cnpj == "77777777777777" ||
        cnpj == "88888888888888" ||
        cnpj == "99999999999999")
        return false;

    // Valida DVs
    tamanho = cnpj.length - 2
    numeros = cnpj.substring(0, tamanho);
    digitos = cnpj.substring(tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
        soma += numeros.charAt(tamanho - i) * pos--;
        if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(0))
        return false;

    tamanho = tamanho + 1;
    numeros = cnpj.substring(0, tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
        soma += numeros.charAt(tamanho - i) * pos--;
        if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(1))
        return false;

    return true;

}

//==== /\Validações/\ =====
