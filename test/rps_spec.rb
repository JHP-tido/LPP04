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

end

#it "ganador determinado al invocar jugar()" do
#end


#it "las tiradas de la maquina son aleatorias" do
#end


#it "las tiradas de la maquina y el humano son distintas a veces" do
#end

end
