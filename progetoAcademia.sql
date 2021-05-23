create database academia
default character set utf8
default collate utf8_general_ci;

use academia;

create table usuario(
id_usuario int,
nome varchar(45),
email varchar(45),
telefone varchar(45),
data_nascimento varchar(45),
cpf varchar(45),
foto varchar(45),
digital varchar(45),
primary key(id_usuario)
)default charset = utf8;

	create table presenca(
    id_presenca int,
    data_hora datetime,
    id_usuario int,
    primary key(id_presenca)
    )default charset = utf8;
    
		create table usuario_plano(
        id_usuario int,
        id_plano int
        )default charset = utf8;
        
			create table plano(
            id_plano int,
            descricao varchar(45),
            ativo char(1),
            planocol varchar(45),
            primary key(id_plano)
            )default charset = utf8;
            
				create table pagamento(
                id_pagamento int,
                data datetime,
                id_usuario int,
                id_plano int,
                valor varchar(45),
                meio_pagamento varchar(45),
                comprovante varchar(45),
                primary key(id_pagamento)
                )default charset = utf8;
                
                
					create table usuario_graduacao_muay_thai(
                    id_usuario int,
                    id_graduacao_muay_thai int,
                    descricao varchar(45),
                    data datetime
                    )default charset = utf8;
                    
						create table if not exists graduacao_muay_thai(
                        id_graduacao_muay_thai int,
                        descricao varchar(45),
                        primary key(id_graduacao_muay_thai)
                        )default charset = utf8;  
                        
								create table usuario_graduacao_jiu_jitsu(
                                id_usuario int,
                                id_graduacao_jiu_jitsu int,
                                data datetime,
                                descricao varchar(45)
                                )default charset = utf8;
                                
										create table if not exists graduacao_jiu_jitsu(
                                        id_graduacao_jiu_jitsu int,
                                        descrição varchar(45),
                                        primary key(id_graduacao_jiu_jitsu)
                                        )default charset = utf8;