$idade = Read-host "Qual sua idade?"

if ($idade -ge "18") { # '-ge' -> greater or equal
    echo "VOCE PODE DIRIGIR"
}
else {
    echo "VOCE NAO PODE DIRIGIR"
}