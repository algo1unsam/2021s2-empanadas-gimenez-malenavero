/*object galvan {

	var sueldo = 15000
	var dinero = 0
	var deuda = 0

	method sueldo() { return sueldo }

	method deuda() 	{ return deuda  }

	method dinero() { return dinero }

	method sueldo(valor) { sueldo = valor }

	method dinero(valor) { dinero = valor }

	method deuda(valor)  { deuda = valor  }

	method cobrarSueldo() {
		
		if (self.sueldo() > self.deuda()) {
			const excedente = self.sueldo() - self.deuda()
			const totalDinero = excedente + self.dinero()
			self.dinero(totalDinero)
			self.deuda(0)
		} else {
			const deudaDisminuida = self.deuda() - self.sueldo()
			self.deuda(deudaDisminuida)
		}
	}

	method gastar(cuanto) {
		
		if (cuanto > self.dinero()) {
			const nuevaDeuda = self.deuda() + (cuanto - self.dinero())
			self.deuda(nuevaDeuda)
			self.dinero(0)
		} else {
			const dineroDisminuido = self.dinero() - cuanto
			self.dinero(dineroDisminuido)
		}
	}

}*/

object galvan {
    var sueldo = 15000
    var balance = 0
    
    method sueldo() { return sueldo    }
    method sueldo(nuevoValor) {    sueldo = nuevoValor    }
    method cobrarSueldo(){
        balance += sueldo
    }
    method gastar(cuanto){
        balance -= cuanto
    }
    method totalDeuda(){
		 return balance.min(0).abs()
    }
    method totalDinero(){
		return balance.max(0).abs()
    }
}

object baigorria {

	const montoPorEmpanada 			= 15
	var cantidadEmpanadasVendidas 	= 0
	var totalCobrado 				= 0
	
	method sueldo() { return cantidadEmpanadasVendidas * montoPorEmpanada } 
	
	method totalCobrado() { return totalCobrado	}

	method venderEmpanadas(cuantas) {
		cantidadEmpanadasVendidas += cuantas
	}

	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		cantidadEmpanadasVendidas = 0
	}
	
}

object gimenez {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

