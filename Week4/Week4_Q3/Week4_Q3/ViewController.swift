//
//  ViewController.swift
//  Week4_Q3
//
//  Created by Hao on 2022/1/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stationId: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doJsonWithAsync()
    }
    
    let userQueue = DispatchQueue.global(qos: .userInitiated)
    
    // for JSON
    struct jsonGet : Codable {
        let stationAddress : String
        let stationID : String
        let stationName : String
    }
    func doJsonWithAsync() {
        userQueue.async {
            if let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json") {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data {
                        let jsonDecoder = JSONDecoder()
                        do {
                            let parsedJSON = try jsonDecoder.decode(jsonGet.self, from: data)
                            DispatchQueue.main.async {
                                self.stationId.text = parsedJSON.stationID
                                self.stationName.text = parsedJSON.stationName
                                self.address.text = parsedJSON.stationAddress
                            }
                        } catch {
                            print(error)
                        }
                    }
                }.resume()
            }
        }
    }
    
}

