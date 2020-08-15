//
//  NextViewController2.swift
//  Janken1
//
//  Created by なぐも on 2020/08/14.
//  Copyright © 2020 Nagumo. All rights reserved.
//

import UIKit

class NextViewController2: UIViewController {
    
    var selectHand2 = ""
    
    let ladyHand = ["janken_gu", "janken_choki", "janken_pa"]
    
    var randomLadyHand = ""
    
    let ladyWinComment = "水着のお姉さん「私の勝ちね・・・」"
    
    let ladyAikoComment = "水着のお姉さん「あいこになっちゃったわね・・・」"
    
    let ladyLoseComment = "水着のお姉さん「私の負けね・・・」"
    
    
    
    @IBOutlet weak var ladyComment: UILabel!
    
    @IBOutlet weak var resultHand: UIImageView!
    
    @IBOutlet weak var ladyResultHand: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultHand.image = UIImage(named:selectHand2)
        
        randomLadyHand = ladyHand.randomElement()!
        
        ladyResultHand.image = UIImage(named: randomLadyHand)
        
        prepareResult()
        
        
        
    }
    
    func prepareResult(){
        if selectHand2 == randomLadyHand{
            ladyComment.text = ladyAikoComment
        }
        
        if selectHand2 == "janken_gu"{
            
            if randomLadyHand == "janken_pa"{
                ladyComment.text = ladyWinComment
            }else if randomLadyHand == "janken_choki"{
                ladyComment.text = ladyLoseComment
            }
            
        }
        
        if selectHand2 == "janken_choki"{
            
            if randomLadyHand == "janken_gu"{
                ladyComment.text = ladyWinComment
            }else if randomLadyHand == "janken_pa"{
                ladyComment.text = ladyLoseComment
            }
            
        }
        
        if selectHand2 == "janken_pa"{
            
            if randomLadyHand == "janken_choki"{
                ladyComment.text = ladyWinComment
            }else if randomLadyHand == "janken_gu"{
                ladyComment.text = ladyLoseComment
            }
            
        }
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
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
