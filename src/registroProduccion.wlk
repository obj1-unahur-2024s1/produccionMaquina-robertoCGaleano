object registroProduccion {
	const cantPiezas= []
    
    method agregarAlRegistro(cantidad){
        cantPiezas.add(cantidad)
    }
    method algunDiaSeProdujo(cantidad){
        return cantPiezas.contains(cantidad)
    }
    method maximoValorDeProduccion(){
        return cantPiezas.max()
    }
    method valoresDeProduccionPares(){
        return cantPiezas.filter({valor => valor%2==0}) // = ({ valor=> valor.even() })
    }
    
    method produccionEsAcotada(n1,n2){
        return cantPiezas.all({valor=> valor.between(n1,n2)})//({valor=> n1<valor and valor>n2 }) // = 
    }

    method produccionesSuperioresA(cuanto){
        return cantPiezas.filter({valor=> valor>cuanto })
    }
    method produccionesSumando(n){
        return cantPiezas.map({valor=> valor+n})
    }
    method totalProducido(){
        return cantPiezas.sum()
    }
    method ultimoValorDeProduccion(){
        return cantPiezas.last()
    }
    method cantidadProduccionesMayorALaPrimera(){
        return cantPiezas.filter({ valor=> valor> cantPiezas.first()}).size()
    }
    method primerValorDeProduccion(){
        return cantPiezas.first()
    }
    method cantidadProduccionesMayorALaPrimeraBis(){
        return cantPiezas.count({ valor=> valor> self.primerValorDeProduccion() })
    }
    //para poder realiza test
    method agregarAlRegistroLista(lista){
        cantPiezas.addAll(lista)
    }
    
}
