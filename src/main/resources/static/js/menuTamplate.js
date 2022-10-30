
const tela = document.getElementById("Title").textContent;// $("#Title").text()
/*Menu Template*/
const header = document.createElement("header");
header.className = "header mx-0 row shadow lightMode";
header.id = "header";
const headerToggle = document.createElement("div");
const iList = document.createElement("i");
iList.className = "bi bi-list";
iList.id = "header-toggle";
const coldiv = document.createElement("div");
coldiv.className = "col";

const nighBut = document.createElement("i");
nighBut.className = "bi bi-moon-stars";
nighBut.id = "nightSwitch";
const coldiv2 = document.createElement("div");
coldiv2.className = "col-auto";

coldiv.append(iList)
header.append(coldiv);
coldiv2.append(nighBut)
header.append(coldiv2);
document.body.append(header);

/* \/ nav bar \/ */
const lnavbar = document.createElement("div");
lnavbar.className = "l-navbar";
lnavbar.id = "nav-bar";

const nav = document.createElement("nav");
nav.className = "nav";

const div = document.createElement("div");

/* \/ logo \/ */
const navLogo = document.createElement("a");
navLogo.href = "#";
navLogo.className = "nav_logo";

const i1 = document.createElement("i");
i1.className = "bi bi-grid-1x2";

const spanLogo = document.createElement("span");
spanLogo.className = "nav_logo-name";
spanLogo.innerText = "Everywhere Analitics";

navLogo.append(i1);
navLogo.append(spanLogo);
/* /\ logo /\ */

const navList = document.createElement("div");
navList.className = "nav_list";

/* \/ dash \/ */
const navDash = document.createElement("a");
navDash.href = "gerenciarDash.html";
if (tela === "Dashboard") {
    navDash.className = "nav_link active";
} else {
    navDash.className = "nav_link";
}

const i2 = document.createElement("i");
i2.className = "bi bi-graph-up-arrow";

const spanDash = document.createElement("span");
spanDash.className = "nav_name";
spanDash.innerText = "Dashboard";

navDash.append(i2);
navDash.append(spanDash);
/* /\ dash /\ */

/* \/ Usuario \/ */
const navUsuario = document.createElement("a");
navUsuario.href = "gerenciarUsuarios.html";
if (tela === "Usuário") {
    navUsuario.className = "nav_link active";
} else {
    navUsuario.className = "nav_link";
}

const i3 = document.createElement("i");
i3.className = "bi bi-people";

const spanUsuario = document.createElement("span");
spanUsuario.className = "nav_name";
spanUsuario.innerText = "Usuários";

navUsuario.append(i3);
navUsuario.append(spanUsuario);
/* /\ Usuario /\ */

/* \/ Formulario \/ */
const navFormulario = document.createElement("a");
navFormulario.href = "gerenciarFormularios.html";
if (tela === "Formulário") {
    navFormulario.className = "nav_link active";
} else {
    navFormulario.className = "nav_link";
}

const i4 = document.createElement("i");
i4.className = "bi bx-x bi-card-checklist";

const spanFormulario = document.createElement("span");
spanFormulario.className = "nav_name";
spanFormulario.innerText = "Formulários";

navFormulario.append(i4);
navFormulario.append(spanFormulario);
/* /\ Formulario /\ */

/* \/ Cliente \/ */
const navCliente = document.createElement("a");
navCliente.href = "gerenciarClientes.html";
if (tela === "Cliente") {
    navCliente.className = "nav_link active";
} else {
    navCliente.className = "nav_link";
}

const i5 = document.createElement("i");
i5.className = "bi bi-person-video2";

const spanCliente = document.createElement("span");
spanCliente.className = "nav_name";
spanCliente.innerText = "Clientes";

navCliente.append(i5);
navCliente.append(spanCliente);
/* /\ Cliente /\ */

/* \/ Docker \/ */
const navDocker = document.createElement("a");
navDocker.href = "gerenciarDocker.html";
if (tela === "Docker") {
    navDocker.className = "nav_link active";
} else {
    navDocker.className = "nav_link";
}

const i6 = document.createElement("i");
i6.className = "bi bi-boxes";

const spanDocker = document.createElement("span");
spanDocker.className = "nav_name";
spanDocker.innerText = "Docker";

navDocker.append(i6);
navDocker.append(spanDocker);
/* /\ Docker /\ */

/* \/ Logout \/ */
const navLogout = document.createElement("a");
navLogout.href = "index.html";
if (tela === "Desconectar") {
    navLogout.className = "nav_link active";
} else {
    navLogout.className = "nav_link";
}

const i7 = document.createElement("i");
i7.className = "bi bi-box-arrow-left";

const spanLogout = document.createElement("span");
spanLogout.className = "nav_name";
spanLogout.innerText = "Desconectar";

navLogout.append(i7);
navLogout.append(spanLogout);
/* /\ Logout /\ */

navList.append(navDash);
navList.append(navUsuario);
navList.append(navFormulario);
navList.append(navCliente);
navList.append(navDocker);

div.append(navLogo);
div.append(navList);

nav.append(div);
nav.append(navLogout);

lnavbar.append(nav);

document.body.append(lnavbar);

/* /\ nav bar /\ */
