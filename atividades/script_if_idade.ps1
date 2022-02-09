$idade = Read-Host "Qual a idade?"
if ($idade -ge "18"){
    echo "PODE DIRIGIR"
} else{
    echo "NÃO PODE DIRIGIR"
}