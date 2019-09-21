CREATE SCHEMA GEST_STOCK;
GO;

CREATE TABLE GEST_STOCK.TipoFornecedor (
    codigo      INT,
    designacao  VARCHAR(30),
    PRIMARY KEY (codigo)
);

CREATE TABLE GEST_STOCK.Fornecedor (
    nif         VARCHAR(9),
    nome        VARCHAR(30) NOT NULL,
    fax         VARCHAR(9)  NOT NULL,
    endereco    VARCHAR(30),
    condpag     INT NOT NULL,      
    tipo        INT NOT NULL,
    PRIMARY KEY (nif),
    FOREIGN KEY (codigo) REFERENCES GEST_STOCK.TipoFornecedor(codigo)
);

CREATE TABLE GEST_STOCK.Produto (
    codigo      INT,
    nome        VARCHAR(20) NOT NULL,
    preco       DECIMAL(8,2) NOT NULL,
    iva         INT NOT NULL,
    unidades    INT NOT NULL,
    PRIMARY KEY(codigo),    
    FOREIGN KEY (codigo) REFERENCES GEST_STOCK.TipoFornecedor(codigo)
);

CREATE TABLE GEST_STOCK.Encomenda (
    numero      INT,      
    [data]      DATE NOT NULL,
    fornecedor  INT NOT NULL,
    PRIMARY KEY (numero),
    FOREIGN KEY (fornecedor) REFERENCES GEST_STOCK.Fornecedor(nif)
);

CREATE TABLE GEST_STOCK.Item (
    numEnc      INT,
    codProd     INT NOT NULL,
    unidades    INT NOT NULL,
    PRIMARY KEY (numEnc, codProd),
    FOREIGN KEY (numEnc) REFERENCES GEST_STOCK.Encomenda(numero),
    FOREIGN KEY (codProd) REFERENCES GEST_STOCK.Produto(codigo)
);

INSERT INTO GEST_STOCK.TipoFornecedor VALUES
(101,'Carnes'),
(102,'Laticinios'),
(103,'Frutas e Legumes'),
(104,'Mercearia'),
(105,'Bebidas'),
(106,'Peixe'),
(107,'Detergentes');

INSERT INTO GEST_STOCK.Fornecedor VALUES
(509111222,'LactoSerrano',234872372,NULL,60,102),
(509121212,'FrescoNorte',221234567,'Rua do Complexo Grande - Edf 3',90,102),
(509294734,'PinkDrinks',2123231732,'Rua Poente 723',30,105),
(509827353,'LactoSerrano',234872372,NULL,60,102),
(509836433,'LeviClean',229343284,'Rua Sol Poente 6243',30,107),
(509987654,'MaduTex',234873434,'Estrada da Cincunvalacao 213',30,104),
(590972623,'ConservasMac', 234112233,'Rua da Recta 233',30,104);

INSERT INTO GEST_STOCK.Produto VALUES 
(10001,'Bife da Pa', 8.75,23,125),
(10002,'Laranja Algarve',1.25,23,1000),
(10003,'Pera Rocha',1.45,23,2000),
(10004,'Secretos de Porco Preto',10.15,23,342),
(10005,'Vinho Rose Plus',2.99,13,5232),
(10006,'Queijo de Cabra da Serra',15.00,23,3243),
(10007,'Queijo Fresco do Dia',0.65,23,452),
(10008,'Cerveja Preta Artesanal',1.65,13,937),
(10009,'Lixivia de Cor', 1.85,23,9382),
(10010,'Amaciador Neutro', 4.05,23,932432),
(10011,'Agua Natural',0.55,6,919323),
(10012,'Pao de Leite',0.15,6,5434),
(10013,'Arroz Agulha',1.00,13,7665),
(10014,'Iogurte Natural',0.40,13,998);

INSERT INTO GEST_STOCK.ENCOMENDA VALUES 
(1,2015-03-03,509111222),
(2,2015-03-04,509121212),
(3,2015-03-05,509987654),
(4,2015-03-06,509827353),
(5,2015-03-07,509294734),
(6,2015-03-08,509836433),
(7,2015-03-09,509121212),
(8,2015-03-10,509987654),
(9,2015-03-11,509836433),
(10,2015-03-12,509987654);
