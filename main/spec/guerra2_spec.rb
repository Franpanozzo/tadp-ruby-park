require 'rspec'
require_relative '../src/Guerra2'

describe 'golondrinas' do

  let(:un_guerrero) {
    Guerrero.new
  }

  let(:un_guerrero2) {
    Guerrero.new
  }

  let(:un_guerrero3) {
    Guerrero.new
  }

  it 'un guerrero puede descansar como defensor y atacante' do
    un_guerrero.descansar
    expect(un_guerrero.energia).to eq(110)
    expect(un_guerrero.descansado).to eq(true)
  end

  it 'atacan a un peloton cobarde y se retira' do
    un_peloton = Peloton.cobarde([un_guerrero,un_guerrero2])
    un_guerrero.lastimado()
    expect(un_peloton.retirado).to eq(true)
  end

  it 'atacan a un peloton cobarde y se retira' do
    un_guerrero.energia = 20
    un_peloton = Peloton.descansador([un_guerrero,un_guerrero2])
    un_guerrero.lastimado()
    expect(un_guerrero.energia).to eq(30)
    expect(un_guerrero2.energia).to eq(100)
  end

  it 'agregar integrante a peloton' do
    un_peloton = Peloton.descansador([un_guerrero,un_guerrero2])
    un_peloton.agregarIntegrante(un_guerrero3)
    expect(un_peloton.integrantes.include? un_guerrero3).to eq(true)
  end


end
