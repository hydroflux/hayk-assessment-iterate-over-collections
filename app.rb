require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end

end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

def company_readout companies
    companies.map {|company| company.name + ' - ' + company.size.to_s}
end 


def all_sizes companies
    companies.reduce do |total_size, company|
        binding.pry
    end
end