//
//  Dados.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Dados{
    
      var ListaVacinas = [Vacinas]()
      var ListaCirurgias = [Cirurgias]()
      var ListaMedicamentos = [Medicamentos]()
      var ListaAlergias = [Alergias]()
      var ListaDoencasFisicas = [DoencasFisicas]()
      var ListaDoencas = [Doencas]()
      var ListaAnamnese = [Anamnese]()
    
    /*public static func Limpar()->Void{
        ListaVacinas.removeAll()
        ListaCirurgias.removeAll()
        ListaMedicamentos.removeAll()
        ListaAlergias.removeAll()
        ListaDoencasFisicas.removeAll()
        ListaDoencas.removeAll()
        ListaAnamnese.removeAll()
    }
    */
    init(){
    }
    init(json: [String: AnyObject]){
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
        //Anamnese
        if let  vet = json["Doencas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Doencas(json: jsonCel)
                ListaDoencas.append(x)
            }
            
            if let  vet = json["DoencasFisicas"] as? [ [String: AnyObject] ] {
                for jsonCel in vet {
                    let x = DoencasFisicas(json: jsonCel)
                    ListaDoencasFisicas.append(x)
                }
            }
        
        }
        
    }
}

