//
//  ContentImagesViewController.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 22/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class ContentImagesViewController: UIViewController {
    
    @IBOutlet var imagenAtractivo: UIImageView!
    @IBOutlet var controPagina: UIPageControl!
    
    @IBOutlet var vistaImagen: UIView!
    
    
    var lasImagenes:contenidoManager!
    var datoRegion:regionTehuacan!
    var numeroPuntos:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        //numeroPuntos = self.datoRegion.numeroAtractivos
        //print(numeroPuntos)
        
        self.imagenAtractivo.image = self.lasImagenes.primeraImagen
        //self.controPagina.currentPage = self.lasImagenes.index
        
        vistaImagen.layer.cornerRadius = 10
        vistaImagen.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func closeVentanita(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
