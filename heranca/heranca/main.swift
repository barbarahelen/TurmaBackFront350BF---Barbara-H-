//
//  main.swift
//  heranca
//
//  Created by Barbara Silva on 2023-03-09.
//

import Foundation

// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animal {

}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


//Classe pai

class Pai {
    var nome: String
    var idade: Int
    var altura: Double
    
    init(nome: String, idade: Int, altura: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
    }
    
    func comer() {
        print("A pessoa esta comendo")
    }
    func respirar(){
        print("A pessoa esta trabalhando")
    }
}

class Filho1: Pessoa {
    var peso: Double
    var escola: String
    var anonascimento: Int
    
    init(peso: Double, escola: String, anonascimento: Int) {
        self.peso = peso
        self.escola = escola
        self.anonascimento = anonascimento
        super.init(Pai: Pai)
    }
    
}

class Filho2: Pessoa {
    
}

