class ContadorElectrico
    
    def initialize
        @kwh=0
        @maximeter=0
        @lecturas=[]
    end

    def read_kwh(kwh)
        @kwh=kwh
        
        @lecturas.push(kwh)
    end

    def read_maximeter(maximeter)
         @maximeter = maximeter if maximeter > @maximeter
    end

    def get_current_read
        puts "Lectura Actual: #{@kwh} kwh"
    end

    def get_current_maximeter
        puts "Maxímetro Actual: #{@maximeter} kW"
    end

    def get_last_reads(n)
        
        puts "Historial de lecturas: #{@lecturas.last(n)}"
    end

end
