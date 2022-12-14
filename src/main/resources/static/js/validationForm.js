function valida() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
    var data = document.getElementById('Date')
    var sensor = document.getElementById('sensor')
    var rua = document.getElementById('endPredInst')
    var ruaRel = document.getElementById('endComRel')
    var cidade = document.getElementById('cidade')
    var estado = document.getElementById('estado')

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
                if (validRuaRel(ruaRel) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validCidade(cidade) === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                if (validEstado(estado) === false) {
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
        attMaps(rua, cidade, estado)
    }, false)
    rua.addEventListener('keyup', function () {
        validRua(rua)
        attMaps(rua, cidade, estado)
    }, false)
    estado.addEventListener('keyup', function () {
        validEstado(estado)
        attMaps(rua, cidade, estado)
    }, false)

    ruaRel.addEventListener('keyup', function () {
        validRuaRel(ruaRel)
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
    link = `https://maps.google.com/maps?q=${rua.value.replace(/ /g, "%20")},%20${cidade.value.replace(/ /g, "%20")}%20${estado.value.replace(/ /g, "%20")})&t=&z=13&ie=UTF8&iwloc=&output=embed`
    //console.log(rua.value.replace(/ /g, "%20"))
    maps = document.getElementById('maps')
    maps.src = link
}

function hasNumber(myString) {
    reg = /[0-9]+/g;
    //console.log(reg.test(myString), myString)
    return reg.test(myString);
}

//==== \/Valida????es\/ =====
function validData(item) {
    console.log(item.value.length)
    if (item.value.length >= 4) {
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
function validEstado(item) {
    if (item.value.length >= 3) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validRua(item) {
    if (item.value.length > 5 && hasNumber(item.value)) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    //try {
    //    item2.innerHTML = `${item.value.length} de 5 Caracteres m??nimos`
    //} catch { }
    item.classList.remove('is-valid')
    item.classList.add('is-invalid')
    return false
}
function validRuaRel(item) {
    if (item.value.length > 5) {
        item.classList.remove('is-invalid')
        item.classList.add('is-valid')
        return true
    }
    //item2.innerHTML = `${item.value.length} de 5`
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



//==== /\Valida????es/\ =====
