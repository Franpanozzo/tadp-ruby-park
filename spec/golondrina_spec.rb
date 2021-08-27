require 'rspec'
require_relative '../src/Golondrina'

describe 'golondrinas' do

  let(:una_golondrina) {
    Golondrina.new
  }

  it 'deberia perder energia cuando vuela' do
    una_golondrina.volar(10)
    expect(una_golondrina.energia).to eq(900)
  end

  it 'deberia ganar energia cuando vuela' do
    una_golondrina.comer(5)
    expect(una_golondrina.energia).to eq(1025)
  end

  it 'prueba bloque' do
    una_golondrina.ejecutar_bloque {|it| it.energia = 22}
    expect(una_golondrina.energia).to eq(22)
  end

end