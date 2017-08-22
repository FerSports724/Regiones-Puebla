//
//  contenidoManager.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 22/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import Foundation
import UIKit

class contenidoManager: NSObject{
    var index = 0
    var primeraImagen:UIImage!
    /*var nombreAtr:String!
    var miRegionsita: regionTehuacan!*/
    
    init(index:Int, primeraImagen:UIImage) {
        self.index = index
        self.primeraImagen = primeraImagen
    }
}
