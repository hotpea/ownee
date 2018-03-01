# Ownee teste

Sistema de funcionários e departamentos com algumas validações seguindo orientações para teste de contratação para vaga de desenvolvedor na Startup Ownee

Algumas regras no sistema:

* funcionários pertencem a um departamento

* um departamento pode ter um gerente

* funcionários não podem ter menos de 18 anos

* somente funcionários gerente de departamento podem ganhar mais de R$10.000,00

# Para rodar o sistema

Em um ambiente Ruby devidamente configurado, baixe o projeto e em sua raiz execute 

$ rails db:migrate

e em seguida

$ rails server
