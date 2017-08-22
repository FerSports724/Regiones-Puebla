//
//  lasImagensitas.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 22/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class lasImagensitas: UIPageViewController {
    
    var datoQueLlega: regionTehuacan!
    static var numOfAtr: Int!
    static var index: Int!
    static var imagenPasar: UIImage!
    static var nombreImagen: String!
    static var atractivoName: String!
    static var imagenesArreglini:[contenidoManager] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Fondo de pantalla*/
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "BackgroundMap")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        /*Aquí termina el código de fondo de pantalla*/
        
        lasImagensitas.atractivoName = datoQueLlega.nombreAtractivo
        lasImagensitas.numOfAtr = datoQueLlega.numeroAtractivos
        
        crearArreglo(arreglini: lasImagensitas.imagenesArreglini, nombreDelAtractivo: lasImagensitas.atractivoName, numeroAtrac: lasImagensitas.numOfAtr)
        
        dataSource = self
        
        if let firstVC = self.pageViewController(atIndex: 0){
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension lasImagensitas: UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        var index = (viewController as! ContentImagesViewController).lasImagenes.index
        index += 1
        
        return self.pageViewController(atIndex: index)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        var index = (viewController as! ContentImagesViewController).lasImagenes.index
        index -= 1
        
        return self.pageViewController(atIndex: index)
        
    }
    
    func pageViewController(atIndex: Int) -> ContentImagesViewController?{
        if atIndex == NSNotFound || atIndex < 0 || atIndex >= lasImagensitas.imagenesArreglini.count{
            return nil
        }
        
        if let pageVCO = storyboard?.instantiateViewController(withIdentifier: "imagenesAtr02") as? ContentImagesViewController{
            pageVCO.lasImagenes = lasImagensitas.imagenesArreglini[atIndex]
            
            return pageVCO
        }
        
        return nil
        
    }
    
}

//@discardableResult
func crearArreglo(arreglini:[contenidoManager], nombreDelAtractivo:String, numeroAtrac: Int!){
    
    lasImagensitas.imagenesArreglini = []
    let recibirAtr:String! = lasImagensitas.atractivoName
    var miString:String! = ""
    let ye:Int! = lasImagensitas.numOfAtr - 1
    
    for x in 0...ye{
        lasImagensitas.index = x
        miString = "\(recibirAtr!)" + "\(x)"
        lasImagensitas.nombreImagen = miString
        lasImagensitas.imagenPasar = UIImage(named: lasImagensitas.nombreImagen)
        let miElemento = contenidoManager(index: lasImagensitas.index, primeraImagen: lasImagensitas.imagenPasar)
        lasImagensitas.imagenesArreglini.append(miElemento)
    }
}
