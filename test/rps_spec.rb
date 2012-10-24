require 'rpslib.rb'
describe "Rps" do
before :each do
@rps=Rps.new
end

it "existe tirada del jugador humano cuando inicia play()" do
@rps.play("rock")
@rps.jugada.should=="rock"
end


it "existe tirada de la máquina cuando inicia playc()" do
@rps.play("rock")
@rps.jugadac.should==("rock" or "paper" or "scissors")
end


it "existe tirada valida" do

end


it "existe una tirada que gana" do
end


it "tirada recogida del humano valida cuando inicia obtener_humano()" do
end


it "tirada recogida de la maquina valida cuando inicia obtener_maquina()" do
end


it "ganador determinado al invocar jugar()" do
end


it "las tiradas de la máquina son aleatorias" do
end


it "las tiradas de la maquina y el humano son distintas a veces" do
end
end

