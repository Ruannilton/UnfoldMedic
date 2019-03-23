//
//  Database.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

enum DataType{
   case Alergia,Doenca,Anamnese,Cirurgia,DoencaFisica,Vacina
}

class DadosCard{

    var nome:String
    var subs:String
    var tipo:DataType
    
    init(nome:String,subs:String,tipo:DataType){
        self.nome = nome
        self.subs = subs
        self.tipo = tipo
    }

}

class Database{

    
    
}
