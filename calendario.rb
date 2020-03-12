# CONTROLE DE ATUALIZAÇÃO ATRAVÉS DE DATA, HORA E UMA VALIDAÇÃO DE ATUALIZAVEL DIARIAMENTE OU NÃO.

# RUBY - SCRIPT REALIAZDO PARA AJUDAR A INTERROMPER ATUALIZAÇÃO CONSTANTE DE INFORMAÇÕES DE ITENS NO BANCO DE DADOS.

require "time"

dateCurrent = Time.now

def verifica_att(serch, dateCurrent, dateUpdate, hStart, hEnd, everyDay)

    unless(everyDay.to_i == 1)
        verifica_att_agenda(serch, dateCurrent, dateUpdate, hStart, hEnd, everyDay)
    else
        verifica_att_diaria(serch, dateCurrent, dateUpdate, hStart, hEnd, everyDay)
    end

end

def verifica_att_diaria(serch, dateCurrent, dateUpdate, hStart, hEnd, everyDay)
    print "\n\n ********** Start Serch ********** \n\n Codigo de Pesquisa: #{serch} \n Horario de pesquisa: #{hStart} - #{hEnd} \n\n"

    if (hStart <= dateCurrent.strftime("%H:%M:%S")) && (hEnd >= dateCurrent.strftime("%H:%M:%S"))
        print " Horario Atual: #{dateCurrent.strftime("%H:%M:%S")} \n\n Esta na hora \n"
    else
        print " Horario Atual: #{dateCurrent.strftime("%H:%M:%S")} \n\n Não esta na hora \n"
    end

    print " \n\n ******** End da Serch ********* \n\n\n"
end

def verifica_att_agenda(serch, dateCurrent, dateUpdate, hStart, hEnd, everyDay)
    print "\n\n ********** Start Serch ********** \n\n Codigo de Pesquisa: #{serch} \n Data de Pesquisa: #{dateUpdate} \n Intervalo: #{hStart} - #{hEnd} \n\n"

    if (dateCurrent.strftime("%Y-%m-%d") == dateUpdate) && ((hStart <= dateCurrent.strftime("%H:%M:%S")) && (hEnd >= dateCurrent.strftime("%H:%M:%S")))
        print " Data Atual: #{dateCurrent} \n\n Esta na data e na hora "
    else
        print " Data Atual: #{dateCurrent} \n\n Não esta na hora "
    end

    print " \n\n ******** End da Serch ********* \n\n\n"
end

# O item de pesquisa deve carregar - ['id de pesquisa', 'data da pesquisa', 'hora inicial da busca', 'hora final de busca', 'atualiza todos os dias?']

serch = [11, "2020-02-18", "09:00:00", "10:00:00", "1"];

verifica_att(serch[0], dateCurrent, serch[1], serch[2], serch[3], serch[4])