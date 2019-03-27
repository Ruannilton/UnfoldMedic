//
//  Req_Post.swift
//  UnfoldMedic
//
//  Created by student on 26/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation


class postUser{
    //funcioando
    static func post(pUser:Usuario ){
        let parameters = pUser.GetJson()
        
        
        
        
        guard let url = URL(string: "https://celularesbessa.mybluemix.net/unfold/Post") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
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
