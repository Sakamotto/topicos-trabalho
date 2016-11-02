# TRABALHO 01
Trabalho desenvolvido durante a disciplina de Banco de Dados 2.

#Sumário

###1	COMPONENTES<br>
Integrantes do grupo:
* Cristian da Silva Anterio
* Danilo de Oliveira

###2	INTRODUÇÃO E MOTIVAÇAO<br>

O coordenador do curso Sistemas de Informação do IFES, tem muita dificuldade e trabalho para alocar professores e salas à disciplinas para cada período. Para apoiá-lo, este projeto tem como objetivo desenvolver um software que otimize tal processo, obedecendo à restrições de horário, laboratórios disponíveis, etc ...

Com isso, espera-se que o cliente tenha menos esforço, mais precisão e os horários estejam prontos e disponíveis mais rapidamente.

Utilizaremos o framework OptaPlanner desenvolvido em Java pela empresa RedHat.

Este documento contém a especificação do projeto do banco de dados do Projeto Flash. <br>

###3	MINI-MUNDO<br>
O coordenador de curso de Bacharelado em Sistemas de Informação do Ifes Campus Serra enfrenta problemas para elaborar o horário de cada semestre para os três cursos (técnico e graduação), pois é uma tarefa muito complexa, na qual tem de ser levado em conta diferentes regras e restrições. Além disso, envolve a disponibilidade de professores, salas, laboratórios, alunos (restrições e questões), e mais cessões de docentes para (e da) Automação e Cefor. Atualmente existe um software que o apoia. Porém, o atual software não ajuda muito, pois não atende algumas restrições.

Para alocar uma disciplina, o professor deve ter disponibilidade para atendê-la. A carga horária de cada professor não pode exceder um total de quarenta horas semanais. Cada professor precisa ter um intervalo mínimo de onze horas entre um determinado dia e o dia seguinte. Os professores também não devem ter um intervalo de mais de três horas em um dia. É desejável que os professores que moram mais perto do Campus, sejam alocados para os primeiros horários de aula do dia. É desejável que professores que moram longe, não estejam alocados a partir das 15 horas.

É desejável que as disciplinas e suas respectivas disciplinas que são pré-requisitos, estejam definidas no mesmo horário. Por exemplo, Cálculo 1 e Cálculo 2. As aulas da graduação devem terminar no máximo às 13:20.

Os setores administrativos precisam de horários para cuidar dos espaços, incluindo as salas e laboratórios. Tem que ser disponibilizado um laboratório para os alunos estudarem e um laboratório exclusivo para TCC e Projeto Integrador. É necessário que haja horários vagos para que um professor possa usar sempre que preciso (conforme dito em um recado no facebook).

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
As telas de rascunho do nosso projeto, está armazenada na pasta de "Telas" nesse repositório. Pode-se acessá-las através desse [link](https://github.com/DaniloSI/topicos-trabalho/blob/master/imagens/Telas/TelaMoqup.pdf).<br>


###5	MODELO CONCEITUAL<br>
####5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/DaniloSI/topicos-trabalho/blob/master/imagens/Conceitual_brModelo_v04.jpg "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

####5.3 DECISÕES DE PROJETO
    
    * Tabela associativa SubArea:
        a) Campos area_conhecimento_id e possui_area_conhecimento_id: Em nosso projeto, optamos por utilizar essa tabela com esses campos, visando a normalização.
    
    * Tabela TipoEspaco:
        a) Campo descricao: Optamos por atribuir esse campo na tabela para definir o tipo do espaço físico na qual uma disciplina será lecionada.
        b) Optamos por utilizar essa tabela ao invés de utilizar um campo tipo, visando a normalização e também para permitir cadastros de Tipo de Espaço se necessário futuramente.

####5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

###6	MODELO LÓGICO<br>

![Modelo Lógico do Banco de Dados](https://github.com/DaniloSI/topicos-trabalho/blob/master/imagens/Logico_brModelo_v04.jpg)

###7	MODELO FÍSICO<br>
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
    Data de Entrega: 19/10/2016
<br>
####9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS<br> 
    Data de Entrega: 26/10/2016
<br>
####9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW<br>
    Data de Entrega: 26/10/2016
<br>
####9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger/asserção)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>
Data de Entrega: 09/11/2016
<br>        
####9.5	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices.
<br>
    Data de Entrega: 16/11/2016
<br>   
####9.6	ANÁLISE DOS DADOS COM ORANGE<br>    
    a) aplicação de algoritmos e interpretação dos resultados
<br>
    Data de Entrega: 16/11/2016
<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
<br>
    Data de Entrega: 23/11/2016
<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
