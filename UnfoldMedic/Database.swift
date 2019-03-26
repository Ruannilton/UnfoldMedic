//
//  Database.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

protocol DadosUsuario {
    
}

enum DataType{
   case Alergia,Doenca,Anamnese,Cirurgia,DoencaFisica,Vacina,Medicamentos
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

    static var ListaVacinas = [Vacinas]()
    static var ListaCirurgias = [Cirurgias]()
    static var ListaMedicamentos = [Medicamentos]()
    static var ListaAlergias = [Alergias]()
    static var ListaDoencasFisicas = [DoencasFisicas]()
    static var ListaDoencas = [Doencas]()
    static var ListaAnamnese = [Anamnese]()
    
    public static func getDadosCard()->[DadosCard]{
    
    return[
        DadosCard(nome: "Alergia", subs: "Suas alergias", tipo: DataType.Alergia),
        DadosCard(nome: "Doença", subs: "Suas doenças", tipo: DataType.Doenca),
        DadosCard(nome: "Anamnese", subs: "Suas anamneses", tipo: DataType.Anamnese),
        DadosCard(nome: "Cirurgia", subs: "Suas cirurgias", tipo: DataType.Cirurgia),
        DadosCard(nome: "Doenças Físicas", subs: "Suas doenças físicas", tipo: DataType.DoencaFisica),
        DadosCard(nome: "Vacinas", subs: "Suas vacinas", tipo: DataType.Vacina),
        DadosCard(nome: "Medicamentos", subs: "Suas medicamentos", tipo: DataType.Medicamentos)
        ]
    }
    
    public static func getDadosUsuario(tipo:DataType)->[DadosUsuario]{
        switch tipo {
        case .Alergia:
            return ListaAlergias
        case .Anamnese:
            return ListaAnamnese
        case .Cirurgia:
            return ListaCirurgias
        case .Doenca:
            return ListaDoencas
        case .DoencaFisica:
            return ListaDoencasFisicas
        case .Vacina:
            return ListaVacinas
        case .Medicamentos:
            return ListaMedicamentos
    
        default:
            return ListaAlergias
            
        }
        
    }
    
}
