Dado("que estou na pagina de tarefas terminadas") do 
    visit ('http://localhost:8080/')       
    @To_Do.valida_botao_adicionar 
    @To_Do.valida_finaliza_atividade                                                              
    @To_Do.valida_botao_adicionar 
    @To_Do.valida_finaliza_atividade   
  end                                                                                             
                                                                                       
  Quando("existem tarefas no quadro de tarefas terminadas e digito texto no campo de pesquisa") do
    @Done.pesquisa_done
  end
  
  Então("valido o feedback da pesquisa") do
    @Done.valida_done
  end


  Dado("que estou na pagina de tarefas done") do 
    visit ('http://localhost:8080/')       
    @To_Do.valida_botao_adicionar 
    @To_Do.valida_finaliza_atividade                                                              
    @To_Do.valida_botao_adicionar 
    @To_Do.valida_finaliza_atividade   
  end 

  Quando("existem tarefas no quadro de tarefas e clico no botao de exclusão para remover uma atividade do quadro") do   
    @Done.exclui_done              
  end                                                                                             
                                                                                                  
  Então("valido se a tarefa foi excluida") do                                                       
    @Done.valida_exclui_done
  end   