//
//  ViewController.swift
//  XMLParser
//
//  Created by Yudhvir Raj on 2017-12-07.
//  Copyright © 2017 Yudhvir Raj. All rights reserved.
//

import UIKit
import Alamofire
import EVReflection

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getXML(urlString: "https://thecatapi.com/api/images/get?format=xml&results_per_page=20")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getXML(urlString: String) {
        Alamofire.request(urlString, encoding: URLEncoding.default).validate().responseString {response in
            switch response.result {
            case .success(let value):
                print("\(value)")
                
                let data = Response(xmlString: value)
                
                data?.data
                
            //print("Stop Number Data: \(busStop)")
            case .failure(let error):
                print("busstopchange \(error)")
                print("something \(response)")
                
            }
        }
    }



}

