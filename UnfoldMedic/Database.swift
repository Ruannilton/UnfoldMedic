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

    public static func getDadosCard()->[DadosCard]{
    
    return[
        DadosCard(nome: "Alergia", subs: "Suas alergias", tipo: DataType.Alergia),
        DadosCard(nome: "Doença", subs: "Suas doenças", tipo: DataType.Doenca),
        DadosCard(nome: "Anamnese", subs: "Suas anamneses", tipo: DataType.Anamnese),
        DadosCard(nome: "Cirurgia", subs: "Suas cirurgias", tipo: DataType.Cirurgia),
        DadosCard(nome: "Doenças Físicas", subs: "Suas doenças físicas", tipo: DataType.DoencaFisica),
        DadosCard(nome: "Vacias", subs: "Suas vacinas", tipo: DataType.Vacina)
        
        ]
    }
    
}
