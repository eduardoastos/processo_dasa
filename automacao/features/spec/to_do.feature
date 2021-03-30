#language: pt

Funcionalidade: Validar quadro de tarefas TODO

# No BDD abaixo, vamos testar as funcionalidades do quadro de tarefas a fazer (TO DO) 


# Validação de navegação entre os botões To_Do e DONE do quadro de tarefas a fazer
@all @to_do @nav_button
Cenario: Validar a navegacao entre os botoes to_do e done
 Dado que estou na pagina inicial e vejo os botoes to_do e done
 Quando clico alternando os botoes 
 Então valido se os elementos da tela estao corretos

# Validação de limpeza da caixa de texto da tela To_Do do quadro de tarefas a fazer
@all @to_do @clean_box
Cenario: Validar a limpeza da caixa de texto
 Dado que eu tenha digitado na caixa de texto um texto qualquer
 Quando clico no botao para limpar
 Então valido se o texto foi removido do campo

# Validação a inclusão de atividades da tela To_Do do quadro de tarefas a fazer
@all @to_do @todo_include
Cenario: Validar a inclusao de atividades 
 Dado que estou na pagina to_do 
 Quando incluo uma ou mais atividade na caixa de texto e clico em adicionar
 Então valido se as atividades gravaram na lista

# Validação a exclusão de atividades da tela To_Do do quadro de tarefas a fazer
@all @to_do @todo_exclude
Cenario: Validar a exclusao de atividades 
 Dado que estou na pagina to_do 
 Quando excluo uma ou mais atividade que estao na lista
 Então valido se as atividades foram excluidas da lista

# Validação do envio da atividade de To_Do para Done
@all @to_do @todo_for_done
Cenario: Validar se a atividade foi para o quadro de atividades concluidas 
 Dado que estou na pagina to_do com atividades na lista
 Quando clico no check box da atividade 
 Então a atividade sai da lista to_do
