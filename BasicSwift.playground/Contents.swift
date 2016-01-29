
import UIKit

//tipo nome = valor;
//NSString *nome = @"Guilherme";


//let/var nome = valor
let nome = "Guilherme"
var novoNome = "Gueri-Gueri"

//let/var nome: tipo = valor
let sobrenome: String = "Pola"

//Opcionais
//? Admite que o valor pode ser nulo
//! Desembrulhar o valor
var numero: Int?
numero = 10
print(numero!)

//ERROR
//numero = nil
//print(numero!)

//Correta
if let novoNumero = numero{
    print(novoNumero)
}

//IF
if 1 < 2 {
    
}
if (1 < 2){

}
//ERROR
//if (1 < 2)
//    print("WOLOLO")

print("\(nome) \(sobrenome)")
print(nome + " " + sobrenome)

//Tupla
let numeros = (10, 20, 30)
numeros.0
numeros.1
numeros.2

var ferrari = (cilindradas: 1000, potencia: 600)
ferrari.cilindradas
ferrari.potencia

class WOLOLO {
    
}
//
var arrayPessoas = [Any]()
arrayPessoas.append("WOLOLO")
arrayPessoas.append(98)
arrayPessoas.append((10,20,30))
arrayPessoas.append(WOLOLO)


//Funções
//-(tipoRetorno)nomeMetodo: (tipoDoParametro)nomeInternoDoParametro{}
// func nomeDoMetodo(nomeDoParametro: tipoDoParametro) -> tipoDoRetorno


class primeiraClass {
    class func primeiraFuncao(usaNome nome: String) -> Int{
        
        var qtdeLetras = 0
        qtdeLetras = nome.characters.count
        return qtdeLetras
        
    }
}

primeiraClass.primeiraFuncao(usaNome: "Gervásio")


//Genericos
//Problema
func trocarInteiros( var a: Int, var  b: Int){
    
    let tempA = a
    a = b
    b = tempA
    
}
var numero1 = 10
var numero2 = 20

trocarInteiros(numero1, b: numero2)


//Solução
func trocar<WOLOLO>(var a: WOLOLO, var b: WOLOLO){
    
    let tempA = a
    a = b
    b = tempA
    
}
trocar("WOLOLO", b: "WOLOLO2")
trocar(10, b: 20)



//MAP
var arrayNumeros = [1,2,3,4,5,6]
arrayNumeros = arrayNumeros.map({$0 + 2})
arrayNumeros

//REDUCE
var arrayNumerosReduce = [1,2,3,4,6]
var arrayNumerosReduce2 = arrayNumerosReduce.reduce(0, combine: +)
arrayNumerosReduce2

//FILTER
var arrayNumerosFilter = [1,2,3,4,20,30]
var novoArrayNumerosFilter = arrayNumerosFilter.filter({$0 > 10})
novoArrayNumerosFilter

///Extensions
extension String{

    var toFloat: Float{
    
        return (self as NSString).floatValue
    }
    
    func test(val1: String? = "val1", baseUrl: String? = "http//:www.hello.com", val3: String?) {
        
        if let val = val1, let _ = baseUrl where val.characters.count > 5 {
            
             print(val)
        }
        
     
        
    }

}
"10".toFloat


"".test(val3: "")
"test".test(val3: "hello")

var statusCode: Int = 400
var statusMessage: String = "status :"
switch statusCode {
case 200...300:
    statusMessage += "\(statusCode)"
//case let batata where statusCode < 505:
//    statusMessage += "\(batata)"
//default:
//    statusMessage += "none"
case let batata:
    statusMessage += "\(batata)"
}
statusMessage

if case 200...300 = statusCode {
    
}

var count: Int = 0

for i in 30...50 where i % 3 == 0{
    count++
}

count





