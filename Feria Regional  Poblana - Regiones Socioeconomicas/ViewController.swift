//
//  ViewController.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 01/12/16.
//  Copyright © 2016 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Fondo de pantalla*/
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "BackgroundMap")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        /*Aquí termina el código de fondo de pantalla*/
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        print("---------------------------------------------------------")
        print(screenWidth)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func regionInformacion(_ sender: UIButton) {
        let tag = sender.tag
        let pantallaDos:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pantallaRegion = pantallaDos.instantiateViewController(withIdentifier: "infoRegiones") as! infoRegionesViewController
        pantallaRegion.datoRe2 = tag
        self.navigationController?.showDetailViewController(pantallaRegion, sender: tag)
    }
    
    @IBAction func moreInfoButton(_ sender: UIButton) {
    }
    
}
