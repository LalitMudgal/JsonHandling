//
//  ViewController.swift
//  jsonHandling
//
//  Created by Lalit on 09/12/18.
//  Copyright © 2018 Lalit. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let url = URL(string: Constant.baseUrl) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data,
            error == nil else
            {
                print(error?.localizedDescription ?? "Response Error")
                return
            }
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
                print(jsonResponse)
                
                guard let res = jsonResponse as? [[String:Any]] else{
                    return
                }
                var model = [User]()
                model = res.compactMap(User.init)
                print("model data is \(model[0].id)")
                print("model title is \(model[0].title)")
            }catch let printError{
                print("Error",printError)
            }
        }
        
    task.resume()
      
}
}




