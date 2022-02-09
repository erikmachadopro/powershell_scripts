# Test-NetConnection racksistemas.com

# Test-NetConnection racksistemas.com -TraceRoute
# Test-NetConnection racksistemas.com -TraceRoute -Hop 2 --> quantidade de ips para verificar
#
# Test-NetConnection racksistemas.com -Port 80 
# Test-NetConnection racksistemas.com -Port 80 -WarningAction SilentlyContinue -InformationLevel Quiet
# if (Test-NetConnection racksistemas.com -Port 80 -WarningAction SilentlyContinue -InformationLevel Quiet) {echo "Porta Aberta"} else {echo "Porta Fechada"}


<#

PS E:\ethical_hacking_scripts\desec_lab\powershell_scripts> Test-NetConnection racksistemas.com -TraceRoute


ComputerName           : racksistemas.com
RemoteAddress          : 5.254.41.1
InterfaceAlias         : Wi-Fi 2
SourceAddress          : 192.168.0.101
PingSucceeded          : True
PingReplyDetails (RTT) : 178 ms
TraceRoute             : 192.168.0.1
                         45.70.40.3
                         45.70.42.165
                         45.70.40.29
                         200.186.106.89
                         4.69.219.142
                         4.15.222.146
                         5.254.114.110
                         5.254.81.58
                         5.254.109.41
                         5.254.109.30
                         5.254.41.1
#>

<#

AJUDA

Get-Command | Select-String Test

Get-Help Test

Get-Help

#>

<#
param($ip, $porta)

if (!$ip -or !$porta){
    echo ""
    echo "############################################"
    echo "                PORTSCAN"
    echo ""
    echo " Modo de uso: .\portscan.ps1 [REDE] [PORTA]"
    echo "    Ex.: .\portscan.ps1 192.168.0.1 80"
    echo "############################################"
    echo ""
}else{
    echo ""
    echo "#########################################"
    echo "               PORTSCAN"
    echo "#########################################"
    echo ""
    if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
        echo "Porta Aberta"
    } else {
        echo "Porta Fechada"
    }
}
#>

param($ip)

if (!$ip){
    echo ""
    echo "############################################"
    echo "                PORTSCAN"
    echo ""
    echo "    Modo de uso: .\portscan.ps1 [REDE]"
    echo "     Ex.: .\portscan.ps1 192.168.0.1"
    echo "############################################"
    echo ""
}else{
    echo ""
    echo "#########################################"
    echo "               PORTSCAN"
    echo "#########################################"
    echo ""
    foreach($porta in 1..1024){
        if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
            echo "Porta $porta aberta"
        } 
#    } #fechando o foreach antes do else retorna somente as portas abertas    
        else {
            echo "Porta $porta fechada"
        }
    }
}

<#

PERCORRENDO PORTAS DEFINIDAS

param($ip)

if (!$ip){
    echo ""
    echo "############################################"
    echo "                PORTSCAN"
    echo ""
    echo "    Modo de uso: .\portscan.ps1 [REDE]"
    echo "     Ex.: .\portscan.ps1 192.168.0.1"
    echo "############################################"
    echo ""
}else{
    echo ""
    echo "#########################################"
    echo "               PORTSCAN"
    echo "#########################################"
    echo ""

    $topports = 21,22,3306,80,443]
    Try{
        foreach($porta in $topports){
            if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
                echo "Porta $porta aberta"
            } 
    #    } #fechando o foreach antes do else retorna somente as portas abertas    
            else {
                echo "Porta $porta fechada"
            }
        } #fim do foreach
    } catch{

    }
}
#>