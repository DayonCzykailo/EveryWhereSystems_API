



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
        return 'Praça de Alimentação';
    }
    if (i == 2) {
        return 'Entrada Rua';
    }
    if (i == 3) {
        return 'Entrada Estacionamento';
    }
}


function dataGenerator() {
    let line = {};
    let dado = [];
    let maxDataDia = 0;
    let range = getDates(new Date('2021-01-02'), new Date('2021-02-02'));
    range.forEach(element => {
        maxDataDia = Math.round(randGenerator(10));
        for (let i = 0; i < maxDataDia; i++) {
            line = { 'data': element, 'mac': `${i}${Math.round(randGenerator(99999))}`, 'local': locaisGenerator(), 'cidade': 'Curitiba', 'painel': 'indoor', 'impacto': Math.round(randGenerator(3)) }
            dado.push(line);
        }
    })
    
    return (dado);
}

//let options = {
//    year: "numeric",
//    month: "long",
//    weekday: "long",
//    hour: "numeric",
//    minute: "numeric",
//}
//data.toLocaleDateString()
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

let dado = dataGenerator()

function initGraph() {
    let impacto = getImpacto();
    let audiencia = getAudiencia();
    let audHtml = document.getElementById('audiencia');
    audHtml.innerHTML = audiencia;
    let impHtml = document.getElementById('impacto');
    impHtml.innerHTML = impacto;
    let freqHtml = document.getElementById('freq');
    let freq = Math.round((impacto / audiencia) * 100) / 100;
    freqHtml.innerHTML = freq;

    let diaSemanaAudiencia = getDiaSemanaAudiencia();
    let diaSemanaImpacto = getDiaSemanaImpacto();
    let diaImpacto = diaDadosImpacto();
    let diaAudiencia = diaDadosAudiencia();
    let semLabel = diaLabel();
    let locais = getLocais();

    let medDias = document.getElementById('medDia');
    medDias.innerHTML = semLabel.length;
    let nLocais = document.getElementById('locais');
    nLocais.innerHTML = Object.keys(locais).length;

    const color = ["#f4804f"];
    const alternativeColor = ["#2e75b5"];
    const subColor = ["#abc8e1"];

    const data2 = {
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

    const data3 = {
        labels: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado'],
        datasets: [
            {
                type: 'radar',
                label: 'Audiência',
                backgroundColor: color,
                data: diaSemanaAudiencia,
            },
            {
                type: 'radar',
                label: 'Impactos',
                backgroundColor: alternativeColor,
                data: diaSemanaImpacto,
            }
        ]
    };

    const data1 = {
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

    const data4 = {
        labels: semLabel,
        datasets: [
            {
                type: 'bar',
                label: 'Audiencia',
                backgroundColor: color,
                borderColor: subColor,
                data: diaImpacto,
                tension: 0.5
            },
            {
                type: 'bar',
                label: 'Impacto',
                backgroundColor: alternativeColor,
                borderColor: subColor,
                data: diaAudiencia,
                tension: 0.5
            }
        ]
    };

    const options = {
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
                    console.log(value);
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
    const chart1 = new Chart(grafico1, {
        data: data1,
        options
    });

    const grafico2 = document.getElementById('grafico2').getContext('2d');
    const chart2 = new Chart(grafico2, {
        data: data2,
        options
    });

    const grafico3 = document.getElementById('grafico3').getContext('2d');
    const chart3 = new Chart(grafico3, {
        data: data4,
        options: options2
    });

    const grafico4 = document.getElementById('grafico4').getContext('2d');
    const chart4 = new Chart(grafico4, {
        data: data3,
        options: options3,
    });

}
