SELECT * from tb_accont
SELECT * from tb_empresa
SELECT * from tb_role_accont
SELECT * from tb_role
SELECT * from tb_form
SELECT * from tb_fato_dados_sensores
SELECT * from tb_docker


DELETE from tb_accont
DELETE from tb_empresa
DELETE from tb_role_accont
DELETE from tb_image
DELETE from tb_role
DELETE from tb_form


DROP TABLE tb_accont
DROP TABLE tb_empresa
DROP TABLE tb_role_accont
DROP TABLE tb_image
DROP TABLE tb_role
DROP TABLE tb_form
DROP TABLE tb_fato_dados_sensores
DROP TABLE tb_docker

SELECT COUNT(*) as'Total de audiencia' from tb_fato_dados_sensores WHERE cidade like 'Curitiba';


select * from tb_accont where email like 'empresa@email.com';

