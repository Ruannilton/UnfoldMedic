//
//  Dados.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Dados{
    
    static var ListaVacinas = [Vacinas]()
    static var ListaCirurgias = [Cirurgias]()
    static var ListaMedicamentos = [Medicamentos]()
    static var ListaAlergias = [Alergias]()
    static var ListaDoencasFisicas = [DoencasFisicas]()
    static var ListaAnamnese = [Anamnese]()
    
    init(json: [String: AnyObject]){
        //Vacinas
        if let  vet = json["Vacinas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Vacinas(json: jsonCel)
                Dados.ListaVacinas.append(x)
            }}
        
        //Cirurgias
        if let  vet = json["Cirurgias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Cirurgias(json: jsonCel)
                Dados.ListaCirurgias.append(x)
            }}
        
        //Medicamento
        if let  vet = json["Medicamentos"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Medicamentos(json: jsonCel)
                Dados.ListaMedicamentos.append(x)
            }}
        
        //Alergias
        if let  vet = json["Alergias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Alergias(json: jsonCel)
                Dados.ListaAlergias.append(x)
            }}
        
        //Anamnese
        if let  vet = json["Anamnese"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Anamnese(json: jsonCel)
                Dados.ListaAnamnese.append(x)
            }}
        
        
    }
}

