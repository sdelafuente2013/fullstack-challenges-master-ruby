require_relative "../models/customer"

class CustomersController
  def initialize(repository)
    @customer_repository = repository
  end

  def add
    puts "Ingrese el cliente a agregar: "
    name_customer = gets.chomp
    puts "Ingrese la direccion: "
    address_customer = gets.chomp
    @customer_repository.create(Customer.new(name: name_customer, address: address_customer))
  end

  def list
    @customer_repository.all.each do |customer|
      puts "#{customer.name} : #{customer.address}"
    end
  end
end
