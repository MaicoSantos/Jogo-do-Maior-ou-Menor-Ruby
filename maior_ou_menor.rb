		def da_boas_vindas
			 puts
    puts "        P  /_|  P                              "
    puts "       /_|_|_|_/_|                             "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        " 
    puts "        |__|_|__/                              "
    puts
			puts "Qual é o Seu Nome?"
			nome = gets.strip
			puts "\n\n"
			puts "Começaremos o jogo para você #{nome}"
			nome
		end

	def pede_dificuldade
		puts "Qual o nível de dificuldade que deseja?"
		puts  "1 - Very Easy, 2 - Easy, 3 - Normal, 4 - Hard, 5 - Very Hard"
		puts "Escolha:"
		dificuldade = gets.to_i
	end

		def sorteia_numero_secreto (dificuldade)
			case dificuldade
			when 1
			maximo = 30
		when 2
			maximo = 60
		when 3
			maximo = 100
		when 4
			maximo = 150
		else
			maximo = 200
		end
			
			puts "Escolhendo um número secréto entre 0 e #{maximo}..."
			sorteado = rand(maximo +1)
			puts "Escolhido.... que tal adivinhar o nosso número secreto de hojê?"
			puts "\n\n"
			sorteado
		end

		def pede_um_numero(chutes, tentativa, limite_tentativa)
			puts "Tentativa #{tentativa} de #{limite_tentativa}"
			puts "Chutes até agora: #{chutes}"
			puts "Entre com o número"
			chute = gets.strip
			puts "\n\n"
			puts "Será que acertou? Você chutou #{chute}"
			chute.to_i
		end

	def ganhou
 puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
	end

		def verifica_se_acertou(numero_secreto, chute)
			acertou = numero_secreto == chute

			if acertou 
				ganhou
				return true	
			end	
			
			maior = numero_secreto > chute
			if maior
				puts "Você errou, o número secreto é maior"

			else
				puts"Você errou, o número secreto é menor"

			
			false
			end
		

		end
		
def joga (nome)
	dificuldade = pede_dificuldade
		numero_secreto = sorteia_numero_secreto dificuldade

	pontos_ate_agora = 1000
	limite_tentativa = 5 
	chutes = []


	for tentativa in 1..limite_tentativa
		chute = pede_um_numero chutes, tentativa, limite_tentativa
		chutes << chute
		
		if nome == "Maico"
			ganhou
			break
		end

		pontos_a_perder = (chute - numero_secreto).abs / 2.0
		pontos_ate_agora -= pontos_a_perder

		if verifica_se_acertou numero_secreto, chute
			break
			

	
	end
end
	
	puts "O número secreto era #{numero_secreto}"
	puts "Você ganhou #{pontos_ate_agora} pontos."
end

	def nao_quer_jogar?
		puts "Deseja Jogar Novamente? (S/N)"
		quer_jogar = gets.strip
		nao_quer_jogar = quer_jogar.upcase == "N"
		
	end






	nome = da_boas_vindas
	

	loop do 
	joga nome

		if nao_quer_jogar?
			break
		end
	end

