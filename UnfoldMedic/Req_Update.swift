//
//  Req_Update.swift
//  UnfoldMedic
//
//  Created by student on 27/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
class UpdateUser{
    //funcioando
    static func Update(pUser:Usuario ){
        let parameters = pUser.GetJsonUpdate()
        
        
        
        
        guard let url = URL(string: "https://celularesbessa.mybluemix.net/unfold/update") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard  let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else{return}
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request){(data, response, error) in
            if let response = response{
                print(response)
            }
            
            if let data = data{
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch{
                    print(error)
                }
                
            }
            }.resume()
        
        
        
        
    }
    
    
    
    
}
