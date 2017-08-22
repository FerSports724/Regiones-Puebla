//
//  infoRegionesViewController.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 09/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class infoRegionesViewController: UIViewController {
    
    var datoRe2: Int?
    var tagRegion: Int?
    
    @IBOutlet var viewSalida: UIView!
    @IBOutlet var imagenInfo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.viewSalida.frame.size)
        UIImage(named: "BackgroundMap")?.draw(in: self.viewSalida.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.viewSalida.backgroundColor = UIColor(patternImage: image)
        
        viewSalida.layer.cornerRadius = 10
        viewSalida.layer.masksToBounds = true
        
        switch datoRe2{
        case 1?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioNorte")
        case 2?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioAngelopolis")
        case 3?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioAtlixco")
        case 4?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioMixteca")
        case 5?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioNororiental")
        case 6?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioSerdan")
        case 7?:
            imagenInfo.image = #imageLiteral(resourceName: "inicioTehuacan")
        default:
            print("Fufurufu")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func dismissVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnDatos(_ sender: UIButton) {
        let elTag = datoRe2
        let pantallaTres:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pantallaDatos = pantallaTres.instantiateViewController(withIdentifier: "datosGeneralesVC") as! datosGeneralesViewController
        pantallaDatos.datoRe3 = elTag
        self.present(pantallaDatos, animated: true, completion: nil)
    }
    
    
    @IBAction func btnAtractivos(_ sender: UIButton) {
        let miTag = datoRe2
        let pantallaCuatro:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pantallaAtractivos = pantallaCuatro.instantiateViewController(withIdentifier: "atractivosID") as! atractivosViewController
        pantallaAtractivos.datoRe4 = miTag
        self.present(pantallaAtractivos, animated: true, completion: nil)
    }
    
    

}
