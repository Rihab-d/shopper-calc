//
//  ViewController.swift
//  window-shopper
//
//  Created by rihab aldabbagh on 11/15/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class mainvc: UIViewController {

    @IBOutlet weak var wageTXT: currencyText!
    
    
    @IBOutlet weak var priceTXT: currencyText!
    
    
    @IBOutlet weak var resultLBL: UILabel!
    
    
    @IBOutlet weak var hoursLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60))
       calcBtn.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        calcBtn.setTitle("CALCULATE ", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(mainvc.calculate), for: .touchUpInside)
        wageTXT.inputAccessoryView = calcBtn
        priceTXT.inputAccessoryView = calcBtn
        
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
    }

  @objc  func calculate(){
    if let wageTxt = wageTXT.text, let priceTxt = priceTXT.text {
        if let wage = Double(wageTxt), let price = Double(priceTxt){
            view.endEditing(true)
            resultLBL.isHidden = false
            hoursLBL.isHidden = false
            resultLBL.text = "\(Wage.getHours(forwage: wage, andPrice:price))"
        }
    }
    }

    @IBAction func clearPressed(_ sender: Any) {
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        wageTXT.text = ""
        priceTXT.text = ""
    }
}

