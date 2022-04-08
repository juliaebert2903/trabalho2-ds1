CREATE TABLE usuario {
    id_usuario int not null AUTO_INCREMENT,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha varchar(50) not null,
    primary key (id_usuario)
}

INSERT INTO (nome, email, senha) VALUES
    ('Julia', 'julia@gis.com', '1234'),
    ('Luan', 'luan@gis.com', '5678'),
    ('Andre', 'andre@gis.com', '12345'),
    ('Amanda', 'amanda@gis.com', '67890'),
    ('Leon', 'leon@gis.com', '24680'),
    ('Isa', 'isa@gis.com', '13579');


CREATE TABLE produto {
    id_produto int not null AUTO_INCREMENT,
    nome varchar(100) not null,
    descricao varchar(200), 
    preco int not null,
    quantidade int not null,
    tamanho varchar(4) not null,
    cor varchar(50) not null,
    id_usuario int not null,
    primary key (id_produto),
    foreign key (id_usuario) references usuario(id_usuario)
}

INSERT INTO (nome, descricao, preco, quantidade, tamanho, cor) VALUES
    ('Camiseta masculina dragon ball', 'Camiseta manga longa', 20, 5, 'G', 'Preto'),
    ('Camiseta masculina naruto', 'Camiseta com a cara do naruto manga curta', 15, 10, 'M', 'Laranja')
    ('Camiseta masculina tokyo ghoul', 'Camiseta com a cara do kaneki manga curta', 50, 15, 'GG', 'Preto')
    ('Babylook Nesuko', 'Babylook com a nezuko versão chibi', 25, 50, 'tamanho único', 'Rosa')
    ('Camiseta feminina naruto', 'Camiseta com a cara do naruto manga curta', 15, 25, 'G', 'Laranja')
    ('Camiseta tema do tanjiro', 'Camiseta com a estampa do kimono do tangiro', 30, 60, 'G', 'Azul');


CREATE TABLE carrinho_produto {
    id_carpro int not null AUTO_INCREMENT,
    quantidade int not null,
    id_produto int not null,
    primary key (id_carpro),
    foreign key (id_produto) references produto(id_produto)
}

INSERT INTO (quantidade) VALUES
    (2),
    (3),
    (1),
    (3),
    (1),
    (5);


CREATE TABLE carrinho {
    id_carrinho int not null AUTO_INCREMENT,
    data_compra date not null AUTO_INCREMENT,
    id_usuario int not null,
    id_carpro int not null,
    primary key (id_carrinho),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_carpro) references carrinho_produto(id_carpro)
}

CREATE TABLE produto_categoria {
    id_procat int not null AUTO_INCREMENT,
    nome varchar(50) not null,
    id_produto int not null,
    primary key (id_procat),
    foreign key (id_produto) references produto(id_produto)
}

CREATE TABLE categoria (
    id_categoria int not null AUTO_INCREMENT,
    nome varchar(50) not null,
    id_procat int not null,
    primary key (id_categoria),
    foreign key (id_procat) references produto_categoria(id_procat)
)

INSERT INTO (nome) VALUES
    ('Anime'),
    ('Jogos'),
    ('JoJo`s Adventure'),
    ('Dragon Ball'),
    ('Naruto'),
    ('Kimetsu no Yaiba'),
    ('Tokyo Ghoul'),
    ('Bleach'),
    ('Masculina'),
    ('Feminina'),
    ('Manga longa'),
    ('Manga curta'),
    ('Mario'),
    ('Mario Card'),
    ('Pokemon'),
    ('Pikachu'),
    ('Ônix'),
    ('Nezuko'),
    ('Tanjiro'),
    ('Zenitsu'),
    ('Ichigo'),
    ('Hinata'),
    ('Sakura'),
    ('Sasuke'),
    ('Orihime'),
    ('Rukia'),
    ('Renji'),
    ('Byakuya'),
    ('Chad'),
    ('Zelda'),
    ('Link'),
    ('Diablo'),
    ('Elden Ring'),
    ('Call of Duty'),
    ('Lego'),
    ('Batman'),
    ('Superman'),
    ('Super-Heróis'),
    ('Homem-aranha'),
    ('Doutor Estranho'),
    ('Aquaman'),
    ('Flash'),
    ('Capitão América'),
    ('Homem de Ferro'),
    ('Hulk'),
    ('Viuva Negra'),
    ('Falcão Arqueiro'),
    ('Thor'),
    ('Lanterna Verde'),
    ('Sonic'),
    ('Filmes'),
    ('Frases'),
    ('Lisa'),
    ('Internacional'),
    ('Gremio'),
    ('Palmeiras'),
    ('Flamengo'),
    ('Santos'),
    ('São Paulo'),
    ('Atletico-mineiro')
    ('Estampada')
    ('Banda'),
    ('AC-DC'),
    ('Nirvana'),
    ('Queen'),
    ('Guns n Roses'),
    ('Kiss'),
    ('Imagine Dragons'),
    ('Coldplay'),
    ('5 Segunds of Summer'),
    ('Panic! at the Disco'),
    ('Listrada'),
    ('Zebra'),
    ('Onça'),
    ('Skyrim'),
    ('Genshin Impact'),
    ('Sailor Moon'),
    ('Sakura Card Captors'),
    ('BTS'),
    ('BlackPink'),
    ('Seventeen'),
    ('EXO'),
    ('Red Velvet'),
    ('Twice'),
    ('Sete Pecados Capitais'),
    ('One Piece'),
    ('Fairy Tail'),
    ('Natsu Dragnell'),
    ('Lucy'),
    ('Gray'),
    ('Erza'),
    ('Infantil'),
    ('Flores'),
    ('Tie-Dye'),
    ('Power Rangers'),
    ('Star Wars'),
    ('Jogos Vorazes');



