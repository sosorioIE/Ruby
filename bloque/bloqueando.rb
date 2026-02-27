array=[]
def operar_array(array)
    array.each_with_index do |x,i|
        yield(x,i)
    end
end

operar_array(array){|x,i| puts x*i}
operar_array(array){|x,i| puts x-i}

