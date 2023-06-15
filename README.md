# LabDig2023
INTRODUÇÃO
	O projeto consiste em criar um jogo que utiliza a mecância de light gun, como o clássico do NES “Duck Hunt”, utilizando o mesmo método de detecção, agora adaptado para um monitor VGA. Utilizará-se o monitor da bancada como tela de jogo, e criará-se a lightgun, utilizndo-se um fotosensor a ser determinado. Os componentes do grupo 12 serão Fernando Alvarista (13695636), e Pedro Henrique (12488289). Os arquivos projetados, ficaram disponíveis no repositório “github.com/PCS-Poli-USP/projeto-final-projeto-12”.

MOTIVAÇÃO
	Como atualmente dispositivos baseados em CRT (Cathode Ray Tube) ou TV de “Tubo” não estão mais disponíveis no mercado, a preservação de jogos como “duck hunt” e “point blank” é prejudicada, pois o periférico “zapper” do NES (nintendinho) utilizva a sincronização do CRT, para determinar se um tiro havia acertado o alvo. Assim, pensou-se em criar um modulo periférico que implementa-se a funcionalidade da light gun em um monitor de sinal VGA. A baixa resolução disponível, também serviu de motivação, devido ao interesse dos alunos em pixel art.


ANÁLISE DE CONCORRENTES
	Light guns modernas, existem, mas, muitas vezes, elas são implementadas utilizando uma câmera no dispositivo e softwares de processamento de imagens[1], para se determinar para onde estão apontando na tela, encarecendo o produto e consumindo recursos computacionais do computador,. O objetivo do módulo a ser desenvolvido, é que ele deve ser simples o suficiente para se basear em um “zapper” composto apenas de um ou mais botões, e um sensor de luminosidade simples. Não envolvendo um câmera que filme a tela interia, o que aumentaria os custos e complexidade desse periférico.

PROJETO
	O mínimo produto viável a ser entregado, é uma light gun que consiga ser alimentada pela própria FPGA e consiga distinguir nas condições de luz ambiente do laboratório, quando está apontando para um alvo escuro e quando está apontando para um alvo claro, na tela. Feito isso, tentará-se criar um jogo de tiro ao alvo com um alvo branco de no máximo um quarto do damanho da tela. 

Aula 9: Estudo da possibilidade da implementação do circuito com um fotoresistor e um comparador. 
Aula 10: Teste do circuito de detecção de luz da light gun, e capacidade da FPGA em distinguir os sinais claro e escuro. Verificar a digitalização do sinal e a capacidade da FPGA em alimentar o circuito comparador sem problemas. 
Aula 11: Implementação de um alvo em monitor VGA que ocupe menos que um quarto da tela.
Aula 12: Apresentação Final


REFERÊNCIAS
[1] https://sindenlightgun.com/details/
[2] https://download.terasic.com/downloads/cd-rom/de0-cv/
