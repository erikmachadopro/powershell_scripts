#Meu primeiro Script
echo "Erik Xavier"

# Comandos para escrever em tela
#
# echo "Erik Xavier"
#
# Write-Host "Erik Xavier"
#
# Write-Output "Erik Xavier"
#

echo ""

#para criar um script -> notepad script.ps1
#para executar -> .\script.ps1

#
# ERRO AO EXECUTAR SCRIPT NO POWERSHELL
#
#PS C:\Users\LINQ> Get-ExecutionPolicy
#Restricted
#
#PS C:\Users\LINQ> Set-ExecutionPolicy RemoteSigned
#PS C:\Users\LINQ> Get-ExecutionPolicy
#RemoteSigned
#

echo "##############################################################################"
echo "Meu diret�rio atual: $(Get-Location)"
echo ""
echo "Meu diret�rio atual: $(pwd) - com pwd "

echo "##############################################################################"
Get-Location
echo ""

echo "##############################################################################"
Write-Host "Meu usu�rio atual: $(whoami)"
echo ""


# V�riaveis
#echo "##############################################################################"
echo "V�riaveis"
echo ""

$ip = "192.168.0.1"
echo "Varrendo o host:" $ip
echo ""

echo "Sa�da em linha �nica"
echo "Varrendo o Host: $ip"
echo ""

echo "Capturando entrada do usu�rio"
$ip_entrada = Read-Host "Digite o IP:"
echo "Varrendo o HOST: $ip_entrada"
echo ""

echo "Multiplas V�riaveis"
$ip_entrada2 = Read-Host "Digite o IP:"
$porta =80
echo "Varrendo o HOST: $ip_entrada2 e Porta: $porta"
echo ""

echo "##############################################################################"

echo ""
echo "Capturando entrada do usu�rio e efetuando ping"
$ip_entrada3 = Read-Host "Digite o IP:"
echo "Efetuando Ping no HOST: $ip_entrada3"
ping -n 5 $ip_entrada3
echo ""

echo "Capturando somente entradas que retornarem o ping"
$ip2 = "192.168.0.1"
echo "Realizando ping no host: $ip2"
ping -n 1 $ip2 | Select-String "bytes=32"
echo ""

echo "##############################################################################"
