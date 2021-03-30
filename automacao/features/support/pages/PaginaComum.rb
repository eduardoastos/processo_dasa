require 'ffaker'
require 'rubyXL'
require 'json'
class PaginaComum
  include Capybara::DSL


   # Método para criar o txt
	def criar_txt(status_txt)
        data = DateTime.now
        data = data.strftime('%d-%m-%Y %H:%m:%S')
        url = URI.parse(current_url).to_s
		
		File.open("data/relatorio.txt", "a") do |file|
        file.write(
      "\n"+
					"Cenario: #{$tipo_cenario}\t \n" + 
					"Data de Execução: #{data}\t \n" +
                    "Status: #{status_txt}\t \n" +
                    "Erro: #{$erro}\t \n" +
		  "-------------------------------------------------------------------\t \n"+
		  "-------------------------------------------------------------------\t \n"+
      "\n"
         )
		end
	
    end

 

end