
-- 1) Liste a quantidade de canções existem para cada gênero musical, agrupando a consulta por
-- gênero e ordenando da maior quantidade para a menor.

SELECT COUNT(`cancoes`.`id`) AS `cancoes_genero`, `generos`.`nome` FROM `cancoes`
INNER JOIN `generos` 
ON `generos`.`id` = `cancoes`.`id_genero`
GROUP BY `generos`.`nome`
ORDER BY COUNT(`cancoes`.`id`) DESC;

-- 2) Liste a quantidade de canções existentes para gênero musical, agrupando por gênero.
-- Exiba apenas os genêros que tem mais de 10 canções.
SELECT COUNT(`cancoes`.`id`) AS `cancoes_genero`, `generos`.`nome` FROM `cancoes`
INNER JOIN `generos` 
ON `generos`.`id` = `cancoes`.`id_genero`
GROUP BY `generos`.`nome`
HAVING COUNT(`cancoes`.`id`) > 10
ORDER BY COUNT(`cancoes`.`id`) DESC;

-- 3) Utilizando as tabelas clientes e faturas, liste os países,a quantidade de clientes e a
-- soma das faturas por país,ordenando do maior para o menor, limitando a consulta a 7 registros.
SELECT `clientes`.`pais`, COUNT(`clientes`.`id`), SUM(`faturas`.`valor_total`)
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`
GROUP BY `faturas`.`pais_cobranca`
ORDER BY SUM(`faturas`.`valor_total`) DESC
LIMIT 7;