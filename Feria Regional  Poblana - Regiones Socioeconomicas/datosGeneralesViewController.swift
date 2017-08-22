//
//  datosGeneralesViewController.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 12/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class datosGeneralesViewController: UIViewController {
    
    var datoRe3: Int?
    
    @IBOutlet var imagenDatos: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize3 = UIScreen.main.bounds
        let screenWidth = screenSize3.width
        
        /*Fondo de pantalla*/
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "BackgroundMap")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        /*Aquí termina el código de fondo de pantalla*/
        
        /**/
        if (screenWidth>740){
            switch datoRe3{
            case 1?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesNorteG")
            case 2?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesAngelopolisG")
            case 3?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesAtlixcoG")
            case 4?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesMixtecaG")
            case 5?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesNororientalG")
            case 6?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesSerdanG")
            case 7?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesTehuacanG")
            default:
                print("Fufurufu")
            }
        }
        else{
            switch datoRe3{
            case 1?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesNorteCH")
            case 2?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesAngelopolisCH")
            case 3?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesAtlixcoCH")
            case 4?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesMixtecaCH")
            case 5?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesNororientalCH")
            case 6?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesSerdanCH")
            case 7?:
                imagenDatos.image = #imageLiteral(resourceName: "datosGeneralesTehuacanCH")
            default:
                print("Fufurufu")
            }
        }
        
        /**/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func closeButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
