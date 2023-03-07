//
//  main.swift
//  Classe
//
//  Created by Barbara Silva on 2023-03-07.
//

import Foundation

/ OBJETO
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

class Cachorro {
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




