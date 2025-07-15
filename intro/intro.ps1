# fazer um arquivo em PowerShell: "notepad arquivo.ps1"
# para rodar um arquivo: .\arquivo.ps1

echo "Diretorio atual: $(get-location)" # printa a mensagem "echo" com um comando imbutido "$()"

$ip = "192.168.0.1" # cria uma variável
echo "Varrendo o host: $ip" # printa uma mensagem com a variável criada

$nome = Read-host "Digite seu nome" # variável esperando o input "Read-host" do usuário
echo "Seu nome: $nome"

$site = Read-host "Digite o dominio de um site"
echo "Efetuando Ping no site: $site"
ping -n 1 $site | Select-string "Lost = 0" # faz somente um ping "-n 1" e retorna somente o ping com perda zero "Select-string -> grep"