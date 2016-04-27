CREATE TABLE peca(
	PeNro INT NOT NULL,
	PeNome VARCHAR(100) NOT NULL,
	PePreco FLOAT NOT NULL,
	Cor VARCHAR(50),
	PRIMARY KEY (PeNro)	
);

CREATE TABLE fornecedor(
	FNro INT NOT NULL,
	FNome VARCHAR(100) NOT NULL,
	FCidade VARCHAR(100) NOT NULL,
	FCateg VARCHAR(100) NOT NULL,
	PRIMARY KEY (FNro)
);

CREATE TABLE projeto(
	PNro INT NOT NULL,
	PNome VARCHAR(100) NOT NULL,
	PDuracao FLOAT NOT NULL,
	PCusto FLOAT NOT NULL,
	PRIMARY KEY (PNro)
);

CREATE TABLE fornece_para(
	PeNro INT NOT NULL,
	FNro INT NOT NULL,
	PNro INT NOT NULL,
	Quant INT NOT NULL,
	PRIMARY KEY (PeNro, FNro, PNro),
	FOREIGN KEY (PeNro) REFERENCES peca(PeNro),
	FOREIGN KEY (FNro) REFERENCES fornecedor(FNro),
	FOREIGN KEY (PNro) REFERENCES projeto(PNro)
);

INSERT INTO peca VALUES
	(1, 'Motor', 1000.0, 'Prata'),
	(2, 'Engrenagem', 2000.0, 'Chumbo'),
	(3, 'Turbina', 5000.0, 'Amarelo'),
	(4, 'Lataria', 3000.0, 'Azul');

INSERT INTO fornecedor VALUES
	(1, 'Vulcan', 'Piracicaba', 'Cat1'),
	(2, 'Pedro', 'Campinas', 'Cat2'),
	(3, 'Ronaldo', 'Londrina', 'Cat3'),
	(4, 'Tais', 'Curitiba', 'Cat4');

INSERT INTO projeto VALUES
	(1, 'P1',  90, 20000),
	(2, 'P2', 180, 300000),
	(3, 'P3', 360, 400000),
	(4, 'P4', 400, 500000),
	(5, 'P5', 500, 700000);

INSERT INTO fornece_para VALUES
	(1, 2, 3, 20),
	(1, 3, 2, 30),
	(3, 1, 2, 40);