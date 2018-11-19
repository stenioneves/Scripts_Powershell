################################################################################################
#           Esse Script executa o processo de configurar o appvclient                          #
#                   Autor: Stenio  Neves  Data: 18/11/2018 Hora:21:47                          #
################################################################################################
Import-Module appvclient
$server=""
$url =""

Add-AppvPublishingServer -Name $server -Url $url
