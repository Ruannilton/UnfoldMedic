//
//  Database.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

protocol DadosUsuario {
         func getNome()-> String
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

    static var dados = Dados()
    
    
    
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
    /*
    public static func Limpar()->Void{
        ListaMedicamentos.removeAll()
        ListaAnamnese.removeAll()
        ListaDoencas.removeAll()
        ListaDoencasFisicas.removeAll()
        ListaAlergias.removeAll()
        ListaCirurgias.removeAll()
        ListaVacinas.removeAll()
    }
    
    public static func Load(dados:Dados)->Void{
        
        ListaVacinas.insert(contentsOf: dados.ListaVacinas, at: 0)
        ListaCirurgias.insert(contentsOf: dados.ListaCirurgias, at: 0)
        ListaMedicamentos.insert(contentsOf: dados.ListaMedicamentos, at: 0)
        ListaAlergias.insert(contentsOf: dados.ListaAlergias, at: 0)
        ListaAnamnese.insert(contentsOf: dados.ListaAnamnese, at: 0)
        ListaDoencasFisicas.insert(contentsOf: dados.ListaDoencasFisicas, at: 0)
        ListaDoencas.insert(contentsOf: dados.ListaDoencas, at: 0)
        
        print(ListaVacinas.count)
    }*/
    
    public static func Load(dados:Dados)->Void{
        Database.dados = dados;
        print(Database.dados.Nome)
        print(Database.dados.ListaDoencas.count)
    }
    
    public static func getDadosUsuario(tipo:DataType)->[DadosUsuario]{
        switch tipo {
        case .Alergia:
            return dados.ListaAlergias
        case .Anamnese:
            return dados.ListaAnamnese
        case .Cirurgia:
            return dados.ListaCirurgias
        case .Doenca:
            return dados.ListaDoencas
        case .DoencaFisica:
            return dados.ListaDoencasFisicas
        case .Vacina:
            return dados.ListaVacinas
        case .Medicamentos:
            return dados.ListaMedicamentos
    
        }
        
        
    }
    
}
