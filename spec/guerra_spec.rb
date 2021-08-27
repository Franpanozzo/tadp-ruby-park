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

  let(:una_muralla2) {
    Muralla.new
  }

  it 'un espadachin ataca una muralla y esta pierde energia' do
    un_espadachin.atacar(una_muralla)
    expect(una_muralla.energia).to eq(180)
  end

  it 'test sobre autometodo en muralla' do
    class << una_muralla
      def deteriorar
        self.energia -= 10
      end
    end

    una_muralla.deteriorar()
    expect(una_muralla.energia).to eq(190)
  end

  it 'testeo atributos de instancia de clase por accesors' do
    un_espadachin.atacar(una_muralla)
    expect(una_muralla.energia).to eq(180)
    expect(una_muralla2.energia).to eq(200)
  end

end