-- Apresente uma lista de todas as categorias.
SELECT * FROM `emarket`.`categorias`;

-- Como as categorias não possuem imagens, obtenha uma lista de Categoria Nom e Descrição.
SELECT `CategoriaNombre`,`Descripcion` FROM `categorias`;

-- Obtenha uma lista de produtos.
SELECT `productoNombre` FROM `productos`;

-- Existem produtos descontinuados? 
SELECT `Discontinuado` FROM `productos`;

-- Você deve se encontrar com o Fornecedor 8. Quais produtos você fornece?
SELECT `productoNombre` FROM `productos` WHERE `proveedorID` = 8;

-- Apresente todos os produtos cujo preço unitário está entre 10 e 22.
SELECT * FROM `productos` WHERE `precioUnitario`BETWEEN 10 AND 22;

-- Defina que um produto deve ser encomendado ao fornecedor, se suas unidades em estoque forem inferiores ao Nível de Reordenação.
SELECT `ProductoNombre`  FROM `productos` WHERE `UnidadesStock` < `NivelReorden`;
SELECT *  FROM `productos` WHERE `UnidadesStock` < `NivelReorden`;

-- Detalhe todos os produtos listados acima, considerando que há Unidades Encomendadas iguais a zero.
SELECT * FROM `productos` WHERE  `UnidadesStock` < `NivelReorden` AND `UnidadesPedidas`;

-- *CLIENTES
-- 1)	Obtenha uma lista de todos os clientes com Contato, Empresa,Título, País. Classifique a listagem por País.
SELECT * FROM `clientes` ORDER BY `pais`;
SELECT `Contacto`, `Compania`, `Titulo`, `Pais` FROM `clientes` ORDER BY `pais`;

-- 2)	Apresente todos os clientes que têm o título "Proprietário".  
SELECT * FROM `clientes` WHERE `Titulo`= "owner";

-- 3)	A secretária que atendia um cliente não se lembra do nome dele. Ela só sabe que começa com "C". Como podemos ajudá-la a obter uma lista de todos os contatos que começam com C?
SELECT `contacto` FROM `clientes` WHERE `contacto` LIKE "c%";

-- * CONTAS
-- 1)	Obtenha uma lista de todas as faturas, classificadas pela data da fatura upstream.
SELECT * FROM `facturas` ORDER BY `fechaFactura`;

-- 2)	Uma lista de faturas com o país de transporte "EUA" agora é necessária, e seu e-mail (Envio) é diferente de 3. Como você pode apresentá-la?
SELECT * FROM `facturas` WHERE `PaisEnvio`= "EUA" AND `EnvioVia` <> 3;

-- 3)	O cliente 'GOURL' fez um pedido?
SELECT * FROM `facturas`WHERE `ClienteID` = 'GOURL';

-- 4)	Exiba todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT * FROM `facturas` WHERE `EmpleadoID` IN (2, 3, 5, 8, 9) ORDER BY `EmpleadoID`;

--
