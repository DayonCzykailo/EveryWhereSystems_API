//Get Cookies
let nightMode = localStorage.getItem('nightMode');

// Activate NightMode on start
let cookie_toggle = document.getElementById('header-toggle')
let cookie_nav = document.getElementById('nav-bar')
let cookie_bodypd = document.getElementById('body-pd')
let cookie_headerpd = document.getElementById('header')
let cookie_nightButt = document.getElementById('nightSwitch')
let cookie_body = document.getElementById('body-pd')
let cookie_container = document.getElementsByClassName("lightMode")
let cookie_containerAlt = document.getElementsByClassName("bgBlue")
let cookie_table = document.getElementsByClassName("table")
let cookie_menu = document.getElementById("nav-bar")

if (nightMode == 'enabled') {
    // Validate that all variables exist
    // switch night mode
    cookie_body.classList.toggle('night-body')
    cookie_nightButt.classList.toggle('bi-sun')

    // search all LightMode to change to Night
    for (let i = 0; i < cookie_container.length; i++) {
        cookie_container[i].classList.toggle('night')
    }

    try {
        if (cookie_nightButt && cookie_menu) {
            cookie_menu.classList.toggle('nightAlt')
            //console.log(menu)
        }
    } catch (error) {
        console.log("Erro no darkmode do menu")
    }


    try {
        if (cookie_nightButt && cookie_containerAlt) {
            for (let i = 0; i < cookie_containerAlt.length; i++) {
                cookie_containerAlt[i].classList.toggle('nightAlt')
            }
        }
    } catch (error) {
        console.log("Nenhum item secundario encontrado")
    }


    try {
        if (cookie_nightButt && cookie_table) {
            for (let i = 0; i < cookie_table.length; i++) {
                cookie_table[i].classList.toggle('table-dark')
            }
        }
    } catch (error) {
        console.log("Nenhum item secundario encontrado")
    }

}