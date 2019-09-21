CREATE SCHEMA PRESCRICAO;
GO;

CREATE TABLE PRESCRICAO.Medico (
    numSNS          INT,
    nome            VARCHAR(30) NOT NULL,
    especialidade   VARCHAR(30),
    PRIMARY KEY (numSNS)
);

CREATE TABLE PRESCRICAO.Paciente (
    numUtente       INT,
    nome            VARCHAR(30) NOT NULL,
    dataNasc        DATE NOT NULL,
    endereco        VARCHAR(30) NOT NULL,
    PRIMARY KEY (numUtente)
);

CREATE TABLE PRESCRICAO.Farmacia (
    nome            VARCHAR(30) NOT NULL,
    telefone        VARCHAR(9),
    endereco        VARCHAR(30),
    PRIMARY KEY (nome)
);

CREATE TABLE PRESCRICAO.Farmaceutica (
    numReg          INT,
    nome            VARCHAR(30) NOT NULL,
    endereco        VARCHAR(30),
    PRIMARY KEY (numReg)
);

CREATE TABLE PRESCRICAO.Farmaco (
    numRegFarm      INT,
    nome            VARCHAR(30) NOT NULL,
    formula         VARCHAR(9) NOT NULL,
    PRIMARY KEY (numRegFarm),
    FOREIGN KEY (numRegFarm) REFERENCES PRESCRICAO.Farmaceutica(numReg)
);

CREATE TABLE PRESCRICAO.Prescricao (
    numPresc        INT,
    numUtente       INT NOT NULL,
    numMedico       INT NOT NULL,
    farmacia        VARCHAR(30) NOT NULL,
    dataProc        DATE NOT NULL,
    PRIMARY KEY (numPresc),
    FOREIGN KEY(numMedico) REFERENCES PRESCRICAO.Medico(numSNS),
    FOREIGN KEY(numUtente) REFERENCES PRESCRICAO.Paciente(numUtente)
);

CREATE TABLE PRESCRICAO.Presc_Farmaco (
    numPresc        INT,
    numRegFarm      INT NOT NULL,
    nomeFarmaco     VARCHAR(30) NOT NULL,
    PRIMARY KEY (numPresc, NumRegFarm, nomeFarmaco),
    FOREIGN KEY (numRegFarm) REFERENCES PRESCRICAO.Farmaco(numReg),
    FOREIGN KEY (numPresc) REFERENCES PRESCRICAO.Prescricao(numPresc),
    FOREIGN KEY (nomeFarmaco) REFERENCES PRESCRICAO.Farmaco(nome)
);