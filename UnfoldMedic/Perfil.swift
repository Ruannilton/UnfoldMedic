//
//  Perfil.swift
//  UnfoldMedic
//
//  Created by student on 25/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

public class Perfil{
    
    var nome: String
    var idade: Int
    var estado: String
    var cidade: String
    var numero: Int
    
    init(nome: String, idade: Int, estado: String, cidade: String, numero: Int) {
        self.nome = nome
        self.idade = idade
        self.estado = estado
        self.cidade = cidade
        self.numero = numero
    }

}
