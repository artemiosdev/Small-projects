
import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let queue = DispatchQueue(label: "ru.swiftbook.sources", attributes: .concurrent)

let timer = DispatchSource.makeTimerSource(queue: queue)

// расписание нашего таймера
timer.schedule(deadline: .now(), repeating: .seconds(2), leeway: .milliseconds(300))
// сделаем вызов
timer.setEventHandler {
    print("Hello, World!")
}

// блок отмены
timer.setCancelHandler {
    print("Timer is cancelled")
}
// запускаем таймер
timer.resume()










