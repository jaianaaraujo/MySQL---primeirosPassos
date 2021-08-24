
SELECT 
`generos`.`nome` AS `Genero`,
`cancoes`.`nome` AS `cancao`,
`tipos_de_arquivo`.`nome` AS `tipo`
FROM `generos`
INNER JOIN `cancoes`
ON   `generos`.`id` = `cancoes`.`id`          -- Quando se tem Inner Join existe a clausula ON
INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` =
`tipos_de_arquivo`.`id`;




-- FUNÇÃO DE CONCATENAÇÃO 
-- Ex: juntar o nome e o sobrenome 

SELECT DISTINCT 
CONCAT(`c`.`nome`, " ", `c`.`sobrenome`),
`f`.`cidade_cobranca`
-- E para dar um espaço entre o nome e o sobrenome, colocamos aspas duplas 
FROM `clientes` AS `c`
-- Nome e sobrenome da tabela de faturas
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`;


