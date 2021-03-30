#language: pt

Funcionalidade: Validar quadro de tarefas DONE

# No BDD abaixo, vamos testar as funcionalidades do quadro de tarefas terminadas (DONE) 

# Validação da pesquisa de dados no quadro de tarefas concluídas 
@all @done @done_search
Cenario: Pesquisar tarefas no quadro e tarefas terminadas
 Dado que estou na pagina de tarefas terminadas
 Quando existem tarefas no quadro de tarefas terminadas e digito texto no campo de pesquisa
 Então valido o feedback da pesquisa


# Validação da exclusao de dados do quadro de tarefas concluidas 
@all @done @done_exclusion
Cenario: Excluir tarefas do quadro de tarefas terminadas
 Dado que estou na pagina de tarefas done
 Quando existem tarefas no quadro de tarefas e clico no botao de exclusão para remover uma atividade do quadro
 Então valido se a tarefa foi excluida

 