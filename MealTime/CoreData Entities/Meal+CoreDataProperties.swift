//
//  Meal+CoreDataProperties.swift
//  MealTime
//
//  Created by Artem Androsenko on 07.02.2023.
//


import Foundation
import CoreData


extension Meal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Meal> {
        return NSFetchRequest<Meal>(entityName: "Meal")
    }

    @NSManaged public var date: Date?
    @NSManaged public var user: User?

}
