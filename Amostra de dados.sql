
declare @cliente as varchar(100) =  (select id from tb_empresa where nome_fantasia like '%<nome_da_empresa>%') --'2c8511fb-870a-4beb-ad0d-14dc9fcc10da'
insert into
 tb_fato_dados_sensores
    (id,empresa_id,data,mac, lugar, cidade, painel, impacto)
values
    (
        NEWID(),
        @cliente,
        '2022-05-02',
        '05937',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-02',
        '179929',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-02',
        '26683',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-02',
        '389446',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-02',
        '472974',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '033345',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '165795',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '274026',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '384302',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '45399',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '597314',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '675762',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '72683',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-03',
        '814449',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '030493',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '190505',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '239518',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '336575',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '482240',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '525650',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '68487',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '739981',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-04',
        '831531',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-05',
        '029887',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-05',
        '177099',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-05',
        '237286',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-05',
        '355565',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-06',
        '010466',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-06',
        '169807',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-06',
        '296752',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-06',
        '352130',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '019680',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '167524',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '234440',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '359295',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '476796',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '567960',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '636291',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '745839',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '857365',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '980311',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-07',
        '1043798',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-08',
        '088188',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-08',
        '167153',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-09',
        '074245',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-09',
        '113759',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '041614',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '18384',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '257443',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '367700',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '438249',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-10',
        '531716',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '032543',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '178569',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '259898',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '383945',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '42884',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-11',
        '537277',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-12',
        '028333',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-12',
        '178618',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-13',
        '098960',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-14',
        '093820',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '073630',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '141727',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '228695',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '331927',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '437837',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '574017',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '695532',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '734300',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-15',
        '857390',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-16',
        '043124',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-16',
        '117980',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-16',
        '286290',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '096774',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '152534',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '224754',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '380460',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '482770',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '548760',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '627700',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '722045',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '813121',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '951601',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-17',
        '1062267',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-18',
        '079155',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-18',
        '175119',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-19',
        '053820',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-19',
        '119840',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-19',
        '215362',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-20',
        '068778',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-20',
        '152587',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-20',
        '243575',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-20',
        '359993',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '051524',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '155735',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '239113',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '36237',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '416688',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-21',
        '517188',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-22',
        '014404',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-22',
        '187848',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-22',
        '283640',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-22',
        '366204',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '037282',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '118790',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '21525',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '361746',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '475491',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '581315',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '681450',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-23',
        '758707',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '060602',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '194149',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '215074',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '321073',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '459164',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-24',
        '538693',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '046165',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '141418',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '258728',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '313441',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '431742',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '511503',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '696597',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-25',
        '746697',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-26',
        '096036',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-26',
        '152022',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-26',
        '277910',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-26',
        '318905',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-27',
        '042222',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-27',
        '144618',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-27',
        '25204',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-27',
        '338886',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '080280',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '121209',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '25884',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '346013',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '467874',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '587453',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '63365',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '767346',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-28',
        '898766',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '034262',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '194783',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '28587',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '346307',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '449494',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '57855',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '635912',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '769239',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '867586',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-29',
        '995486',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '055207',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '127631',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '239571',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '330606',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '428078',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '560664',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '673944',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '729072',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-30',
        '881914',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-31',
        '018250',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-31',
        '144657',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-05-31',
        '224623',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-01',
        '098128',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-01',
        '185093',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-01',
        '241053',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '056717',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '195715',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '247135',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '347394',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '489000',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '590352',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '689635',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-02',
        '739770',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '015926',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '189442',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '265177',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '38252',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '460544',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '53588',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '64749',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '776077',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '890325',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '988514',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-03',
        '1040781',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '012149',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '110602',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '23013',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '37959',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '456354',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '525648',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '614450',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '771153',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-04',
        '845450',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '030782',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '122321',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '21134',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '317688',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '445936',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '585502',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '666680',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '717536',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '883288',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-05',
        '991529',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-06',
        '08261',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-06',
        '133881',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-06',
        '2334',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-06',
        '372117',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-06',
        '498123',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-07',
        '080273',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-07',
        '128352',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-07',
        '259515',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-07',
        '327018',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-08',
        '019143',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-08',
        '115143',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-09',
        '047134',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '072601',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '196604',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '229534',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '386180',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '454121',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '569141',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '612337',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-10',
        '7476',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-11',
        '083922',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-11',
        '133201',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-11',
        '250303',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-11',
        '349807',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-11',
        '424494',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-12',
        '055036',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-12',
        '148762',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-12',
        '288971',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '061822',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '170764',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '286179',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '368928',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '494980',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-13',
        '525391',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '065446',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '122037',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '24698',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '380690',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '471127',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '532724',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '679282',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '758643',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-14',
        '822961',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '066416',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '171696',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '234726',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '380934',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '457313',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '598051',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '653775',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '795150',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-15',
        '830053',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-16',
        '045839',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-16',
        '176612',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-16',
        '234031',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-17',
        '032569',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-17',
        '167751',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-17',
        '2392',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-17',
        '36247',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-18',
        '070747',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-18',
        '162615',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-18',
        '273228',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-18',
        '357969',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-18',
        '458556',
        'Avenida Paulista N98',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-19',
        '089859',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-19',
        '187463',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-19',
        '260217',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '040193',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '156333',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '275341',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '388739',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '429767',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '598875',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-20',
        '62466',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '063743',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '153594',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '285551',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '371977',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '468553',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '542682',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-21',
        '684017',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-22',
        '096398',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-22',
        '181682',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-22',
        '218062',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-22',
        '323206',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '041215',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '145749',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '29358',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '356750',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '470149',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '535973',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-23',
        '691076',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-24',
        '025227',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-24',
        '127178',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-25',
        '03242',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-25',
        '121408',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-25',
        '253513',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-25',
        '389234',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-26',
        '076876',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-26',
        '113423',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-26',
        '238748',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-27',
        '03839',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-27',
        '161676',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-27',
        '213484',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-28',
        '047178',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-28',
        '146385',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-29',
        '046872',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-29',
        '135081',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-29',
        '237643',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-29',
        '344909',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-30',
        '049374',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-30',
        '134296',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-30',
        '216931',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-30',
        '344149',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-06-30',
        '431000',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '017370',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '167716',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '286732',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '334688',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '455222',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '559363',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '658590',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '734851',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '84658',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-01',
        '929658',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-02',
        '037262',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-02',
        '126746',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-02',
        '247704',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-03',
        '094144',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-03',
        '132264',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-03',
        '223831',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-04',
        '081158',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-04',
        '193656',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-04',
        '212508',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-04',
        '322616',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-04',
        '429168',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '014169',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '170422',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '281720',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '389493',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '424860',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '528303',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '673420',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '744307',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-05',
        '89756',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '052009',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '167689',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '264793',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '33223',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '427169',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '554977',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '635852',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-06',
        '744012',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-07',
        '047589',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-07',
        '182174',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-07',
        '211774',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-07',
        '354887',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-08',
        '090887',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-08',
        '145936',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-08',
        '232898',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-08',
        '344267',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-08',
        '472355',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-09',
        '083517',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-09',
        '147001',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-09',
        '283907',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-09',
        '31786',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-09',
        '480798',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '074384',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '187985',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '278455',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '366080',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '41157',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-10',
        '56379',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-11',
        '068069',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-11',
        '181471',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-11',
        '273277',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-11',
        '328218',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-11',
        '434561',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-12',
        '032211',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-12',
        '194805',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-12',
        '216043',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-12',
        '386602',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-12',
        '470761',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-13',
        '025400',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-13',
        '176783',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-13',
        '270641',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-13',
        '314842',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-13',
        '499350',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-14',
        '06770',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-14',
        '137348',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-15',
        '091117',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-15',
        '171477',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-15',
        '269469',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-15',
        '388602',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-15',
        '441569',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-16',
        '044159',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-16',
        '12706',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-16',
        '219930',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-16',
        '350565',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '076402',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '143062',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '291987',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '357437',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '495042',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '529267',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '622552',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '760190',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '866391',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-17',
        '925239',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '028627',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '195765',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '24637',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '34641',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '46106',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '533133',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '673983',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '799909',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '862026',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '987672',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-18',
        '1052525',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-19',
        '066371',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-19',
        '138184',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-19',
        '286002',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-19',
        '353004',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '075729',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '16378',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '26105',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '36370',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '495868',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '598222',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '672703',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-20',
        '782418',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-21',
        '026588',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-21',
        '190988',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-21',
        '210900',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-21',
        '364101',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-21',
        '420707',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '069471',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '181163',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '261011',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '398810',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '484611',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-22',
        '567692',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '05443',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '198388',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '267492',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '397543',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '419711',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '546931',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '685406',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '742560',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-23',
        '870454',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '059969',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '189396',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '265898',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '340752',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '493399',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-24',
        '598414',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-25',
        '08313',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-25',
        '191233',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-26',
        '091724',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-26',
        '169725',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '051324',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '191005',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '275388',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '394451',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '429338',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '551552',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '673312',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '732664',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-27',
        '816511',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '064688',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '131293',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '218151',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '348449',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '47657',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '532492',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '667185',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-28',
        '718233',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '072514',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '112520',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '265358',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '362754',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '448884',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '523445',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '665661',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '768157',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '868223',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-29',
        '936892',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '094429',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '18038',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '265978',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '360808',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '476173',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '537794',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '678566',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-30',
        '730847',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-31',
        '050350',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-31',
        '142099',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-07-31',
        '26191',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '042798',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '199795',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '210825',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '326864',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '41246',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '529437',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-01',
        '621940',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-02',
        '013884',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-02',
        '128310',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-02',
        '241328',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '072639',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '188298',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '232775',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '364044',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '472441',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '56584',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-03',
        '639084',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-04',
        '011715',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-04',
        '131797',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-04',
        '222131',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-04',
        '372717',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-04',
        '477777',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-05',
        '045057',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-05',
        '116910',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-05',
        '251991',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-05',
        '335828',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-06',
        '07699',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-06',
        '16311',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-06',
        '229599',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-06',
        '371302',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '032707',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '128496',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '272168',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '358844',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '49378',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '573879',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '636693',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '71497',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-07',
        '821827',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '027022',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '13953',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '26015',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '3100',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '435616',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '563180',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '656183',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '773881',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '830501',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-08',
        '968733',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '018174',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '164990',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '248325',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '369987',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '462226',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-09',
        '525434',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-10',
        '032615',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-10',
        '113231',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-10',
        '272776',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-11',
        '060964',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-11',
        '126259',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-11',
        '274881',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-11',
        '324820',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '046151',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '126031',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '294877',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '359742',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '469008',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '516002',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '651688',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '784797',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '899597',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '958894',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-12',
        '1071421',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-13',
        '075896',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-13',
        '130344',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-13',
        '281760',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-14',
        '072007',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-14',
        '131292',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-14',
        '24220',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '057580',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '179549',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '218600',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '327449',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '472360',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '520916',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '626117',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '798511',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '824326',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-15',
        '961105',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '055606',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '135055',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '24693',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '369368',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '415226',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-16',
        '570556',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-17',
        '070847',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-17',
        '149683',
        'Avenida Paulista N98',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-17',
        '272645',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-17',
        '389004',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '063663',
        'Avenida Paulista N98',
        'Florianópolis',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '156392',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '235271',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '33011',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '478746',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '554338',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '616326',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '775398',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '870560',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-18',
        '964146',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '080264',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '116455',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '271612',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '398956',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '457208',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '569009',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-19',
        '686265',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-20',
        '063405',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-20',
        '142574',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-20',
        '269496',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-20',
        '397304',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '048300',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '115643',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '212453',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '398867',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '47997',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '563408',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-21',
        '68351',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '072794',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '175721',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '255884',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '341472',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '412023',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '524292',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-22',
        '625959',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '074137',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '127484',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '231347',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '323556',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '466865',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '513838',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-23',
        '638119',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '059727',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '194224',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '239489',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '326043',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '417405',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '520175',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '638856',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '764759',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '873047',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-24',
        '985172',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '029765',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '173537',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '26251',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '314619',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '482698',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '540618',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '616159',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '750574',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '822832',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-25',
        '99265',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-26',
        '026502',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-26',
        '133338',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-27',
        '091596',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-27',
        '196345',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-27',
        '287490',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '010122',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '143511',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '264201',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '383635',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '491665',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '5842',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '631665',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-28',
        '713038',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '047299',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '198994',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '217588',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '317802',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '470666',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '544085',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-29',
        '662828',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '088599',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '184733',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '230370',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '341613',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '463847',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '585500',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '648662',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '730384',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-30',
        '894788',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '077877',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '158203',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '282163',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '392569',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '450046',
        'Avenida Paulista N98',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '55951',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '636537',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '749332',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '863328',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-08-31',
        '921103',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-01',
        '08715',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-02',
        '07299',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-02',
        '185631',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '062291',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '14274',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '242175',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '315746',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '497713',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '58876',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '639570',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '779876',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '822137',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-03',
        '918668',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '043456',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '159562',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '219506',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '375736',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '447825',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-04',
        '533952',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '014871',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '119515',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '265952',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '365392',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '462231',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '540970',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '693774',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-05',
        '799111',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '061700',
        'Avenida Paulista N98',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '178146',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '245085',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '356284',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '464763',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-06',
        '579331',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-07',
        '039141',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-07',
        '188525',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '077217',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '188461',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '28678',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '378217',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '412469',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '537581',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '619296',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '731333',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '824217',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '917184',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-08',
        '1075210',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '077910',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '14241',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '23470',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '387821',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '444080',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '539217',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '684740',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '793859',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-09',
        '89535',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '011615',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '17163',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '256775',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '317825',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '471807',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-10',
        '530974',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '029513',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '150745',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '286137',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '310208',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '474044',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-11',
        '57702',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '046651',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '189475',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '262415',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '352881',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '424028',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '564098',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-12',
        '617416',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '085925',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '127476',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '276170',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '397713',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '426866',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '566902',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-13',
        '612804',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '030901',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '112408',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '231700',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '347519',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '49617',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-14',
        '545994',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '020867',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '133684',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '2495',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '319469',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '466212',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '555749',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-15',
        '68991',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '033988',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '163700',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '241300',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '382096',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '433287',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '555626',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '648968',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '792636',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '881238',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-16',
        '96582',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '026138',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '14293',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '226546',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '337534',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '484910',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '548757',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '696654',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-17',
        '742492',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '035511',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '118378',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '233335',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '378356',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '492011',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '575566',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '686924',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '788037',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-18',
        '815238',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '084915',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '171131',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '290384',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '353509',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '427478',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '572655',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '64243',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-19',
        '735365',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '039447',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '194433',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '273360',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '318603',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '446826',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '574821',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-20',
        '663846',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '070851',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '182386',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '26064',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '322042',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '413033',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '572750',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '610210',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-21',
        '775634',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-22',
        '011637',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-22',
        '152595',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-22',
        '296358',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '028269',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '117201',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '262570',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '337953',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '486641',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '562061',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '682484',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-23',
        '710581',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-24',
        '099675',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-24',
        '197179',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-24',
        '213316',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-24',
        '382742',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-24',
        '422339',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '068739',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '113154',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '212271',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '399333',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '457296',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-25',
        '585213',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '010204',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '131887',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '262409',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '316683',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '424651',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '581108',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '640825',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-26',
        '748714',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '065847',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '116841',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '25036',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '32599',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '478485',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '564934',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '650730',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '762961',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-27',
        '868693',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-28',
        '069497',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-28',
        '150853',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-29',
        '088611',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-29',
        '161122',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-29',
        '229964',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-29',
        '315139',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-29',
        '457046',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-30',
        '064314',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-09-30',
        '131714',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '058776',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '183655',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '215202',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '374576',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '494783',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '510125',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '64209',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-01',
        '786288',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '043782',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '123956',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '274255',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '342405',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '437258',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '596970',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '617453',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-02',
        '72930',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '063133',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '132365',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '244809',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '322318',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '473367',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '527965',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '627525',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '793685',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '86415',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-03',
        '930490',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-04',
        '096986',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-04',
        '145196',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '053033',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '129468',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '258185',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '323255',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '442309',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '515096',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '628669',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '776223',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '835689',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-05',
        '913160',
        'Avenida Paulista N98',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '016111',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '119217',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '299564',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '366503',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '496630',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '585237',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '692059',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-06',
        '76421',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-07',
        '066310',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '059938',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '19248',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '22423',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '388891',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '467927',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '519762',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-08',
        '642988',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-09',
        '076276',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-09',
        '186372',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-09',
        '21265',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-09',
        '331725',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '029991',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '123257',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '293344',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '384996',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '41001',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '57518',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '661060',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-10',
        '731424',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '091259',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '196553',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '25159',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '348788',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '481581',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-11',
        '595825',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '087413',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '142713',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '27367',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '346762',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '466357',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '561636',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '667003',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-12',
        '791141',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '046681',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '139674',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '231040',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '366752',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '455767',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '523802',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '693359',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '751234',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-13',
        '830545',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '035870',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '112223',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '237223',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '362310',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '495783',
        'Avenida Paulista N98',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-14',
        '585526',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '083947',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Outdoor',
        6
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '114275',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '229412',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '370620',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '476167',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-15',
        '559571',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(),
        @cliente,
        '2022-10-16',
        '023586',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    )
    
