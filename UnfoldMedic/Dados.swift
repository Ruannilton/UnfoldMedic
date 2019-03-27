//
//  Dados.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Dados : Jsivis{
    
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
    
 
    func GetJson() -> [String : Any] {
        
        var doenca = [[String:Any]]()
        var cirurgias = [[String:Any]]()
        var medic = [[String:Any]]()
        var vacina = [[String:Any]]()
        var doencfisica = [[String:Any]]()
        var alergia = [[String:Any]]()
        var anaminese = [[String:Any]]()
        //fill array
        for x in ListaDoencas{
            doenca.append(x.GetJson())
        }
        for x in ListaCirurgias{
            cirurgias.append(x.GetJson())
        }
        for x in ListaMedicamentos{
            medic.append(x.GetJson())
        }
        for x in ListaVacinas{
            vacina.append(x.GetJson())
        }
        for x in ListaDoencasFisicas{
            doencfisica.append(x.GetJson())
        }
        for x in ListaAlergias{
            alergia.append(x.GetJson())
        }
        for x in ListaAnamnese{
            anaminese.append(x.GetJson())
        }
        
        
        
        
        return [
            "Doencas":doenca,
            "Vacinas":vacina,
            "Cirurgias":cirurgias,
            "Medicamentos":medic,
            "Alergias":alergia,
            "DoencasFisicas":doencfisica,
            "Anamnese":anaminese
           
        ]
    }
    

    
    
}

