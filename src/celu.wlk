object calculadora{
	
	method ocupaEspacio(){
		return 10
	}
	
	method gastaBateria(){
		return 0
	}
}

class Reproductor{
	
	var cantidad
	var tope
	var valorUnitario
	
	constructor(_cantidad,_tope,_vu){
		tope = _tope
		cantidad = _cantidad
		valorUnitario = _vu
	}
	
	method ocupaEspacio(){		
		return (valorUnitario*cantidad).min(tope) 
	}
	
	method gastaBateria(){
		return 2
	}
	
	method reproducir(){
		cantidad += 1
	}
	
}

class RedSocial{
	var base
	var valorUnitario
	var conversaciones
	
	constructor(_base,_conversaciones,_vu){
		base = _base
		valorUnitario = _vu
		conversaciones = _conversaciones
	}
	constructor(_base,_vu){
		base = _base
		valorUnitario = _vu
		conversaciones = 0
	}
	method ocupaEspacio(){
		return base + (valorUnitario*conversaciones)
	}
	
	method gastaBateria(){
		return conversaciones
	}
		
	method agregarConv(conv){
		conversaciones += conv
	}
}

object s3mini{
	var apps = []
	var ram = 1000
	var bateria = 100
	
	method ramLibre(){
		return ram - apps.sum({ app => app.ocupaEspacio()})
		}
	
	method agregarApp(_app){
		apps.add(_app)
	}
	method pasarMinutos(minutos){
		minutos.times({self.pasarUnMinuto()})
	}
	
	method pasarUnMinuto(){
		apps.forEach({app=> self.consumirBateria(app)})
	}
	method consumirBateria(app){
		bateria -= app.gastaBateria()
		if(bateria<=0) 
			error.throwWithMessage("sin bateria")
			//throw new Exception("sin bateria")
	}
	method bateria(){
		return bateria
	}
}