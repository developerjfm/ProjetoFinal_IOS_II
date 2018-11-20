//
//  ArredondarBotao.swift
//  ProjetoFinal_Projeto Lojas
//
//  Created by Josimar  Fiuza Melo on 19/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

@IBDesignable
class ArredondarBotao: UIButton {
    
    @IBInspectable var roundButton:Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
        }
    }
}
