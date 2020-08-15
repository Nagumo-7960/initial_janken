//
//  NextViewController.swift
//  Janken1
//
//  Created by なぐも on 2020/08/14.
//  Copyright © 2020 Nagumo. All rights reserved.
//

import UIKit

var selectHand:String = ""


class NextViewController: UIViewController {
    
    
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var paper: UIButton!
    
    @IBOutlet weak var scissors: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func rockButton(_ sender: Any) {
        
        selectHand = "janken_gu"
        
        
        jankenResult()
        
    }
    
    
    @IBAction func scissorsButton(_ sender: Any) {
        
        selectHand = "janken_choki"
        
        jankenResult()
        
    }
    
    
    @IBAction func paperButton(_ sender: Any) {
        
        selectHand = "janken_pa"
        
        jankenResult()
        
    }
    
    
    func jankenResult(){
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController2
        nextVC.selectHand2 = selectHand
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
