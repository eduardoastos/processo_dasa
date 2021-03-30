Dado("que estou na pagina inicial e vejo os botoes to_do e done") do                  
    visit ('http://localhost:8080/')
 
    @To_Do.abrir_pagina
    @To_Do.validar_pagina_inicial
end                                                                                   
                                                                                        
Quando("clico alternando os botoes") do                                               
    @To_Do.alternando_botoes      
end                                                                                   
                                                                                        
Então("valido se os elementos da tela estao corretos") do                             
    @To_Do.valida_elementos        
end                                                                                   
                                                                                        
  
Dado("que eu tenha digitado na caixa de texto um texto qualquer") do 
    visit ('http://localhost:8080/todo')     
end                                                                                   
                                                                                        
Quando("clico no botao para limpar") do                                               
    @To_Do.valida_botao_clear      
end                                                                                   
                                                                                        
Então("valido se o texto foi removido do campo") do                                   
    @To_Do.valida_limpeza_textos_todo          
end                                                                                   
                                                                                        
  Dado("que estou na pagina to_do") do                                                  
    visit ('http://localhost:8080/todo')         
  end                                                                                   
                                                                                        
  Quando("incluo uma ou mais atividade na caixa de texto e clico em adicionar") do      
    @To_Do.valida_botao_adicionar        
  end                                                                                   
                                                                                        
  Então("valido se as atividades gravaram na lista") do                                 
    @To_Do.valida_atividade_na_lista     
  end                                                                                   
                                                                                        
  Quando("excluo uma ou mais atividade que estao na lista") do                          
    @To_Do.valida_botao_adicionar 
  end                                                                                   
                                                                                        
  Então("valido se as atividades foram excluidas da lista") do                          
    @To_Do.valida_exclusao_na_lista        
  end                                                                                   

  #######
  Dado("que estou na pagina to_do com atividades na lista") do   
    visit ('http://localhost:8080/todo')                        
    @To_Do.valida_botao_adicionar       
  end                                                                                   
                                                                                        
  Quando("clico no check box da atividade") do                                          
    @To_Do.valida_finaliza_atividade        
  end                                                                                   
                                                                                        
  Então("a atividade sai da lista to_do") do                            
    @To_Do.valida_saida_na_lista        
  end                                                                                   