//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 高橋　龍 on 2020/09/20.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshiteLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間", "昨日", "今日"]
    let dokoArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshiteArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chonge() {
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        doshiteLabel.text = doshiteArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }

    }
    
    @IBAction func reset() {
        
        itsuLabel.text = "---"
        dokoLabel.text = "---"
        daregaLabel.text = "---"
        doshiteLabel.text = "---"
        
        index = 0
        
    }
    
    @IBAction func random() {
        
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshiteIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokoIndex)")
        print("誰が: \(daregaIndex)")
        print("どうした: \(doshiteIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshiteLabel.text = doshiteArray[doshiteIndex]
        
        

    }


}

