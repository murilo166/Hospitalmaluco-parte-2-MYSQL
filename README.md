# Hospitalmaluco parte2 MYSQL
Neste projeto proposto chamado "hospitalmaluco"proposto pelo meu professor criei o banco de dados apartir da modelagem do sistema feito anteriormente

## descriçâo do projeto

## Entender do assunto
Considere a seguinte descrição e o diagrama ER abaixo:

No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. 

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. 

As internações precisam ser vinculadas a quartos, com a numeração e o tipo. 

Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.
O seguinte pedaço de Diagrama ER modela esses novos requisitos:

Mãos a obra?
Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações. 

Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Você pode utilizar o MySQL Workbench ou o DBdiagram.io para montar os scripts SQL.

Importante: desse modelo já vamos para a etapa lógica da nossa modelagem!
Mãos a obra?
Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações. 

Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Você pode utilizar o MySQL Workbench ou o DBdiagram.io para montar os scripts SQL.

Importante: desse modelo já vamos para a etapa lógica da nossa modelagem!

## codigo criado
create database if not exists hospitalmaluco;

use hospitalmaluco;

create table if not exists consultas(
id_consulta int (200) not null auto_increment,
data_consulta date not null,
hora_consulta int (6)not null,
valor_consulta float(10)not null,
consulta_paciente int(100)not null,
medico_consulta int(100)not null,
primary key(id_consulta)

);

create table if not exists receitas(
id_receita int(200)not null auto_increment,
nome_remedio varchar(200)not null,
quantidade_remedio int(200)not null,
hora_remedio int(6)not null,
tipo_remedio varchar(200)not null,
medico_receitas int(100)not null,
receita_paciente int(100)not null,


primary key(id_receita)

);


create table if not exists convenios(
id_convenio int(200)not null auto_increment,
nome_convenio varchar(200)not null,
cnpj_convenio int(100)not null,
tempo_carencia int(200)not null,
convenio_paciente int(200)not null,

primary key(id_convenio,cnpj_convenio)

);



create table if not exists medicos(
id_medico  int (100)not null auto_increment,
nome_medico varchar(200)not null,
crm_medico  int(200) not null,
tipo_medico varchar(200) not null,
receita_medico int(200) not null,
especialidade_medico varchar(200) not null,
consulta_medico int(100)not null,

primary key (id_medico,crm_medico,consulta_medico)



 

);


create table if not exists quarto(
id_quarto int(100)not null auto_increment,
numero_quarto int(100)not null,
tipo_quarto varchar(100) not null,
quarto_paciente int(100)not null,


primary key(id_quarto,numero_quarto)
);

create table  if not exists  internaçao(
id_internacao int (100)not null auto_increment,
nome_paciente  varchar(100)not null,
data_efetivada date not null,
data_entrada date not null,
data_alta   date not null,
procedimento varchar(100)not null,
quarto_internação int(100)not null,
enfermeiro_internaçao int(100)not null,
internaçao_paciente int(100)not null,

primary key(id_internacao)

);



create table if not exists enfermeiro(

cpf_enfermeiro int(11)not null,
cre_enfermeiro int(100)not null,
id_enfermeiro int(100)not null auto_increment,
nome_enfermeiro varchar(100)not null,
enfermeiro_paciente int(100)not null,

primary key(id_enfermeiro,cre_enfermeiro,cpf_enfermeiro)
);

create table if not exists tipoquarto(
valor_quarto float(10)not null,
id_tipoquarto int(100)not null auto_increment,
descrição_quarto varchar(100)not null,
tipo_quarto int(100)not null,

primary key(id_tipoquarto)

);

create table if not exists pacientes(
id_paciente int(200)not null auto_increment,
nome_paciente varchar(200)not null,
endereço_paciente varchar(200)not null,
datanascimento_paciente date not null,
cpf_paciente int(100)not null,
email_paciente varchar(200)not null,
consulta_paciente int(100) not null,
receita_paciente int(100)not null,
conevenio_paciente int(100)not null,
quarto_paciente int(100)not null,
internaçao_paciente int(100)not null,
enfermeiro_paciente int(100)not null,

primary key(id_paciente,cpf_paciente,consulta_paciente)


);




insert into receitas(id_receita,nome_remedio,quantidade_remedio,hora_remedio,tipo_remedio,medico_receitas)
values(1,"murilo",10,10-20-05,"tarja branca",1);


alter table receitas add foreign key (medico_receitas)
references medicos(id_medico);

alter table consultas add foreign key (medico_consulta)
references medicos(id_medico);

alter table consultas add foreign key (consulta_paciente)
references pacientes(id_paciente);

alter table receitas add foreign key (receita_paciente)
references pacientes(id_paciente);

alter table convenios add foreign key (convenio_paciente)
references pacientes(id_paciente);

alter table quarto add foreign key (quarto_paciente)
references pacientes(id_paciente);

alter table internaçao add foreign key (internaçao_paciente)
references pacientes(id_paciente);

alter table enfermeiro add foreign key (enfermeiro_paciente)
references pacientes(id_paciente);

alter table tipoquarto add foreign key (tipo_quarto)
references quarto(id_quarto);

select*from pacientes;

insert into pacientes(id_paciente,nome_paciente,endereço_paciente,datanascimento_paciente,cpf_paciente,email_paciente,consulta_paciente,receita_paciente,conevenio_paciente,quarto_paciente,internaçao_paciente,enfermeiro_paciente)
values(1,"juliana","rua da sorte",'04-01-02',411474148,"juliana@junbs.con",1,1,1,1,1,1);





## Ferrmenta utilizadas

##mysql workbench

