class Resumen < Luchador
    def initialize(l1,l2,l3)
        @luchadores=[l1,l2,l3]
    end

    def mostrar_clasificacion
        puts "\n=== Clasificación Final ==="
        @luchadores.sort_by { |l| -l.victorias }.each_with_index do |l, i|
        puts "#{i + 1}. #{l.nombre} - #{l.victorias} victorias"
        end
    end
end
