
document.addEventListener("DOMContentLoaded", function (event) {

    const showNavbar = (toggleId, navId, bodyId, headerId, nightModeId, nightSwitch) => {
        const toggle = document.getElementById(toggleId),
            nav = document.getElementById(navId),
            bodypd = document.getElementById(bodyId),
            headerpd = document.getElementById(headerId),

            nightButt = document.getElementById(nightSwitch),
            body = document.getElementById(nightModeId),
            //container = document.getElementById(containerId)
            container = document.getElementsByClassName("lightMode"),
            containerAlt = document.getElementsByClassName("bgBlue"),
            table = document.getElementsByClassName("table"),
            menu = document.getElementById("nav-bar")


        // Validate that all variables exist
        if (toggle && nav && bodypd && headerpd) {
            toggle.addEventListener('click', () => {
                // show navbar
                nav.classList.toggle('show')
                // change icon
                toggle.classList.toggle('bi-x')
                // add padding to body
                bodypd.classList.toggle('body-pd')
                // add padding to header
                headerpd.classList.toggle('body-pd')
            })
        } else {
            console.log('DEU MERDAAAA');
        }

        // Validate that all variables exist
        if (nightButt && body) {

            nightButt.addEventListener('click', () => {
                switchNigthMode();
                // switch night mode
                body.classList.toggle('night-body')
                nightButt.classList.toggle('bi-sun')

                // search all LightMode to change to Night
                for (let i = 0; i < container.length; i++) {
                    container[i].classList.toggle('night')
                }

                try {
                    if (nightButt && menu) {
                        menu.classList.toggle('nightAlt')
                        //console.log(menu)
                    }
                } catch (error) {
                    console.log("Erro no darkmode do menu")
                }


                try {
                    if (nightButt && containerAlt) {
                        for (let i = 0; i < containerAlt.length; i++) {
                            containerAlt[i].classList.toggle('nightAlt')
                        }
                    }
                } catch (error) {
                    console.log("Nenhum item secundario encontrado")
                }


                try {
                    if (nightButt && table) {
                        for (let i = 0; i < table.length; i++) {
                            table[i].classList.toggle('table-dark')
                        }
                    }
                } catch (error) {
                    console.log("Nenhum item secundario encontrado")
                }
            })
        }


    }

    showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header', 'body-pd', 'nightSwitch')

    /*===== LINK ACTIVE =====*/
    const linkColor = document.querySelectorAll('.nav_link')

    function colorLink() {
        if (linkColor) {
            linkColor.forEach(l => l.classList.remove('active'))
            this.classList.add('active')
        }
    }
    linkColor.forEach(l => l.addEventListener('click', colorLink))

    // Your code to run since DOM is loaded and ready
});

function switchNigthMode() {
    let nightMode = localStorage.getItem('nightMode');
    if (nightMode == 'enabled') {
        localStorage.setItem('nightMode', 'disabled');

    } else {
        localStorage.setItem('nightMode', 'enabled');
    }
}

