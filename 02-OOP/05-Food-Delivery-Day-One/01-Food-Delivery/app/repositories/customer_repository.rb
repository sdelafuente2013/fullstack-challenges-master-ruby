require 'csv'
require_relative '../models/customer'

class CustomerRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @customers = []
    @next_id = 1
    load_csv if File.exist?(@csv_file)
  end

  def create(new_customer)
    new_customer.id = @next_id
    @customers << new_customer
    @next_id += 1
    save_csv
  end

  def all
    @customers
  end

  def find(id)
    @customers.find do |customer|
      customer.id == id
    end
  end

  # Guardando en el CSV
  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "address"]
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

  # Visualizando/extrayendo los datos desde el CSV
  def load_csv
    CSV.foreach(@csv_file, headers: true) do |row|
      @customers << Customer.new(id: row[0].to_i, name: row[1], address: row[2])
    end
    @next_id = @customers.last.id + 1 unless @customers.empty?
  end
end
