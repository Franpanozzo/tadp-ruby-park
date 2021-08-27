require 'rspec'
require_relative '../src/Golondrina'
require_relative '../src/Guerra'

describe 'golondrinas' do

  let(:un_espadachin) {
    Espadachin.new(Espada.new(50))
  }

  let(:una_muralla) {
    Muralla.new
  }

  it 'un espadachin ataca una muralla y esta pierde energia' do
    un_espadachin.atacar(una_muralla)
    expect(una_muralla.energia).to eq(180)
  end


end