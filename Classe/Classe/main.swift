//
//  main.swift
//  Classe
//
//  Created by Barbara Silva on 2023-03-07.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
}

class Cachorrx {
    var raca: String = "Husky"
    var peso: Double = 40.7
    var cor: String = "Branco"
    var idade: Int = 5
    var porte: String = "Grande"
    
    func darcomida() {
        print("O cachorro esta comendo")
    }
    func passear(){
        print("O cachorro esta passeando")
    }
}

class Pessoa {
    var nome: String = "Barbara"
    var idade: Int = 27
    var altura: Double = 1.54
    var peso: Double = 53.5
    var profissao: String = "Engenheira"
    
    func comer() {
        print("A pessoa esta comendo")
    }
    func trabalhando(){
        print("A pessoa esta trabalhando")
    }
}

class Filme {
        var titulo: String = "As Branquelas"
        var diretor: String = "Keenen Ivory Wayans"
        var anoLancamento: Int = 2004
        var duracao: Int = 109
        var genero: String = "Comedia"
    
    func reproduzir() {
            print("O filme está sendo reproduzido.")
        }
        
        func pausar() {
            print("O filme foi pausado.")
        }
}

//criando o objeto
var meuFilme: Filme = Filme()

//Quando coloca esse Filme() estou dando vida ao meu objeto (Quando geramos a instancia)

//print(meuFilme.titulo)

//meuFilme.pausar()

// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoaa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
