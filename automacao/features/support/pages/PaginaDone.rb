
require 'ffaker'

class PaginaDone

    include RSpec::Matchers
    include Capybara::DSL

    

    def pesquisa_done
        $tipo_cenario = "VALIDAR BOTÃO DONE"
        begin
            sleep 3
            find("a[id='button-done']").click
        rescue
            $erro = "Nao foi possivel clicar no botao done"
            raise $erro
        end
            sleep 3
            $atividade = all("span")[0].text.split("\n")[0]

        begin
            sleep 3
            find("input[id='done-search']").set($atividade)
        rescue
            $erro = "Nao foi possivel preencher o campo de pesquisa"
            raise $erro
        end
    end  
    
    def valida_done
        $tipo_cenario = "VALIDAR PESQUISA NA PAGINA DONE"
        begin
            sleep 3
            assert_selector("span", text: $atividade)
        rescue
            $erro = "Nao encontrou a atividade pesquisada"
            raise $erro
        end
    end 

    def exclui_done
        
        begin
            sleep 3
            
            find("a[id='button-done']").click
            all("button[type='button']")[0].click
        rescue
            $erro = "Nao foi possivel clicar no botao excluir"
            raise $erro
        end
    end 

    def valida_exclui_done
        $tipo_cenario = "VALIDAR EXCLUSAO DE ATIVIDADE NA PAGINA DONE"
        begin
            sleep 3
            $atividade = all("span")[0].text.split("\n")[0]
            assert_no_selector("span", text: $atividade)
            rescue
                $erro = "Atividade nao foi excluida"
                raise $erro
            end

    end 
    
    

end
