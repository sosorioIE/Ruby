require 'csv'
archivos=Dir.glob("*.rb")

CSV.open("archivos.csv","w") do |csv|
    csv << ["Archivo:","kB:","Ruta:","Fecha De Creación:"]

    archivos.each do |archivo|
      csv << [
        archivo,
        File.size(archivo)/1024.0,
        File.expand_path(archivo),
        File.ctime(archivo)
      ]
    end
end
