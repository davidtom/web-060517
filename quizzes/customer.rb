class Customer
  attr_writer :name
  attr_reader :name
  def initialize(name, hometown)
    @name = name
    @hometown = hometown
  end

  def name

    @name
  end

  def foo
    self.name
  end
end


customer = Customer.new
customer.name = 'bob'
customer.name
  -> "bob"
<@name="bob">
