echo "Parâmetros"

param($p1)
if (!$p1){
    echo "Parâmetros"
    echo "Exemplo de uso: .\script_parametros.ps1 192.168.0.1"
} else{
    echo "Efeutuando Ping no Host: $ip"
    ping -n 1 $ip | Select-String "bytes=32"
}
