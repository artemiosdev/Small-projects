//
//  ViewController.swift
//  MyCars
//
//  Created by Artem Androsenko on 06.02.2023.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context: NSManagedObjectContext!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var markLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var lastTimeStartedLabel: UILabel!
    @IBOutlet weak var numberOfTripsLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var myChoiceImageView: UIImageView!
    
    @IBAction func segmentedCtrlPressed(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func startEnginePressed(_ sender: UIButton) {
        
    }
    
    @IBAction func rateItPressed(_ sender: UIButton) {
        
    }
    
    private func getDataFromFile() {
        // если в базе у нас есть записи, то код не будет выполнен ниже
        // если нет, то выполнение осуществится и данные попадут в базу Core Data
        let fetchRequest: NSFetchRequest<Car> = Car.fetchRequest()
        // мы хотим получить записи которые есть и не равны nil
        fetchRequest.predicate = NSPredicate(format: "mark != nil")
        var records = 0
        
        do {
            records = try context.count(for: fetchRequest)
            print("Is Data there already?")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        // проверяем что есть в records
        guard records == 0 else { return }
        
        // получаем массив значений из нашего файла data.plist
        guard let pathToFile = Bundle.main.path(forResource: "data", ofType: "plist"),
                let dataArray = NSArray(contentsOfFile: pathToFile) else { return }
        
        // поместим данные из массива data.plist в Core Data
        // пробегаемся по каждому словарю который запакован в массив
        for dictionary in dataArray {
            // доберемся до нашей сущности
            let entity = NSEntityDescription.entity(forEntityName: "Car", in: context)
            let car = NSManagedObject(entity: entity!, insertInto: context) as! Car
            // все свойства помещаем в нашу сущность car
            let carDictionary = dictionary as! [String : AnyObject]
            car.model = carDictionary["mark"] as? String
            car.model = carDictionary["model"] as? String
            car.rating = carDictionary["rating"] as! Double
            car.lastStarted = carDictionary["lastStarted"] as? Date
            car.timesDriven = carDictionary["timesDriven"] as! Int16
            car.myChoice = carDictionary["myChoice"] as! Bool
            
            guard let imageName = carDictionary["imageData"] as? String else { return }
            guard let image = UIImage(named: imageName) else { return }
            let imageData = image.pngData()
            car.imageData = imageData
            
            if let colorDictionary = carDictionary["tintColor"] as? [String : Float] {
                car.tintColor = getColor(colorDictionary: colorDictionary)
            }
            
            
            
        }
    }
    
    private func getColor(colorDictionary: [String : Float]) -> UIColor {
        guard let red = colorDictionary["red"],
              let green = colorDictionary["green"],
              let blue = colorDictionary["blue"] else { return UIColor() }
        return UIColor(red: CGFloat(red / 255), green: CGFloat(green / 255), blue: CGFloat(blue / 255), alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromFile()
    }
    
}

