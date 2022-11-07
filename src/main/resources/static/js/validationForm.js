function valida() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
    var data = document.getElementById('Date')
    var sensor = document.getElementById('sensor')
    var rua = document.getElementById('endPredInst')
    var info1 = document.getElementById('invalidRuaInst')
    var ruaRel = document.getElementById('endComRel')
    var info2 = document.getElementById('invalidRuaRel')
    var cidade = document.getElementById('cidade')

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (validData(data) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validSensor(sensor) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validRua(rua) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validRua(ruaRel) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validRua(cidade) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
            }, false)
        })

    sensor.addEventListener('keyup', function () {
        validSensor(sensor)
    }, false)
    cidade.addEventListener('keyup', function () {
        validCidade(cidade)
    }, false)
    rua.addEventListener('keyup', function () {
        validRua(rua, info1)
        attMaps(rua.value, cidade.value)
    }, false)

    ruaRel.addEventListener('keyup', function () {
        validRuaRel(ruaRel, info2)
    }, false)

}

valida()


//==== \/Mascaras\/ =====
$("#sensor").mask("0000");
//$('#sensor').bind('keyup blur', function () {
//    var a = $(this);
//    a.val(a.val().replace(/[^0-9]/g, ''));
//}
//);
//==== /\Mascaras/\ =====

function attMaps(rua, cidade) {
    link = `https://maps.google.com/maps?q=${rua.replace(" ", "%20")},%20${cidade.replace(" ", "%20")})&t=&z=13&ie=UTF8&iwloc=&output=embed`
    console.log(link)
    maps = document.getElementById('maps')
    maps.src = link
}

//==== \/Validações\/ =====
function validData(item) {
    console.log(item.value.length)
    if (item.value.length === 4) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validSensor(item) {
    if (item.value.length == 4) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validRua(item, item2) {
    if (item.value.length > 5) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    try {
        item2.innerHTML = `${item.value.length} de 5 Caracteres mínimos`
    } catch { }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validRuaRel(item, item2) {
    if (item.value.length > 5) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item2.innerHTML = `${item.value.length} de 5`
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validCidade(item) {
    if (item.value.length > 5) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}



//==== /\Validações/\ =====
