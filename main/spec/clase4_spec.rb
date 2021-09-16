require 'rspec'
require_relative '../src/Guerra2'

describe 'golondrinas' do

  let(:un_guerrero) {
    Guerrero.new
  }

  it 'defino un bloque y se define en el contexto del guerrero' do
    bloque = proc { energia }
    expect(un_guerrero.instance_eval(&bloque)).to eq(100)
  end

  it 'defin metodo para mixin y lo incorporan los que usan el mixin' do
    cincuenta = 50
    bloque = proc do
      def cincuenta
        50
      end
    end
    Atacante.module_eval(&bloque)
    expect(un_guerrero.cincuenta).to eq(50)
  end

end
