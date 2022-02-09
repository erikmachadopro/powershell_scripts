echo ""
echo "#########################################"
echo "             PING SWEEP"
echo ""
echo "  INSIRA OS 3 PRIMEIROS RANGES DA REDE"
echo "            Ex.: 192.168.0"
echo "#########################################"
echo ""
$p1 = Read-Host "Digite o IP"

echo ""
echo "-----------------------------------------"
echo "            Teste de ping"
echo "-----------------------------------------"
echo ""

foreach ($ip in 1..254){
    try{
        $resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
        $resp.Line.split(' ')[2] -replace ":", ""
    } catch{
    
    }
}