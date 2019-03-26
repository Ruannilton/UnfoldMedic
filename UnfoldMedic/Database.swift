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

    static var ListaVacinas = [Vacinas]()
    static var ListaCirurgias = [Cirurgias]()
    static var ListaMedicamentos = [Medicamentos]()
    static var ListaAlergias = [Alergias]()
    static var ListaDoencasFisicas = [DoencasFisicas]()
    static var ListaAnamnese = [Anamnese]()
    static var ListaDoencas = [Doencas]()
    

    
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
    
       public static func Load(json: [String: AnyObject])->Void{
        //Vacinas
        if let  vet = json["Doencas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Doencas(json: jsonCel)
                ListaDoencas.append(x)
            }}

        //Vacinas
        if let  vet = json["Vacinas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Vacinas(json: jsonCel)
                ListaVacinas.append(x)
            }}
        
        //Cirurgias
        if let  vet = json["Cirurgias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Cirurgias(json: jsonCel)
                ListaCirurgias.append(x)
            }}
        
        //Medicamento
        if let  vet = json["Medicamentos"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Medicamentos(json: jsonCel)
                ListaMedicamentos.append(x)
            }}
        
        //Alergias
        if let  vet = json["Alergias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Alergias(json: jsonCel)
                ListaAlergias.append(x)
            }}
        
        //Anamnese
        if let  vet = json["Anamnese"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Anamnese(json: jsonCel)
                ListaAnamnese.append(x)
            }}
        
        
    }
    
}
