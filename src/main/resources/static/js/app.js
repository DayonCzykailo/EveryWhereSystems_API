



function randGenerator(max) {
    let value = Math.random() * (max - 1 + 1) + 1;
    return value;
}

Date.prototype.addDays = function (days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

function getDates(startDate, stopDate) {
    var dateArray = new Array();
    var currentDate = startDate;
    while (currentDate <= stopDate) {
        dateArray.push(new Date(currentDate));
        currentDate = currentDate.addDays(1);
    }
    return dateArray;
}

function locaisGenerator() {
    lista = [];
    let i = Math.round(randGenerator(2));
    if (i == 1) {
        return 'Rua Rio Grande do Sul N199';
    }
    if (i == 2) {
        return 'Rua Joaquim N23';
    }
    if (i == 3) {
        return 'Avenida Paulista N98';
    }
}
function cidadeGenerator() {
    lista = [];
    let i = Math.round(randGenerator(2));
    if (i == 1) {
        return 'Curitiba';
    }
    if (i == 2) {
        return 'São Paulo';
    }
    if (i == 3) {
        return 'Florianópolis';
    }
}

function painelGenerator() {
    lista = [];
    let i = Math.round(randGenerator(2));
    if (i == 1) {
        return 'Led';
    }
    if (i == 2) {
        return 'Outdoor';
    }
    if (i == 3) {
        return 'Totem';
    }
}


function dataGenerator() {
    let line = {};
    let dado = [];
    let maxDataDia = 0;
    let range = getDates(new Date('2022-05-02'), new Date('2022-11-15'));
    range.forEach(element => {
        maxDataDia = Math.round(randGenerator(10));
        for (let i = 0; i < maxDataDia; i++) {
            line = { 'data': element, 'mac': `${i}${Math.round(randGenerator(99999))}`, 'local': locaisGenerator(), 'cidade': cidadeGenerator(), 'painel': painelGenerator(), 'impacto': Math.round(randGenerator(5)) }
            dado.push(line);
        }
    })

    return (dado);
}

let dateOp = {
    weekday: "long",
}

function getDiaSemanaImpacto() { // Audiencia = contagem de pessoas ignorando total de veses que ela passou , Impacto = contagem total de pessoas contando junto quanto ela passou
    let valor = [];
    let domingo = 0;
    let segunda = 0;
    let terca = 0;
    let quarta = 0;
    let quinta = 0;
    let sexta = 0;
    let sabado = 0;
    dado.forEach(element => {

        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'domingo') {
            domingo += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'segunda-feira') {
            segunda += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'terça-feira') {
            terca += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'quarta-feira') {
            quarta += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'quinta-feira') {
            quinta += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'sexta-feira') {
            sexta += element['impacto'];
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'sábado') {
            sabado += element['impacto'];
        }

        //valor.push(i)
    })
    valor = [domingo, segunda, terca, quarta, quinta, sexta, sabado]
    return valor;
}

function getDiaSemanaAudiencia() { // Audiencia = contagem de pessoas ignorando total de veses que ela passou , Impacto = contagem total de pessoas contando junto quanto ela passou
    let valor = [];
    let domingo = 0;
    let segunda = 0;
    let terca = 0;
    let quarta = 0;
    let quinta = 0;
    let sexta = 0;
    let sabado = 0;
    let histdomingo = {};
    let histsegunda = {};
    let histterca = {};
    let histquarta = {};
    let histquinta = {};
    let histsexta = {};
    let histsabado = {};
    dado.forEach(element => {
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'domingo') {
            if (!(element['mac'] in histdomingo)) {
                histdomingo[element['mac']] = 0;
                domingo += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'segunda-feira') {
            if (!(element['mac'] in histsegunda)) {
                histsegunda[element['mac']] = 0;
                segunda += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'terça-feira') {
            if (!(element['mac'] in histterca)) {
                histterca[element['mac']] = 0;
                terca += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'quarta-feira') {
            if (!(element['mac'] in histquarta)) {
                histquarta[element['mac']] = 0;
                quarta += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'quinta-feira') {
            if (!(element['mac'] in histquinta)) {
                histquinta[element['mac']] = 0;
                quinta += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'sexta-feira') {
            if (!(element['mac'] in histsexta)) {
                histsexta[element['mac']] = 0;
                sexta += 1;
            }
        }
        if (Intl.DateTimeFormat("pt-BR", dateOp).format(element['data']) === 'sábado') {
            if (!(element['mac'] in histsabado)) {
                histsabado[element['mac']] = 0;
                sabado += 1;
            }
        }

        //valor.push(i)
    })
    valor = [domingo, segunda, terca, quarta, quinta, sexta, sabado]
    return valor;
}


function getDiaAudiencia() { // Audiencia = contagem de pessoas ignorando total de veses que ela passou , Impacto = contagem total de pessoas contando junto quanto ela passou
    let histDia = {};
    dado.forEach(element => {
        if (histDia[element['data']] == null) {
            histDia[element['data']] = {};
            histDia[element['data']][element['mac']] = 0;
        } else {
            if (!(element['mac'] in histDia[`${element['data']}`])) {
                histDia[element['data']][element['mac']] = 0;
            }
        }
    })
    return histDia;
}


function diaLabelAudiencia() {
    let label = getDiaAudiencia();
    let valor = [];
    for (var key in label) {
        if (label.hasOwnProperty(key)) {
            //console.log(key + " -> " + label[key]);
            valor.push(key);
        }
    }
    return valor;
}

function diaDadosAudiencia() {

    let label = getDiaAudiencia();
    let valor = [];
    for (var key in label) {
        let cont = 0;
        for (var key1 in label[key]) {
            cont += 1;
        }
        valor.push(cont);
    }
    return valor;
}


function getDiaImpacto() { // Audiencia = contagem de pessoas ignorando total de veses que ela passou , Impacto = contagem total de pessoas contando junto quanto ela passou
    let valor = {};
    dado.forEach(element => {
        if (valor[`${element['data'].toLocaleDateString()}`] == null) {
            valor[`${element['data'].toLocaleDateString()}`] = 1;;
        } else {
            valor[`${element['data'].toLocaleDateString()}`] += element['impacto'];
        }
    })
    return valor;
}


function diaLabel() {
    let label = getDiaImpacto();
    let valor = [];
    for (var key in label) {
        if (label.hasOwnProperty(key)) {
            //console.log(key + " -> " + label[key]);
            valor.push(key);
        }
    }
    return valor;
}

function diaDadosImpacto() {
    let label = getDiaImpacto();
    let valor = [];
    for (var key in label) {
        if (label.hasOwnProperty(key)) {
            //console.log(key + " -> " + label[key]);
            valor.push(label[key]);
        }
    }
    return valor;
}

function getImpacto() {
    let valor = 0;
    dado.forEach(element => {
        valor += element['impacto'];
    })
    return valor;
}
function getAudiencia() {
    let valor = dado.length;
    return valor;
}

function getLocais() {
    let valor = {};
    dado.forEach(element => {
        if (!(element['local'] in valor)) {
            valor[element['local']] = 0;
        }
    })
    return valor;
}

let dadoBruto = dataGenerator()
let dado = dadoBruto;


function filtro() {
    cidades = document.getElementById("cidades").value;
    locais = document.getElementById("local").value;
    paineis = document.getElementById("painel").value;
    inicio = new Date(document.getElementById("startDate").value);
    fim = new Date(document.getElementById("endDate").value);

    dado = dadoBruto;
    dadotemp2 = dado;
    let line = {};



    if (document.getElementById("startDate").value != '') {
        dadotemp = dadotemp2;
        dadotemp2 = [];
        dadotemp.forEach(element => {
            if (element['data'] > inicio) {
                line = element;
                dadotemp2.push(line);
            }
        })
    }

    if (document.getElementById("endDate").value != '') {
        dadotemp = dadotemp2;
        dadotemp2 = [];
        dadotemp.forEach(element => {
            if (element['data'] < fim) {
                line = element;
                dadotemp2.push(line);
            }
        })
    }

    if (!(cidades == "Todos")) {
        dadotemp = dadotemp2;
        dadotemp2 = [];
        dadotemp.forEach(element => {
            if (element['cidade'] == cidades) {
                line = element;
                dadotemp2.push(line);
            }
        })
    }

    if (!(locais == "Todos")) {
        dadotemp = dadotemp2;
        dadotemp2 = [];
        dadotemp.forEach(element => {
            if (element['local'] == locais) {
                line = element;
                dadotemp2.push(line);
            }
        })
    }

    if (!(paineis == "Todos")) {
        dadotemp = dadotemp2;
        dadotemp2 = [];
        dadotemp.forEach(element => {
            if (element['painel'] == paineis) {
                line = element;
                dadotemp2.push(line);
            }
        })
    }
    if ((cidades == "Todos") && (locais == "Todos") && (paineis == "Todos") && (document.getElementById("startDate").value == '') && (document.getElementById("endDate").value == '')) {
        dado = dadoBruto;
    } else {
        dado = dadotemp2;
    }

    atualizaGrafico();
}

let data2 = {};
let data3 = {};
let data1 = {};
let data4 = {};
let chart1 = null;
let chart2 = null;
//let chart3 = null;
//let chart4 = null;

function carregaDados() {
    var impacto = getImpacto();
    var audiencia = getAudiencia();
    var audHtml = document.getElementById('audiencia');
    audHtml.innerHTML = audiencia;
    var impHtml = document.getElementById('impacto');
    impHtml.innerHTML = impacto;
    var freqHtml = document.getElementById('freq');
    var freq = Math.round((impacto / audiencia) * 100) / 100;
    freqHtml.innerHTML = freq;

    var diaSemanaAudiencia = getDiaSemanaAudiencia();
    var diaSemanaImpacto = getDiaSemanaImpacto();
    var diaImpacto = diaDadosImpacto();
    var diaAudiencia = diaDadosAudiencia();
    var semLabel = diaLabel();
    var locais = getLocais();

    var medDias = document.getElementById('medDia');
    medDias.innerHTML = semLabel.length;
    var nLocais = document.getElementById('locais');
    nLocais.innerHTML = Object.keys(locais).length;

    const color = ["#f4804f"];
    const alternativeColor = ["#2e75b5"];
    const subColor = ["#abc8e1"];

    var table = document.getElementById('tab1')
    table.innerHTML = ''
    for (var i = 0; i < semLabel.length; i++) {
        var row = `<tr>
        <td>${semLabel[i]}</td>
        <td>${diaAudiencia[i]}</td>
        <td>${diaImpacto[i]}</td>
                    </tr>`
        table.innerHTML += row
        // console.log(data[i].id)
    }
    var table2 = document.getElementById('tab2')
    sem = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado']
    table2.innerHTML = ''
    for (var i = 0; i < sem.length; i++) {
        var row = `<tr>
        <td>${sem[i]}</td>
        <td>${diaAudiencia[i]}</td>
        <td>${diaImpacto[i]}</td>
                    </tr>`
        table2.innerHTML += row
        // console.log(data[i].id)
    }

    data2 = {
        labels: ['Domingo', 'Segunda-feira', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
        datasets: [
            {
                type: 'bar',
                label: 'Audiência',
                backgroundColor: color,
                borderColor: subColor,
                data: diaSemanaAudiencia,
                tension: 0.5
            },
            {
                type: 'bar',
                label: 'Impactos',
                backgroundColor: alternativeColor,
                borderColor: subColor,
                data: diaSemanaImpacto,
                tension: 0.5
            }
        ]
    };

    //data3 = {
    //    labels: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado'],
    //    datasets: [
    //        {
    //            type: 'radar',
    //            label: 'Audiência',
    //            backgroundColor: color,
    //            data: diaSemanaAudiencia,
    //        },
    //        {
    //            type: 'radar',
    //            label: 'Impactos',
    //            backgroundColor: alternativeColor,
    //            data: diaSemanaImpacto,
    //        }
    //    ]
    //};

    data1 = {
        labels: semLabel,
        datasets: [
            {
                type: 'bar',
                label: 'Audiencia',
                backgroundColor: color,
                borderColor: subColor,
                data: diaAudiencia,
                tension: 0.5
            },
            {
                type: 'bar',
                label: 'Impacto',
                backgroundColor: alternativeColor,
                borderColor: subColor,
                data: diaImpacto,
                tension: 0.5
            }
        ]
    };

    //data4 = {
    //    labels: semLabel,
    //    datasets: [
    //        {
    //            type: 'bar',
    //            label: 'Audiencia',
    //            backgroundColor: color,
    //            borderColor: subColor,
    //            data: diaImpacto,
    //            tension: 0.5
    //        },
    //        {
    //            type: 'bar',
    //            label: 'Impacto',
    //            backgroundColor: alternativeColor,
    //            borderColor: subColor,
    //            data: diaAudiencia,
    //            tension: 0.5
    //        }
    //    ]
    //};
    var grafico1Container = document.getElementById('grafico1Container');
    if (semLabel.length > 10) {
        grafico1Container.setAttribute("style", "width:" + semLabel.length * 50 + "px")
    }else{
        grafico1Container.setAttribute("style", "width:" + semLabel.length * 90 + "px")
    }
    //var grafico3Container = document.getElementById('grafico3Container');
    //if (semLabel.length > 5) {
    //    grafico3Container.setAttribute("style", "height:" + semLabel.length * 50 + "px")
    //}

}

function atualizaGrafico() {
    carregaDados();

    chart1.data = data1;
    chart2.data = data2;
    //chart3.data = data4;
    //chart4.data = data3;
    chart1.update();
    chart2.update();
    //chart3.update();
    //chart4.update();

}


function initGraph() {
    carregaDados()

    //  \/--Carrega Cidades--\/
    let valor = [];

    dado.forEach(element => {
        if (!(valor.includes(element['cidade']))) {
            valor.push(element['cidade']);
        }
    })
    cidades = document.getElementById("cidades");
    for (var i = 0; i < valor.length; i++) {
        var row = `<option value="${valor[i]}">${valor[i]}</option>`
        cidades.innerHTML += row
    }
    //  /\--Carrega Cidades--/\
    //  \/--Carrega Local--\/
    valor = [];

    dado.forEach(element => {
        if (!(valor.includes(element['local']))) {
            valor.push(element['local']);
        }
    })
    local = document.getElementById("local");
    for (var i = 0; i < valor.length; i++) {
        var row = `<option value="${valor[i]}">${valor[i]}</option>`
        local.innerHTML += row
    }
    //  /\--Carrega Local--/\
    //  \/--Carrega painel--\/
    valor = [];

    dado.forEach(element => {
        if (!(valor.includes(element['painel']))) {
            valor.push(element['painel']);
        }
    })
    painel = document.getElementById("painel");
    for (var i = 0; i < valor.length; i++) {
        var row = `<option value="${valor[i]}">${valor[i]}</option>`
        painel.innerHTML += row
    }
    //  /\--Carrega painel--/\

    const options = {
        maintainAspectRatio: false, // default is `true`, default `aspectRatio` is 2
        animation: {
            onComplete: () => {
                delayed = true;
            },
            delay: (context) => {
                let delay = 0;
                if (context.type === 'data' && context.mode === 'default' && !delay) {
                    delay = context.dataIndex * 10 + context.datasetIndex * 100;
                }
                return delay;
            },
        },
    };

    const options2 = {
        maintainAspectRatio: false, // default is `true`, default `aspectRatio` is 2
        indexAxis: 'y',
        scales: {
            x: {
                stacked: true,
            },
            y: {
                stacked: true
            }
        },
        animation: {
            onComplete: () => {
                delayed = true;
            },
            delay: (context) => {
                let delay = 0;
                if (context.type === 'data' && context.mode === 'default' && !delay) {
                    delay = context.dataIndex * 10 + context.datasetIndex * 100;
                }
                return delay;
            },
        },
        plugins: {
            datalabels: {
                display: true,
                formatter: function (value, context) {
                    return '< ' + value;
                },
                color: function (context) {
                    return context.dataset.backgroundColor;
                },
                //color: 'rgba(255, 255, 255, 1.0)',
                backgroundColor: 'rgba(0, 0, 0, 1.0)',
                borderWidth: 0,
                borderRadius: 5,
                font: {
                    weight: 'bold'
                }
            }
        },
    };
    const options3 = {
        maintainAspectRatio: false, // default is `true`, default `aspectRatio` is 2
        legend: {
            display: false,
        },
        animation: {
            onComplete: () => {
                delayed = true;
            },
            delay: (context) => {
                let delay = 0;
                if (context.type === 'data' && context.mode === 'default' && !delay) {
                    delay = context.dataIndex * 10 + context.datasetIndex * 100;
                }
                return delay;
            },
        },
    };


    const animation = {
        onComplete: () => {
            delayed = true;
        },
        delay: (context) => {
            let delay = 0;
            if (context.type === 'data' && context.mode === 'default' && !delay) {
                delay = context.dataIndex * 10 + context.datasetIndex * 100;
            }
            return delay;
        },
    };



    const grafico1 = document.getElementById('grafico1').getContext('2d');
    chart1 = new Chart(grafico1, {
        data: data1,
        options
    });

    const grafico2 = document.getElementById('grafico2').getContext('2d');
    chart2 = new Chart(grafico2, {
        data: data2,
        options
    });

    //const grafico3 = document.getElementById('grafico3').getContext('2d');
    //chart3 = new Chart(grafico3, {
    //    data: data4,
    //    options: options2
    //});

    //const grafico4 = document.getElementById('grafico4').getContext('2d');
    //chart4 = new Chart(grafico4, {
    //    data: data3,
    //    options: options3,
    //});


    // **** Tamanho do grafico baseado na quantidade de dados ****
    if (screen.width > 1000) {
        var tam = parseInt(screen.width) - 150;

        var container1 = document.getElementById('container1');
        container1.setAttribute("style", "width:" + (tam / 2) + "px");
        var container2 = document.getElementById('container2');
        container2.setAttribute("style", "width:" + (tam / 2) + "px");
        var container3 = document.getElementById('container3');
        container3.setAttribute("style", "width:" + (tam / 2) + "px");
        var container4 = document.getElementById('container4');
        container4.setAttribute("style", "width:" + (tam / 2) + "px");
    }


}
