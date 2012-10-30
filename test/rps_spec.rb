require 'rpslib'

describe "Rps" do
before :each do
@rps=Rps.new("rock")
end

it "existe tirada del jugador humano" do
@rps.jugada.should == :rock
end


it "existe tirada de la maquina" do
@rps.jugadac.should == :rock
end

it "existe lista valida de tiradas" do
@rps.tiradasv.should == [:rock,:paper,:scissors]
end


it "existe una lista valida de tiradas y quien gana" do
@rps.tiradasg.should == {:rock=>:scissors, :paper=>:rock, :scissors=>:paper}
end


it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
@rps.obtener_humano().should match(/(rock)|(paper)|(scissors)/)
end


it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
@rps.obtener_maquina().should match(/\A:(rock)|(paper)|(scissors)/)
end

it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
@rps.lista_resultados().should_not == nil #si no hay nada falla
end

it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
@rps.resultado.should_not == nil
end


it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
@rps.jugar().should_not == nil
end


#it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
#end

#it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
#end
end
