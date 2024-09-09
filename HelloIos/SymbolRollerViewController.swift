//
//  SymbolRollerViewController.swift
//  HelloIos
//
//  Created by 주지홍 on 9/9/24.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = [
        "sum.min",
        "moon",
        "cloud",
        "wind",
        "snowflake"
    ]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    func makeSymbol() {
        let symbol = symbols.randomElement()!
        
        imageView.image = UIImage(
            systemName: symbol
        )
        
        label.text = symbol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeSymbol()
    }
    
    
    override func viewWillAppear(
        _ animated: Bool
    ) {
        super.viewWillAppear(
            animated
        )
    }
    
    override func viewDidAppear(
        _ animated: Bool
    ) {
        super.viewDidAppear(
            animated
        )
    }
    
    @IBAction func buttonTapped(
        _ sender: Any
    ) {
        makeSymbol()
    }
}
