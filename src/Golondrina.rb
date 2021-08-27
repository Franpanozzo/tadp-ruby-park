class Golondrina
  attr_accessor :energia

  def initialize
    self.energia = 1000
  end

  def volar(km)
    self.energia -= 10 *km
  end

  def comer(gramos)
    self.energia += gramos * 5
  end

  def pasar_bloque(&bloque)
    bloque.call(self)
  end

  def ejecutar_bloque(&bloque)
    pasar_bloque(&bloque)
  end


end