
Before do |scn|
  @To_Do = PaginaToDo.new
  @Done = PaginaDone.new
  $atividade = ''
  $tipo_cenario = ""
  $erro = ""


end

After do |scn|
  if scn.failed?
    
    
    PaginaComum.new.criar_txt("Teste finalizado SEM sucesso.")
  else
   
    PaginaComum.new.criar_txt("Teste finalizado com sucesso.")
  end

end

at_exit do
  
end
