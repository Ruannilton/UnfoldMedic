//
//  Req_GetAll.swift
//  UnfoldMedic
//
//  Created by student on 25/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation




class getAll{
    static func get (callback: @escaping (([Usuario]) -> Void)) {
        
        let endpoint: String = "https://celularesbessa.mybluemix.net/unfold/Get"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        var usuario = [Usuario]()
                        for usu in json{
                        usuario.append(Usuario(json: usu))
                        }
                     //   let usuario = Usuario(json: json[0])
                        
                       // let nomeEmpresa = empresa.nome
                        
                        // print("\(nomeEmpresa) tem \(empresa.celulares.count) quadrados pretos.")
                        print(json)
                        callback(usuario)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }
    
    
    
}

class getName{
    static func get (Nome:String ,callback: @escaping ((Usuario) -> Void)) {
        
        let endpoint: String = "https://celularesbessa.mybluemix.net/unfold/getName?Nome = \(Nome)"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: AnyObject] {
                        let usuario = Usuario(json: json)
                        print(json)
                        callback(usuario)
                        
                    }else {
                        
                        print("Errorrrr")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }
}
