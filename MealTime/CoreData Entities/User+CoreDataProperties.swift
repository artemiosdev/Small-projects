//
//  User+CoreDataProperties.swift
//  MealTime
//
//  Created by Artem Androsenko on 07.02.2023.
//


import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var meals: NSOrderedSet?

}

// MARK: Generated accessors for meals
extension User {

    @objc(insertObject:inMealsAtIndex:)
    @NSManaged public func insertIntoMeals(_ value: Meal, at idx: Int)

    @objc(removeObjectFromMealsAtIndex:)
    @NSManaged public func removeFromMeals(at idx: Int)

    @objc(insertMeals:atIndexes:)
    @NSManaged public func insertIntoMeals(_ values: [Meal], at indexes: NSIndexSet)

    @objc(removeMealsAtIndexes:)
    @NSManaged public func removeFromMeals(at indexes: NSIndexSet)

    @objc(replaceObjectInMealsAtIndex:withObject:)
    @NSManaged public func replaceMeals(at idx: Int, with value: Meal)

    @objc(replaceMealsAtIndexes:withMeals:)
    @NSManaged public func replaceMeals(at indexes: NSIndexSet, with values: [Meal])

    @objc(addMealsObject:)
    @NSManaged public func addToMeals(_ value: Meal)

    @objc(removeMealsObject:)
    @NSManaged public func removeFromMeals(_ value: Meal)

    @objc(addMeals:)
    @NSManaged public func addToMeals(_ values: NSOrderedSet)

    @objc(removeMeals:)
    @NSManaged public func removeFromMeals(_ values: NSOrderedSet)

}
