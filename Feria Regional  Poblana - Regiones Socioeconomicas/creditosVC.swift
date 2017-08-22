//
//  creditosVC.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 31/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class creditosVC: UIViewController {
    
    var arregloCreditos:[alumnosCreditos] = []
    let arrayDescripcion:[String] = ["Leticia Marín Hernández", "Fernando Vázquez Bernal"]
    
    let arrayNorte:[String] = ["Paulina Carreto Ramírez", "Renee Ceballos Herrera", "Paulina León Ablanedo", "Diego Ablanedo Jiménez", "Lily Castillo Calderón", "Nicolle Freyre Roberts"]
    
    let arrayAnge:[String] = ["José Eduardo Castilla Ponce", "Rodrigo Márquez Vilchis", "Alejandro Martínez Gutiérrez", "Renzo André Martínez Valera", "Geraldine Michelle Téllez Guzmán"]
    
    let arrayAtlixco:[String] = ["Ana Paula Hernández González", "Sara Súchil Gálvez", "Carlos Rodrigo Cedeño Gutiérrez", "Dafne Schecid Díaz Tostado", "Rodrigo Reyes Garci Crespo"]
    
    let arrayMixteca:[String] = ["Hugo Mota Sorondo", "Yael Pérez Ramos", "María Renee Vázquez Ibarra", "Daniel Martínez Condado", "Gabriela Pedraza Campos", "José Luis Reyes Méndez"]
    
    let arrayNororiental:[String] = ["Karime Ortiz Sánchez", "Gerardo Román Tanús", "Gerardo Alí Tejeda Vázquez", "Moisés Emmanuel Águila Bernal", "Sarahí Jiménez Castañeda", "Ana Karen Martínez Limón"]
    
    let arraySerdan:[String] = ["Carlos Rodrigo Cisneros Gaeta", "Rodrigo López Pérez", "Montserrat Ponce Bonfil", "Alan Dávila Segura", "Daniela Laug Ajuria", "María Fernanda Zamorano García"]
    
    let arrayTehuacan:[String] = ["Diego Díaz Ávila", "Jorge Uriel Hernández Anzures", "Leticia Ahtziry Rueda Arias", "Mariana Corona Badillo", "Adrián Gómez Minutti", "Viviana Tepichín Vélez"]
    
    let arrayLibro:[String] = ["Trujillo, M. (2008). HISTORIA REGIONAL. México. McGraw Hill."]
    
    let arrayLinks:[String] = ["http://axochiapancultural.blogspot.mx/", "http://d13noticiashuatlatlauca.blogspot.mx/", "direcciondepatrimoniopuebla.wordpress.com/", "http://mexico.pueblosamerica.com/", "http://www.panoramio.com/", "http://tepexi.blogspot.mx/", "http://museoregionaltepexir.blogspot.mx/", "http://mapio.net/", "http://www.pueblaonline.com.mx/", "http://laregiondetlatlauqui.blogspot.mx/", "https://www.flickr.com/", "http://wikipuebla.poblanerias.com/", "http://puebla.travel/", "http://destierro-voluntario.blogspot.mx/", "http://empresastehuacan.com/", "http://www.icadtotal.com/", "https://es.wikipedia.org/", "http://danzadelostecuanes.blogspot.mx/", "http://www.reydocbici.com/", "http://sic.cultura.gob.mx/", "https://www.angelopolis.com/", "http://academiatlatoani.blogspot.mx/"]
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Fondo de pantalla*/
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "BackgroundMap")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        /*Aquí termina el código de fondo de pantalla*/
        
        var losAlumnos = alumnosCreditos(losAlucnos:["Desarrollo":arrayDescripcion])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Sierra Norte":arrayNorte])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Angelópolis":arrayAnge])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Atlixco":arrayAtlixco])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Mixteca":arrayMixteca])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Sierra Nororiental":arrayNororiental])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Serdan":arraySerdan])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Tehuacan":arrayTehuacan])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Libros":arrayLibro])
        arregloCreditos.append(losAlumnos)
        
        losAlumnos = alumnosCreditos(losAlucnos:["Links":arrayLinks])
        arregloCreditos.append(losAlumnos)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /*Close button*/
    @IBAction func backButtonMain(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }

}

extension creditosVC: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return self.arrayDescripcion.count
        case 1:
            return self.arrayNorte.count
        case 2:
            return self.arrayAnge.count
        case 3:
            return self.arrayAtlixco.count
        case 4:
            return self.arrayMixteca.count
        case 5:
            return self.arrayNororiental.count
        case 6:
            return self.arraySerdan.count
        case 7:
            return self.arrayTehuacan.count
        case 8:
            return self.arrayLibro.count
        case 9:
            return self.arrayLinks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "datosCell", for: indexPath) as! creditosVCCelda
        
        switch indexPath.section{
        case 0:
            if indexPath.row == 0{
                cell.labelRegion.text = "Desarrollo"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayDescripcion[indexPath.row]
        case 1:
            if indexPath.row == 0{
                cell.labelRegion.text = "Sierra Norte"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayNorte[indexPath.row]
        case 2:
            if indexPath.row == 0{
                cell.labelRegion.text = "Angelópolis"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayAnge[indexPath.row]
        case 3:
            if indexPath.row == 0{
                cell.labelRegion.text = "Valle de Atlixco y Matamoros"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayAtlixco[indexPath.row]
        case 4:
            if indexPath.row == 0{
                cell.labelRegion.text = "Mixteca"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayMixteca[indexPath.row]
        case 5:
            if indexPath.row == 0{
                cell.labelRegion.text = "Sierra Nororiental"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayNororiental[indexPath.row]
        case 6:
            if indexPath.row == 0{
                cell.labelRegion.text = "Valle de Serdán"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arraySerdan[indexPath.row]
        case 7:
            if indexPath.row == 0{
                cell.labelRegion.text = "Tehuacán y Sierra Negra"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayTehuacan[indexPath.row]
        case 8:
            if indexPath.row == 0{
                cell.labelRegion.text = "Bibliografía"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayLibro[indexPath.row]
        case 9:
            if indexPath.row == 0{
                cell.labelRegion.text = "Enlaces"
            }else{
                cell.labelRegion.text = ""
            }
            cell.labelPrimeraDatos.text = self.arrayLinks[indexPath.row]
        default:
            break
        }
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        
        switch section {
        case 0:
            title = "Feria Regional Poblana"
        case 1:
            title = "Integrantes por región"
        case 8:
            title = "Referencias bibliográficas"
        case 9:
            title = "Links y referencias web"
        default:
            break
        }
        
        return title
    }
    
}

extension creditosVC: UITableViewDelegate{
    
}
