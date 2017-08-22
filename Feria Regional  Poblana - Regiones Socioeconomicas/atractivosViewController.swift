//
//  atractivosViewController.swift
//  Feria Regional  Poblana - Regiones Socioeconomicas
//
//  Created by Fernando Vazquez Bernal on 16/05/17.
//  Copyright © 2017 Fernando Vazquez Bernal. All rights reserved.
//

import UIKit

class atractivosViewController: UIViewController {
    static var ejemplo:[regionTehuacan] = []
    var datoRe4: Int?
    @IBOutlet var brincaLaTablita: UITableView!
    @IBOutlet var navBar: UINavigationItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch datoRe4{
        case 1?:
            crearAtractivosSierraNorte(miSierraNorte: atractivosViewController.ejemplo)
            navBar.title = "Sierra Norte"
        case 2?:
            crearAtractivosAngelopolis(miAngelopolis: atractivosViewController.ejemplo)
            navBar.title = "Angelópolis"
        case 3?:
            crearAtractivosAtlixco(miAtlixco: atractivosViewController.ejemplo)
            navBar.title = "Valle de Atlixco y Matamoros"
        case 4?:
            crearAtractivosMixteca(miMixteca: atractivosViewController.ejemplo)
            navBar.title = "Mixteca"
        case 5?:
            crearAtractivosSierraNororiental(miSierraNoriental: atractivosViewController.ejemplo)
            navBar.title = "Sierra Nororiental"
        case 6?:
            crearAtractivosSerdan(miSerdan: atractivosViewController.ejemplo)
            navBar.title = "Valle de Serdán"
        case 7?:
            crearAtractivosTehuacan(miTehuacan: atractivosViewController.ejemplo)
            navBar.title = "Tehuacán y Sierra Negra"
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func backButtonAtractivo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}


extension atractivosViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atractivosViewController.ejemplo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let laRegion = atractivosViewController.ejemplo[indexPath.row]
        let regionID = "atractivo"
        let miCelda = self.brincaLaTablita.dequeueReusableCell(withIdentifier: regionID, for: indexPath) as! CeldasViewCell
        miCelda.imagenCelda.image = laRegion.atractivo01
        return miCelda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAtractivo"{
            
            if let indexPath = self.brincaLaTablita.indexPathForSelectedRow{
                let selectedAtr = atractivosViewController.ejemplo[indexPath.row]
                let destinationVC = segue.destination as! lasImagensitas
                destinationVC.datoQueLlega = selectedAtr
            }
        }
    }
}

extension atractivosViewController: UITableViewDelegate{
    
}

/*Funciones para crear las celdas de los atractivos de las regiones*/
//@discardableResult
/*Región Sierra Norte: Tag -> 1*/
func crearAtractivosSierraNorte(miSierraNorte: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "sierraNorteZacatlan"), nombreAtractivo: "Zacatlan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "sierraNorteXicotepec"), nombreAtractivo: "Xicotepec", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "sierraNorteChignahuapan"), nombreAtractivo: "Chignahuapan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "sierraNorteHuauchinango"), nombreAtractivo: "Huauchinango", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
    }else{
        
        var regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNorteZacatlanCH"), nombreAtractivo: "Zacatlan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNorteXicotepecCH"), nombreAtractivo: "Xicotepec", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNorteChignahuapanCH"), nombreAtractivo: "Chignahuapan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
        
        regionSierraNorte = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNorteHuauchinangoCH"), nombreAtractivo: "Huauchinango", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNorte)
    }
    
}

/*Región Angelópolis: Tag -> 2*/
func crearAtractivosAngelopolis(miAngelopolis: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisTecaliG"), nombreAtractivo: "Tecali", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisPueblaG"), nombreAtractivo: "Puebla", numeroAtractivos: 5)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisCholulaG"), nombreAtractivo: "Cholula", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisHuejotzingoG"), nombreAtractivo: "Huejotzingo", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisCuautinchanG"), nombreAtractivo: "Cuautinchan", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
    }else{
        
        var regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisTecaliCH"), nombreAtractivo: "Tecali", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisPueblaCH"), nombreAtractivo: "Puebla", numeroAtractivos: 5)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisCholulaCH"), nombreAtractivo: "Cholula", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisHuejotzingoCH"), nombreAtractivo: "Huejotzingo", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAngelopolis)
        
        regionAngelopolis = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAngelopolisCuautinchanCH"), nombreAtractivo: "Cuautinchan", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAngelopolis)
    }
    
}

/*Región Atlixco: Tag -> 3*/
func crearAtractivosAtlixco(miAtlixco: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atlixcoTochimilco"), nombreAtractivo: "Tochimilco",numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atlixcoIzucar"), nombreAtractivo: "Izucar", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atlixcoAtlixco"), nombreAtractivo: "Atlixco", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atlixcoTepapayeca"), nombreAtractivo: "Tepapayeca", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atlixcoHuaquechula"), nombreAtractivo: "Huaquechula", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
    }else{
        
        var regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAtlixcoTochimilcoCH"), nombreAtractivo: "Tochimilco",numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAtlixcoIzucarCH"), nombreAtractivo: "Izucar", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAtlixcoAtlixcoCH"), nombreAtractivo: "Atlixco", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAtlixcoTepapayecaCH"), nombreAtractivo: "Tepapayeca", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
        
        regionAtlixco = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrAtlixcoHuaquechulaCH"), nombreAtractivo: "Huaquechula", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionAtlixco)
    }
    
}

/*Región Mixteca: Tag -> 4*/
func crearAtractivosMixteca(miMixteca: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaTepexiG"), nombreAtractivo: "Tepexi", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaAcatlanG"), nombreAtractivo: "Acatlan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaMolcaxacG"), nombreAtractivo: "Molcaxac", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaHuatlatlaucaG"), nombreAtractivo: "Huatlatlauca", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionMixteca)
        
    }else{
        
        var regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaTepexiCH"), nombreAtractivo: "Tepexi", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaAcatlanCH"), nombreAtractivo: "Acatlan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaMolcaxacCH"), nombreAtractivo: "Molcaxac", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionMixteca)
        
        regionMixteca = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrMixtecaHuatlatlaucaCH"), nombreAtractivo: "Huatlatlauca", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionMixteca)
    }
    
}

/*Región Sierra Nororiental: Tag -> 5*/
func crearAtractivosSierraNororiental(miSierraNoriental: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "nororientalCuetzalan"), nombreAtractivo: "Cuetzalan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "nororientalZapotitlan"), nombreAtractivo: "ZapotitlanM", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "nororientalYohualichan"), nombreAtractivo: "Yohualichan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "nororientalZacapoaxtla"), nombreAtractivo: "Zacapoaxtla", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "nororientalTlatlauquitepec"), nombreAtractivo: "Tlatlauquitepec", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
    }else{
        
        var regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNororientalCuetzalanCH"), nombreAtractivo: "Cuetzalan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNororientalZapotitlanMCH"), nombreAtractivo: "ZapotitlanM", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNororientalYohualichanCH"), nombreAtractivo: "Yohualichan", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNororientalZacapoaxtlaCH"), nombreAtractivo: "Zacapoaxtla", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
        
        regionSierraNoriental = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrNororientalTlatlauquitepecCH"), nombreAtractivo: "Tlatlauquitepec", numeroAtractivos: 3)
        atractivosViewController.ejemplo.append(regionSierraNoriental)
    }
    
}

/*Región Serdán: Tag -> 6*/
func crearAtractivosSerdan(miSerdan: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanAljojucaG"), nombreAtractivo: "Aljojuca", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanAtzitzintlaG"), nombreAtractivo: "Atzitzintla", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanTecamachalcoG"), nombreAtractivo: "Tecamachalco", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanChalchicomulaG"), nombreAtractivo: "Chalchicomula", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanTepeyahualcoG"), nombreAtractivo: "Tepeyahualco", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
    }else{
        
        var regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanAljojucaCH"), nombreAtractivo: "Aljojuca", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanAtzitzintlaCH"), nombreAtractivo: "Atzitzintla", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanTecamachalcoCH"), nombreAtractivo: "Tecamachalco", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanChalchicomulaCH"), nombreAtractivo: "Chalchicomula", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
        
        regionSerdan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrSerdanTepeyahualcoCH"), nombreAtractivo: "Tepeyahualco", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionSerdan)
    }
    
}

/*Región Tehuacán: Tag -> 7*/
func crearAtractivosTehuacan(miTehuacan: [regionTehuacan]){
    
    let screenSize2 = UIScreen.main.bounds
    let screenWidth = screenSize2.width
    atractivosViewController.ejemplo = []
    
    if (screenWidth>740){
        var regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "tehuacanLagunas"), nombreAtractivo: "Lagunas", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "tehuacanTehuacan"), nombreAtractivo: "Tehuacan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "tehuacanZoquitlan"), nombreAtractivo: "Zoquitlan", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "tehuacanSanJuanRaya"), nombreAtractivo: "Raya", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "tehuacanZapotitlan"), nombreAtractivo: "ZapotitlanS", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
    }else{
        
        var regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrTehuacanLagunasCH"), nombreAtractivo: "Lagunas", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrTehuacanTehuacanCH"), nombreAtractivo: "Tehuacan", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrTehuacanZoquitlanCH"), nombreAtractivo: "Zoquitlan", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrTehuacanRayaCH"), nombreAtractivo: "Raya", numeroAtractivos: 2)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
        
        regionDeTehuacan = regionTehuacan(atractivo01: #imageLiteral(resourceName: "atrTehuacanZapotitlanCH"), nombreAtractivo: "ZapotitlanS", numeroAtractivos: 4)
        atractivosViewController.ejemplo.append(regionDeTehuacan)
    }
    
}
