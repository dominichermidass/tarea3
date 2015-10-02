#Solution File
class Nodo
     def initialize(valor,siguiente=nil)
        @valor= valor
        @siguiente = siguiente
     end
	
	def enlazarSiguiente(siguiente)
		@siguiente = siguiente			
			
	end
      
     def obtenerSiguiente()

      return @siguiente

     end

     def obtenerValor()
       return @valor
     end
	def ponerValor(valor)
		@valor = valor
	end
     
end

class Liga

		def initialize()
				@cabeza = nil		
				@tamano = 0		
		end

		def agregar(dato)
			if @cabeza == nil
				@cabeza = dato
			
			else
					temp = @cabeza
					nodo = Nodo.new("#{dato}",temp)		
					@cabeza = nodo
			end
			
			@tamano = @tamano + 1
		end
		
		def tamano()

		return @tamano

		end

		def buscar(posicion)
				contador = 0
				temporal = @cabeza		
			
				while (contador < posicion)
						temporal  = temporal.obtenerSiguiente
					contador = contador + 1
		
				end
				return temporal.obtenerValor
		end

		def eliminar(posicion)
			contador = 0
			temp = @cabeza

			while(contador < (posicion-1))
			temp = temp.obtenerSiguiente
			contador = contador + 1
			end
		
		temp.enlazarSiguiente(temp.obtenerSiguiente.obtenerSiguiente)
		@tamano = @tamano +1

		end

	def aumentar(posicion,valor)
	contador = 0
	temp = @cabeza		
	
	while(contador < posicion)
		temp = temp.obtenerSiguiente
		contador= contador + 1
	end
	temp.ponerValor(valor)
	end
	


end


lista = Liga.new()
variable = 2
puts "escribe los que quieras agregar"
contador = 0
begin 
		
		variable= gets
		if contador == 0
		  variable0 = variable
		end
		if variable.to_i != -1
		lista.agregar(variable)
		end
	contador = contador + 1
end while variable.to_i != -1

if variable.to_i == -1 
	contador = ( (lista.tamano.to_i) -2)
	letrero = ""
	while(contador >= 0)
   
	if contador == 0
	letrero = "#{letrero}"+"#{lista.buscar(contador).chomp()} "
	contador = contador -1
	else
	letrero = "#{letrero}"+"#{lista.buscar(contador).chomp()}, "
	contador = contador -1
	end

	end
variable0 = "#{variable0.chomp()},"+"#{letrero.chomp()}"
puts variable0
end

