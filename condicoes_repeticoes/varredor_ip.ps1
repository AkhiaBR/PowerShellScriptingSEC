param($ip)

if (!$ip) {
    echo "Modo de uso do programa:"
    echo ".\arquivo.ps1 [IP]"
    echo "Exemplo: .\varredor_ip.ps1 192.168.7"
}
else {
    foreach ($hostt in 1..254) {
        $endereco = "$ip.$hostt" # '$endereco' recebe o ip completo // '"$ip.$porta"' -> junta as duas variaveis para a execucao do Ping
        $saida = ping -n 1 $endereco

        if ($saida -match "Lost = 0") { # se a saida tiver 'Lost = 0", significa que o IP está ativo
            echo "$endereco ATIVO"
        }
    }
}