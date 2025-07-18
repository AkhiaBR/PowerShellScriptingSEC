# 'Get-Command' -> permite ver a lista de todos os comandos do PowerShell
# 'Get-Help [COMANDO] -> 'man' do windows bruh

param($ip)

if(!$ip) { # se $ip ou $porta nao forem passados como parametros: 
    echo "{--PORT-SCANNER--}"
    echo "MODO DE USO: .\arquivo.ps1 [ENDERECO] [PORTA]"
    echo "EXEMPLO: .\portScanner.ps1 google.com 80"
}
else {
    try { # primeiro, o programa executa os seguintes codigos:
        # $mostFamousPorts = 21,22,3306,80,443 -> Uma alternativa, seria fazer uma variável com as portas mais comuns
        foreach ($porta in 1..65535) { # nesse caso, o for ficaria assim -> foreach ($porta in $mostFamousPorts) {}
            if (Test-NetConnection $ip -Port $porta) { 
                echo "A porta $porta esta ABERTA no endereco $ip"
            }
            else {
                echo "A porta $porta esta FECHADA no endereco $ip"
            }
        }
    }
    catch {} # caso ocorra algum erro, nada será exibido (catch vazio)
}