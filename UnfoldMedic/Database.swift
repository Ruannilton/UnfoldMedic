//
//  Database.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

enum CardType{
   case Alergia,Doenca,Anamnese,Cirurgia,DoencaFisica,Vacina,Medicamentos
}

class DadosCard{

    var nome:String
    var subs:String
    var tipo:CardType
    
    init(nome:String,subs:String,tipo:CardType){
        self.nome = nome
        self.subs = subs
        self.tipo = tipo
    }

}

class Database{

    public static func getDadosCard()->[DadosCard]{
    return[
        DadosCard(nome:"Alergias",subs:"Lista de suas alergias",tipo:CardType.Alergia),
        DadosCard(nome:"Doenças",subs:"Lista de suas doenças",tipo:CardType.Doenca),
        DadosCard(nome:"Medicamentos",subs:"Lista de medicamentos já tomados",tipo:CardType.Medicamentos),
        DadosCard(nome:"Anamnese",subs:"Lista de suas alergias",tipo:CardType.Anamnese),
        DadosCard(nome:"Cirurgia",subs:"Cirurgias passadas",tipo:CardType.Cirurgia),
        DadosCard(nome:"Doenças Físicas",subs:"Lista de suas doenças físicas",tipo:CardType.DoencaFisica),
        DadosCard(nome:"Vacinas",subs:"Lista das vacinas já tomadas",tipo:CardType.Vacina)
        
        ]
    
    }
    
}
