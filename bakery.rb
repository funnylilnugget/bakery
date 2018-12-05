COOKIES = []
CAKES = []
CUPCAKES = []

class Items
  attr_accessor :name, :description, :price, :image
  def initialize(name, description, price, image)
    @name = name
    @description = description
    @price = price
    @image = image
    p "New Item created"
  end
end

class Cookies < Items
  def initialize(name, description, price, image)
    super(name, description, price, image)
    p "new cookie created"
    COOKIES << self
  end
end

class Cakes < Items
  def initialize(name, description, price, image)
    super(name, description, price, image)
    CAKES << self
  end
end

class Cupcakes < Items
  def initialize(name, description, price, image)
    super(name, description, price, image)
    CUPCAKES << self
  end
end
