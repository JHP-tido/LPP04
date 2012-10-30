class Rps

@@defeat={:rock=>:scissors, :paper=>:rock, :scissors=>:paper}
@@throws=@@defeat.keys

@@resultados = ["empate","perdiste","ganaste"]

def initialize(jugada)
@player_throw = jugada.to_sym
@computer_throw = @@throws.sample
end

def jugada
:rock
end

def jugadac
:rock
end

def tiradasv
@@throws
end

def tiradasg
@@defeat
end

def obtener_humano()
@player_throw.to_s
end

def obtener_maquina()
@computer_throw
end

def lista_resultados()
@@resultados
end

def resultado
@resultado = "perdiste"
end

def jugar()
	if (@player_throw == @computer_throw)
@resultado = "empate"
elsif (@player_throw == @@defeat[@computer_throw])
@resultado = "ganaste"
else
@resultado = "perdiste"
end
@resultado	
end

end

