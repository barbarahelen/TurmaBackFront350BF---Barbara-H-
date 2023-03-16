//
//  main.swift
//  encapsulamento
//
//  Created by Barbara Silva on 2023-03-14.
//

import Foundation

// MARK: - Encapsulamento

// Private -> privado, ou seja, que não tenha acesso externo
// Public -> publico, ou seja, que tenha acesso externo

class Carro {
    
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String {
        return self.modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
    
}

var meuCarro: Carro = Carro(modelo: "BMW 320i")







