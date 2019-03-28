//
//  Dados.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Dados : Jsivis{
    
      var _id: String
      var _rev: String
    
      var Nome: String
      var DataNasc: Date
      var TipoSanguineo: String
      var TipoConta: String
      var Login: String
      var Senha: String
      var Sexo: String
      var Cpf: String
      var Cidade:String
      var Estado: String
    
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
        _id = ""
        _rev = ""
        Nome = ""
        DataNasc = Date()
        TipoSanguineo = ""
        TipoConta = ""
        Login = ""
        Senha = ""
        Sexo = ""
        Cpf = ""
        Cidade = ""
        Estado = ""
        
    }
    init(json: [String: AnyObject]){
        
        self.Nome = json["Nome"] as? String ?? ""
        self.DataNasc = json["Nascimento"] as? Date ?? Date()
        self.TipoSanguineo = json["TipoSanguineo"] as? String ?? ""
        self.TipoConta = json["TipoConta"] as? String ?? ""
        self.Login = json["Login"] as? String ?? ""
        self.Senha = json["Senha"] as? String ?? ""
        self.Sexo = json["Sexo"] as? String ?? ""
        self.Cpf = json["Cpf"] as? String ?? ""
        self.Cidade = json["Cidade"] as? String ?? ""
        self.Estado = json["Estado"] as? String ?? ""
        self._id = json["_id"] as? String ?? ""
        self._rev = json["_rev"] as? String ?? ""

        var dad = (json["Dados"] as? [ String: AnyObject])! as [String: AnyObject]
        
        //Vacinas
        if let  vet = dad["Vacinas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Vacinas(json: jsonCel)
               ListaVacinas.append(x)
            }}
        
        //Cirurgias
        if let  vet = dad["Cirurgias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Cirurgias(json: jsonCel)
                ListaCirurgias.append(x)
            }}
        
        //Medicamento
        if let  vet = dad["Medicamentos"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Medicamentos(json: jsonCel)
               ListaMedicamentos.append(x)
            }}
        
        //Alergias
        if let  vet = dad["Alergias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Alergias(json: jsonCel)
                ListaAlergias.append(x)
            }}
        
        //Anamnese
        if let  vet = dad["Anamnese"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Anamnese(json: jsonCel)
                ListaAnamnese.append(x)
            }}
        //Anamnese
        if let  vet = dad["Doencas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Doencas(json: jsonCel)
                ListaDoencas.append(x)
            }
            
            if let  vet = dad["DoencasFisicas"] as? [ [String: AnyObject] ] {
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

