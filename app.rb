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


def total_size companies
    companies.reduce(0) { |total, company| total + company.size}
end


def companies_over_100 companies
    companies.filter {|company| company.size > 100}
end

def company_named_beta companies
    companies.find {|company| company.name == "Beta"}
end

def largest_company companies
    companies.max_by {|company| company.size}
end

def sort companies
    companies.reverse {|company| company.size}
end