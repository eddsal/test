//
//  Exercice_4.swift
//  exerciceswift
//
//  Created by SUP'Internet 08 on 21/11/2018.
//  Copyright © 2018 SUP'Internet 08. All rights reserved.
//

import Foundation

class ApiManager {
    let baseUrl:String = "https://api.randomuser.me/"
    
    func getRandomUser(completion: @escaping (Any) -> Void)  {
      
        let route = baseUrl
            makeHTTPGetRequest(route, onCompletion: { json, err in
                completion(json as JSON)
            })
        }
        
        func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
            let request = NSMutableURLRequest(URL: NSURL(string: path)!)
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
                let json:JSON = JSON(data: data)
                onCompletion(json, error)
            })
            task.resume()
        }
    }



