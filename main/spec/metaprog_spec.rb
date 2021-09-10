require 'rspec'
require_relative '../src/Guerra2'

describe 'golondrinas' do

  let(:un_guerrero) {
    Guerrero.new
  }

  let(:atila) {
    Guerrero.new
  }

  it 'send a un guerrero' do
    Guerrero.send(:define_method, :saluda) {
      'Hola'
    }
    expect(un_guerrero.saluda).to eq("Hola")
  end

  #ESTOS 2 TESTS DE ABAJO SON LO MISMO, DOS FORMAS DISTINTAS DE DEFINIR AUTOMETODOS.
  # TAMBIEN ESTA LA DE ABRIR LA AUTOCLASE CON Class << , COMO EN 'guerra_spec'

  it 'def method en single method de atila'do
  atila.define_singleton_method(:saluda) {
    'Hola soy Atila'
  }
  expect(atila.saluda).to eq("Hola soy Atila")
  end

  it 'def method en autoclase de atila 2'do
    atila.singleton_class.send(:define_method, :saluda) {
      'Hola soy Atila'
    }

    atila.singleton_class.send(:define_method, :darse_dopamina) {
      self.energia = 500
    }
    expect(atila.saluda).to eq("Hola soy Atila")
    expect(atila.darse_dopamina).to eq(500)
  end

  # -------------------------------------------------------------------------------

  it 'definiendo atributos para autoclase' do
    atila.singleton_class.send(:attr_accessor, :edad)
    atila.edad = 5
    expect(atila.edad).to eq(5)
  end





end












