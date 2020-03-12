require 'time'
require 'logger'

$logger = Logger.new("logs/atualizador.log")
$logger.formatter = proc { |severity, datetime, progname, msg| "#{severity}, #{datetime.strftime("%d-%m-%Y %H:%M:%S")}, #{msg}\n" }

def dateTime
    $dateCurrent = Time.now
end

def serch()
    list = ["siconfi", "Reservas Internacionais", "preços nacionais", "preços internacionais", "Preços agrícolas semanais", "Preços agrícolas diários", "pnad - brasil", "pnad", "pms", "pmc", "pim - Brasil", "pim", "pib", "petrobras", "ncm", "juros", "ipca - Brasil", "ipca-15", "ipca", "inpc", "indicadores financeiros independentes", "ibcr", "ibc", "iabr", "fmi", "divida externa", "credito - prioritario", "credito", "c_publicas", "consumo_energia_reg", "cambio", "b_pagamentos", "bcsp", "anfavea"]
    return list
end

def juros()
    @time = ['19:00:00', '20:00:00']
    @n = 0
        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando JUROS"
            $logger.info("Atualizando JUROS")
            @n = @n + 1
        else
            #puts "ERRO = JUROS - *** Não esta na hora ***"
            $logger.error("JUROS  *** Não esta na hora ***")
        end
end

def cambio()
    @time = ['19:00:00', '20:00:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando Cambio"
            $logger.info("Atualizando Cambio")
            @n = @n + 1
        else
            #puts "ERRO = CAMBIO - *** Não esta na hora ***"
            $logger.error("CAMBIO - *** Não esta na hora ***")
        end
end

def pn()
    @time = ['20:00:00', '21:00:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando Preços Nacionais"
            $logger.info("Atualizando Preços Nacionais")
            @n = @n + 1
        else
            #puts "ERRO = Preços Nacionais - *** Não esta na hora ***"
            $logger.error("Preços Nacionais - *** Não esta na hora ***")
        end
end

def pi()
    @time = ['20:00:00', '21:00:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando Preços Internacionais"
            $logger.info("Atualizando Preços Internacionais")
            @n = @n + 1
        else
            #puts "ERRO = Preços Internacionais - *** Não esta na hora ***"
            $logger.error("Preços Internacionais - *** Não esta na hora ***")
        end
end

def pad()
    @time = ['06:00:00', '07:00:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando Preços Agricolas Diarios"
            $logger.info("Atualizando Preços Agricoas Diarios")
            @n = @n + 1
        else
            #puts "ERRO = Preços Agricolas Diarios - *** Não esta na hora ***"
            $logger.error("Preços Agricolas Diarios - *** Não esta na hora ***")
        end
end

def pas()
    @time = ['06:00:00', '07:00:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando Preços Agricolas Semanais"
            $logger.info("Atualizando Preços Agricolas Semanais")
            @n = @n + 1
        else
            #puts "ERRO = Preços Agricolas Semanais - *** Não esta na hora ***"
            $logger.error("Preços Agricolas Semanais - *** Não esta na hora ***")
        end
end

def bcsp()
    @time = ['06:30:00', '07:30:00']
    @n = 0

        dateTime()

        if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
            #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando BCSP"
            $logger.info("Atualizando BCSP")
            @n = @n + 1
        else
            #puts "ERRO = BCSP - *** Não esta na hora ***"
            $logger.error("BCSP - *** Não esta na hora ***")
        end
end

def pim()
    @date = ["2020-04-08", "2020-03-12"]
    @time = ['09:00:00', '10:00:00']
    @date.each do |d|
        if ($dateCurrent.strftime("%Y-%m-%d") == d) then
            @n = 0
                dateTime()

                if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
                    #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando PIM"
                    $logger.info("Atualizando PIM")
                    @n = @n + 1
                else
                    #puts "ERRO = PIM - *** Não esta na hora ***"
                    $logger.error("PIM - *** Não esta na hora ***")
                end
        else
            #puts "Não esta na data"
        end
    end
end

def pimbr()

    @date = ["2020-04-01", "2020-03-10"]
    @time = ['09:00:00', '10:00:00']

    @date.each do |d|
        if ($dateCurrent.strftime("%Y-%m-%d") == d) then
            @n = 0
                dateTime()

                if ($dateCurrent.strftime("%H:%M:%S") >= @time[0] and $dateCurrent.strftime("%H:%M:%S") <= @time[1]) then
                    #puts "SUCESSO = [#@n] "+$dateCurrent.strftime("%H:%M:%S")+" - Atualizando PIM - BRASIL"
                    $logger.info("Atualizando PIM - BRASIL")
                    @n = @n + 1
                else
                    #puts "ERRO = PIM - BR  *** Não esta na hora ***"
                    $logger.error("PIM - BR  *** Não esta na hora ***")
                end
        else
            #puts "Não esta na data"
        end
    end

end

def serch_update(list)
    case list
    when 'cambio'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** CAMBIO ****"
        cambio()
        return true
    when 'juros'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** JUROS ****"
        juros()
        return true
    when 'preços internacionais'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** PREÇOS INTERNACIONAIS ****"
        pi()
        return true
    when 'preços nacionais'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** PREÇOS NACIONAIS ****"
        pn()
        return true
    when 'Preços agrícolas diários'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** PREÇOS AGRICOLAS DIARIOS ****"
        pad()
        return true
    when 'Preços agrícolas semanais'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** PREÇOS AGRICOLAS SEMANAIS ****"
        pas()
        return true
    when 'bcsp'
        #puts "DIARIA - VERIFICANDO ATUALIZAÇÃO **** BCSP ****"
        bcsp()
        return true
    when 'pim'
        #puts "CALENDARIO - VERIFICANDO ATUALIZAÇÃO **** PIM ****"
        pim()
        return true
    when 'pim - Brasil'
        #puts "CALENDARIO - VERIFICANDO ATUALIZAÇÃO **** PIM - BRASIL ****"
        pimbr()
        return true
    else
        return false
    end
end

#i = 0

list = serch()

puts "\n\nQuantidade de Itens: " + list.count.to_s;

loop do
    dateTime.strftime("%Y%m%d").to_i < "20200313".to_i ? true : break
    dateTime()
    
    $logger.debug("Atualizando")
    
    list.each do |s|
        serch_update(s.to_s) ? update = true : update = "NÃO ATUALIZOU "+s
    end

    #i >= 2 ? break : i = i + 1

    sleep(600)
    #break
end