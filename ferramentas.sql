SELECT * from tb_accont
SELECT * from tb_empresa
SELECT * from tb_role_accont where tb_accont_id like 'b6babaad-62d7-4428-9a8a-bbf54f60dc4e'
SELECT * from tb_role
SELECT * from tb_form
SELECT * from tb_fato_dados_sensores
SELECT * from tb_docker


DELETE from tb_accont
DELETE from tb_empresa
DELETE from tb_role_accont
DELETE from tb_image
DELETE from tb_role
DELETE from tb_fato_dados_sensores
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

UPDATE tb_form
SET codigo_interno_painel = '1234 painel' where id = 'b623839f-464e-4703-bc2b-6ce3764002ca'

select * from tb_accont where email like 'empresa@email.com';

