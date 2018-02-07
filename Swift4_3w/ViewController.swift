//
//  ViewController.swift
//  Swift4_3w
//
//  Created by tatsumi kentaro on 2018/02/02.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label_when: UILabel!
    
    @IBOutlet var label_where: UILabel!
    
    @IBOutlet var label_who: UILabel!
    
    @IBOutlet var label_what: UILabel!
    
    
    var array_when: [String] = ["一年前","1ヶ月前","一週間前","昨日"]
    
    var  array_where:[String] = ["フランスで","イギリスで","イタリアで","オーストリアで"]
    
    var  array_who:[String] = ["僕が","彼女が","大統領が","ペンギンが"]
    
    var  array_what:[String] = ["叫んだ","泣いた","トイレした","失神した"]
    
    var num: Int = 0
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(){
        label_when.text = array_when[num]
        label_where.text = array_where[num]
        label_who.text = array_who[num]
        label_what.text = array_what[num]
        num += 1
        
        if num>3 {
            num = 0
        }
        
    }
    
    @IBAction func reset(){
        label_when.text = "----"
        label_where.text = "----"
        label_who.text = "----"
        label_what.text = "----"
        
        num = 0
    
    }
    
    @IBAction func random(){
        let rand1 = Int(arc4random_uniform(4))
        let rand2 = Int(arc4random_uniform(4))
        let rand3 = Int(arc4random_uniform(4))
        let rand4 = Int(arc4random_uniform(4))
        
        print("いつ\(rand1)")
        print("どこで\(rand2)")
        print("誰が\(rand3)")
        print("どうした\(rand4)")
        
        label_when.text = array_when[rand1]
        label_where.text = array_where[rand2]
        label_who.text = array_who[rand3]
        label_what.text = array_what[rand4]
        
        
        
    }


}

