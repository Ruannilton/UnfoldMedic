//
//  Req_Post.swift
//  UnfoldMedic
//
//  Created by student on 26/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation


class postUser{
    
    func post(pUser:Usuario ){
     //
       // let json: [AnyObject: AnyObject] = pUser
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "http://httpbin.org/post")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }
        
        task.resume()
        
    
    }




}
