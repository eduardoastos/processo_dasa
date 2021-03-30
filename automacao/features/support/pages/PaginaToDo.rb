
require 'ffaker'

class PaginaToDo

    include RSpec::Matchers
    include Capybara::DSL

    def abrir_pagina
        sleep 5
    end

    def validar_pagina_inicial
        $tipo_cenario = "VALIDAR A PAGINA TODO"
        if assert_selector("main[id='app']", wait: 1)
            begin
            assert_text("To Do", wait: 1)
            rescue
              $erro += "Nao carregou o titulo da pagina"
              raise $erro
            end
        end

        if assert_selector("main[id='app']", wait: 1)
            begin
            assert_text("TODO", wait: 1)
            rescue
              $erro += "Nao carregou o botao TODO"
              raise $erro
            end
        end

        if assert_selector("main[id='app']", wait: 1)
            begin
            assert_text("DONE", wait: 1)
            rescue
              $erro += "Nao carregou o botao DONE"
              raise $erro
            end
        end
        
        if assert_selector("main[id='app']", wait: 1)
            begin
              find("input[placeholder*='You can add more then one']")
              rescue
                $erro += "Nao carregou os campo de texto"
                raise $erro
            end
        end  

    end   
    
  
    def alternando_botoes
        $tipo_cenario = "VALIDAR A TRANSIÇÃO ENTRE OS BOTÕES TODO E DONE"
        find("a[href*='/done']").click
        sleep 5
        find("a[href*='/todo']").click
        sleep 5
    end    

    def valida_elementos
        $tipo_cenario = "VALIDAR ELEMENTOS DA PAGINA TODO"
        if find("a[href*='/done']").click
            begin
                find("input[placeholder='Search task']")
            rescue
                $erro += "Nao encontrou o campo search task"
                raise $erro
            end
        end
           

        if find("a[href*='/todo']").click
            begin
                find("input[placeholder*='You can add more then one']")
            rescue
                $erro += "Nao encontrou o campo para inserir atividade"
                raise $erro
            end
        end
        sleep 3 
    end 

    def valida_botao_clear
        $tipo_cenario = "VALIDAR O BOTAO CLEAR NA PAGINA TODO"
        $atividade = "#{FFaker::Name.first_name.gsub(/\W/, '')};#{FFaker::Name.last_name.gsub(/\W/, '')}"   
        sleep 3
        find("input[placeholder*='You can add more then one']").set($atividade)
        sleep 3
        find("button[type='reset']").click
        sleep 3
    end

    def valida_limpeza_textos_todo
        $tipo_cenario = "VALIDAR A LIMPEZA DO CAMPO DE TEXTO NA PAGINA TODO"
        if find("a[href*='/todo']").click
            begin
             find("input[placeholder*='You can add more then one']")
            rescue
                $erro += "Nao encontrou o campo para inserir atividade"
                raise $erro
            end
        end
    end

    def valida_botao_adicionar
        $tipo_cenario = "VALIDAR O BOTAO ADICIONAR NA PAGINA TODO"
        $atividade = "#{FFaker::Name.first_name.gsub(/\W/, '')}"   
        sleep 3
        find("input[placeholder*='You can add more then one']").set($atividade)
        sleep 3
        find("button[type='submit']").click
        sleep 3

    end

    def valida_atividade_na_lista
        $tipo_cenario = "VALIDAR A EXISTENCIA DE ATIVIDADE NA LISTA NA PAGINA TODO"
        begin
            assert_selector("span", text: $atividade)
        rescue
            $erro = "Nao encontrou a atividade"
            raise $erro
        end
    end

    def valida_exclusao_na_lista
        $tipo_cenario = "VALIDAR SE A ATIVIDADE FOI EXCLUIDA DA PAGINA TODO"
        begin
            find("button[type='button']").click
        rescue
            $erro = "Nao foi possivel clicar no botao excluir atividade"
            raise $erro
        end

        begin
            assert_no_selector("span", text: $atividade)
        rescue
            $erro = "Atividade foi encontrada"
            raise $erro
        end
    end

    def valida_finaliza_atividade
        $tipo_cenario = "VALDIAR SE A ATIVIDADE FOI FINALIZADA NA PAGINA TODO"
        begin
            find("input[type='checkbox']").click
        rescue
            $erro = "Nao foi possivel clicar no checkbox finalizar atividade"
            raise $erro
        end
    
    end

    def valida_saida_na_lista
        $tipo_cenario = "VALIDAR REMOCAO DE ATIVIDADE NA LISTA DA PAGINA TODO"
        begin
            find("input[type='checkbox']").click
        rescue
            $erro = "Nao foi possivel clicar no botao excluir atividade"
            raise $erro
        end

        begin
            assert_no_selector("span", text: $atividade)
        rescue
            $erro = "Atividade foi encontrada"
            raise $erro
        end
    end


end
