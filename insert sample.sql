declare @cliente as varchar(100) = '48797f87-724c-4f06-88fc-1bef9af398d5'
insert into
 tb_fato_dados_sensores
    (id,empresa_id,data,mac, lugar, cidade, painel, impacto)
VALUES
    ( NEWID(),
        @cliente,
        '2022-05-04',
        '05937',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-02',
        '179929',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-02',
        '26683',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-02',
        '389446',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-02',
        '472974',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '033345',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '165795',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '274026',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '384302',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '45399',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '597314',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '675762',
        'Rua Joaquim N23',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '72683',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-03',
        '814449',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '030493',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '190505',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '239518',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '336575',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '482240',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '525650',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '68487',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '739981',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-04',
        '831531',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-05',
        '029887',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-05',
        '177099',
        'Rua Joaquim N23',
        'Florianópolis',
        'Totem',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-05',
        '237286',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-05',
        '355565',
        'Rua Rio Grande do Sul N199',
        'Florianópolis',
        'Totem',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-06',
        '010466',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-06',
        '169807',
        'Avenida Paulista N98',
        'Curitiba',
        'Totem',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-06',
        '296752',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-06',
        '352130',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '019680',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '167524',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '234440',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '359295',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '476796',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '567960',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '636291',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '745839',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Outdoor',
        6
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '857365',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '980311',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-07',
        '1043798',
        'Rua Joaquim N23',
        'Florianópolis',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-08',
        '088188',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-08',
        '167153',
        'Rua Joaquim N23',
        'Curitiba',
        'Outdoor',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-09',
        '074245',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-09',
        '113759',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '041614',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '18384',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '257443',
        'Rua Joaquim N23',
        'São Paulo',
        'Totem',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '367700',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '438249',
        'Rua Joaquim N23',
        'Curitiba',
        'Led',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-10',
        '531716',
        'Avenida Paulista N98',
        'Curitiba',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '032543',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        1
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '178569',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '259898',
        'Avenida Paulista N98',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '383945',
        'Avenida Paulista N98',
        'São Paulo',
        'Totem',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '42884',
        'Rua Rio Grande do Sul N199',
        'Curitiba',
        'Totem',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-11',
        '537277',
        'Rua Joaquim N23',
        'Florianópolis',
        'Led',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-12',
        '028333',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-12',
        '178618',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        4
    ),
    (
        NEWID(), @cliente,
        '2022-05-13',
        '098960',
        'Avenida Paulista N98',
        'Florianópolis',
        'Outdoor',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-14',
        '093820',
        'Avenida Paulista N98',
        'São Paulo',
        'Outdoor',
        3
    ),
    (
        NEWID(), @cliente,
        '2022-05-15',
        '073630',
        'Rua Joaquim N23',
        'São Paulo',
        'Outdoor',
        5
    ),
    (
        NEWID(), @cliente,
        '2022-05-15',
        '141727',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Outdoor',
        6
    ),
    (
        NEWID(), @cliente,
        '2022-05-15',
        '228695',
        'Rua Rio Grande do Sul N199',
        'São Paulo',
        'Led',
        2
    ),
    (
        NEWID(), @cliente,
        '2022-05-15',
        '331927',
        'Rua Joaquim N23',
        'São Paulo',
        'Led',
        3
    )
   