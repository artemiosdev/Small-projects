Примеры маленьких приложений, с целью знакомства и изучения различного функционала. В каждом из них есть готовые шаблоны/примеры использования. Ниже описание:





---

---
### CoreData
---
### [MyCars](https://github.com/artemiosdev/Small-projects/tree/main/MyCars/MyCars)
- [#CoreData](https://developer.apple.com/documentation/coredata) – нативный фреймворк от Apple для хранения данных пользователя у него на устройстве. Это не база данных
- [Core Data Stack](https://developer.apple.com/documentation/coredata/core_data_stack) - manage and persist your app’s model layer.
    - Экземпляр **#NSManagedObjectModel** описывает типы вашего приложения, включая их свойства и взаимосвязи.
    - Экземпляр **#NSManagedObjectContext** отслеживает изменения в экземплярах типов вашего приложения.
    - Экземпляр **#NSPersistentStoreCoordinator** сохраняет и извлекает экземпляры типов вашего приложения из хранилищ.

- [Generating Code](https://developer.apple.com/documentation/coredata/modeling_data/generating_code ) автоматически или вручную создавайте подклассы управляемых объектов из сущностей (entities).
    - **Class #Definition** – класс будет существовать в системе, к нему нет прямого доступа из Navigator, не виден в Xcode.
    - **#Manual/None** – полный ручной контроль над классом, можно добавить свою логику. Нужно вручную добавить. Class будет в проекте.
    - **#Category/Extension** – только Extension

- [#CoreDataStack](https://developer.apple.com/documentation/coredata/core_data_stack) – механизм внутри фреймворка Core Data, который позволяет хранить данные на постоянной основе. Persistent Store – постоянное хранилище информации. Весь механизм внутри Persistent Container. И состоит из 3 основных классов с которыми мы сталкиваемся: 
    - **Managed Object Context** – это наш контекст который нужно сохранить, это изменения. 
    - **Persistent Store Coordinator** – определяет на основек какой модели (Managed Object Model) мы будем хранить данные 
    - **Managed Object Model** - сама модель

<img alt="image" src="images/СoreDataStack1.jpg"/>

<img alt="image" src="images/coredata.jpg"/>

<img alt="image" src="images/coredata1.jpg"/>

- [DateFormatter](https://developer.apple.com/documentation/foundation/dateformatter) - A formatter that converts between dates and their textual representations
- [UISegmentedControl](https://developer.apple.com/documentation/uikit/uisegmentedcontrol)
- Сохранение `context.save()` в CoreData
- [NSFetchRequest](https://developer.apple.com/documentation/coredata/nsfetchrequest) - A description of search criteria used to retrieve data from a persistent store.
- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller) и [UIAlertAction](https://developer.apple.com/documentation/uikit/uialertaction) 
- [NSError](https://developer.apple.com/documentation/foundation/nserror) - Information about an error condition including a domain, a domain-specific error code, and application-specific information
- [NSPredicate](https://developer.apple.com/documentation/foundation/nspredicate) - Определение логических условий для ограничения поиска для выборки или для фильтрации в памяти. `@"attributeName == %@"`
    - [#Predicate Programming Guide](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Predicates/AdditionalChapters/Introduction.html#//apple_ref/doc/uid/TP40001789)
    - [#Create predicate](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Predicates/Articles/pCreating.html#//apple_ref/doc/uid/TP40001793-CJBDBHCB)

- [Class Bundle](https://developer.apple.com/documentation/foundation/bundle) - Представление кода и ресурсов, хранящихся в каталоге пакета на диске. Используя объект bundle, вы можете получить доступ к ресурсам bundle, не зная структуры bundle. Общая схема использования объекта bundle выглядит следующим образом: Создайте объект bundle для предполагаемого каталога bundle. Используйте методы объекта bundle, чтобы найти или загрузить необходимый ресурс.

<img alt="image" src="images/MyCars.gif"  height = 510 width = 233/>

---
### [MealTime](https://github.com/artemiosdev/Small-projects/tree/main/MealTime/MealTime)

- CoreData Entities Manual/None, классы сущностей в проекте 
- [Class NSManagedObject](https://developer.apple.com/documentation/coredata/nsmanagedobject) - A base class that implements the behavior for a Core Data model object
- [Class NSPersistentContainer](https://developer.apple.com/documentation/coredata/nspersistentcontainer) - A container that encapsulates the Core Data stack in your app.
- CoreDate код вынесен отдельно в класс CoreDataStack
- Сохранение `context.save()` и удаление `context.delete(...)` данных CoreData

<img alt="image" src="images/MealTime.gif"  height = 510 width = 233/>

---
### [ToDoList](https://github.com/artemiosdev/Small-projects/tree/main/ToDoList/ToDoList)

- Сохранение `context.save()` и удаление `context.delete(...)` данных CoreData
- [#viewWillAppear(_:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621510-viewwillappear) - метод вызывается до того, как представление контроллера представления будет добавлено в иерархию представлений, и до того, как будут настроены какие-либо анимации для отображения представления. Вы можете переопределить этот метод для выполнения пользовательских задач, связанных с отображением представления. Например, вы можете использовать этот метод для изменения ориентации или стиля строки состояния в соответствии с ориентацией или стилем представляемого представления. Если вы переопределяете этот метод, вы должны вызвать super в какой-то момент вашей реализации.

<img alt="image" src="images/ToDoList.gif"  height = 510 width = 233/>

---
CoreData end

---

---
### [PhotoTapps](https://github.com/artemiosdev/Small-projects/tree/main/PhotoTapps/PhotoTapps)
Простое приложение построенное на CollectionViewController.
В приложении использованы основные принципы работы с таблицей и ячейками.

- [Navigation Controller Scene](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
- [UICollectionViewController](https://developer.apple.com/documentation/uikit/uicollectionviewcontroller) - контроллер представления, который специализируется на управлении представлением коллекции.
- [UICollectionViewCell](https://developer.apple.com/documentation/uikit/uicollectionviewcell)
- [UICollectionViewFlowLayout](https://developer.apple.com/documentation/uikit/uicollectionviewflowlayout) - верстка элемента кодом
- [prepare(for:sender:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare) - уведомляет контроллер представления о том, что переход вот-вот будет выполнен.
- [numberOfSections(in:)](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618023-numberofsections) - возвращает количество разделов (section) в коллекции.
- [collectionView(_:numberOfItemsInSection:)](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618058-collectionview) - запрашивает у вашего объекта источника данных количество элементов в указанном разделе.
- [collectionView(_:cellForItemAt:)](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618029-collectionview) - запрашивает у вашего объекта источника данных ячейку, соответствующую указанному элементу в представлении коллекции. 
- [UIActivityViewController](https://developer.apple.com/documentation/uikit/uiactivityviewcontroller) - контроллер представления, который вы используете для предоставления стандартных услуг из своего приложения. Меню по тапу на кнопку "Tap to Share".
[UIActivityViewController(activityItems:applicationActivities:)](https://developer.apple.com/documentation/uikit/uiactivityviewcontroller/1622019-init) - Инициализирует новый объект контроллера представления активности, который воздействует на указанные данные.
* **Кастомная настройка ячейки кодом** :
   - [UICollectionViewDelegateFlowLayout](https://developer.apple.com/documentation/uikit/uiactivityviewcontroller/1622019-init) - Методы, которые позволяют координировать работу с объектом компоновки (#flow layout) потока для реализации компоновки на основе сетки. Методы настройки размера/отступов/направления внутри. Реализуется в extension к class.
   - [UICollectionViewFlowLayout](https://developer.apple.com/documentation/uikit/uicollectionviewflowlayout) - Объект макета, который организует элементы в сетку с необязательными видами верхнего и нижнего колонтитулов для каждого раздела. Методы настройки размера/отступов/направления внутри. Реализуется в viewDidLoad()

<img alt="image" src="images/PhotoTapps.gif"  height = 510 width = 233/>

---
### [EmojiReader](https://github.com/artemiosdev/Small-projects/tree/main/EmojiReader/EmojiReader)

Простое приложение построенное на TableViewController, это простой аналог более сложного приложения [MyPlaces](https://github.com/artemiosdev/MyPlaces).
В приложении использованы основные принципы работы с таблицей и ячейками.

- [Navigation Controller Scene](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
- [UITableViewController](https://developer.apple.com/documentation/uikit/uitableviewcontroller)
- [prepare(for: sender: )](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare) - уведомляет контроллер представления о том, что переход вот-вот будет выполнен.
- [numberOfSections(in:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614860-numberofsections) - возвращает количество разделов (section) в табличном представлении.
- [tableView(_: numberOfRowsInSection: )](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614931-tableview) - указывает источнику данных возвращать количество строк в заданном разделе (section) табличного представления.
- [tableView(_: cellForRowAt: )](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614861-tableview) - запрашивает у источника данных ячейку для вставки в определенном месте табличного представления
- [tableView(_:editingStyleForRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdelegate/1614869-tableview) - запрашивает у делегата стиль редактирования строки в определенном месте табличного представления. У нас в приложении отвечает за отображение кнопок меню удаления/добавления при нажатии на Edit, по умолчанию стоит .delete
- [tableView(_:canMoveRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614927-tableview) - запрашивает источник данных, может ли данная строка переместиться в другое место в табличном представлении.
- [tableView(_:moveRowAt:to:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614867-tableview) - указывает источнику данных переместить строку из определенного местоположения в табличном представлении в другое местоположение. Настройка перемещения ячеек из меню Edit
- [tableView(_:trailingSwipeActionsConfigurationForRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdelegate/2902367-tableview) и  [tableView(_:leadingSwipeActionsConfigurationForRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdelegate/2902366-tableview) - Returns the swipe actions to display on the trailing or leading edge of the row. К ним можно добавить кнопки, которые будут отображаться при активации swipe

<img alt="image" src="images/EmojiReader.gif"  height = 510 width = 233/>

---

### [Clima](https://github.com/artemiosdev/Small-projects/tree/main/Clima/Clima)

This is a beautiful, dark-mode enabled weather app. You'll be able to check the weather for the current location based on the GPS data from the iPhone as well as by searching for a city manually. 

* dark-mode enabled app.

* use vector images as image assets.

* use the UITextField to get user input. 

* delegate pattern.

* Swift protocols and extensions. 

* Swift guard keyword. 

* Swift computed properties.

* Swift closures and completion handlers.

* URLSession to network and make HTTP requests.

* JSON with the native Encodable and Decodable protocols. 

* Grand Central Dispatch to fetch the main thread.

* Core Location to get the current location from the phone GPS.

  <img alt="image" src="images/Clima.gif"  height = 510 width = 233/>

---

### [MyCard](https://github.com/artemiosdev/Small-projects/tree/main/MyCard/artem_iosdev)
I used SwiftUI, simple Scene, and configuration [VStack](https://developer.apple.com/documentation/swiftui/vstack) and [ZStack](https://developer.apple.com/documentation/swiftui/zstack)

[Stacks in SwiftUI](https://blog.devgenius.io/stacks-in-swiftui-de8951c3011b)

<img alt="image" src="images/VHZStack.jpeg"> </img> 

<img alt="image" src="MyCard/image.jpg"  height = 510 width = 233 > </img> 

---

### [I am Rich](https://github.com/artemiosdev/Small-projects/tree/main/I%20Am%20Rich)

"I Am Rich" was an iOS mobile application developed by Armin Heinrich that was distributed through the App Store. When launched, the screen contained only a glowing gem and an icon displayed the following mantra in large text:
"I am rich"

The application is described as "a work of art with no hidden function at all", with its only purpose being to show other people that they were able to afford it.

Eight people bought the application, at least one of whom claimed to have done so accidentally.
I Am Rich was sold on the App Store for US$999.99, €799.99, and GB£599.99, the highest price Apple allowed for App Store content. The application was removed from the App Store without explanation by Apple Inc. the day after its release, August 6, 2008

I used SwiftUI, simple Scene, and configuration [VStack](https://developer.apple.com/documentation/swiftui/vstack) and [ZStack](https://developer.apple.com/documentation/swiftui/zstack)

[Stacks in SwiftUI](https://blog.devgenius.io/stacks-in-swiftui-de8951c3011b) 

<img alt="image" src="I Am Rich/I am Rish.jpg" height = 510 width = 233> </img> 

<img alt="image" src="I Am Rich/Armin Heinrich app.jpg" height = 310 width = 233> </img> 

---

### [My Magic Ball](https://github.com/artemiosdev/Small-projects/tree/main/MyMagicBall/MyMagicBall)
You can ask the app to make all your hard decisions! With this app in your pocket, you’ll always have an answer to life’s many conundrums!  

Используется массив изображений и [randomElement()](https://developer.apple.com/documentation/swift/array/randomelement()), returns a random element of the collection.

<img alt="image" src="MyMagicBall/MyMagicBall.gif"  height = 510 width = 233/>

---

### [WeeklyFinderArt](https://github.com/artemiosdev/Small-projects/tree/main/WeeklyFinderArt/WeeklyFinderArt)

работа с [Calendar()](https://developer.apple.com/documentation/foundation/calendar) day, month, year, [DateComponents()](https://developer.apple.com/documentation/foundation/datecomponents), [DateFormatter()](https://developer.apple.com/documentation/foundation/dateformatter), вывод даты [dateFormat](https://developer.apple.com/documentation/foundation/dateformatter/1413514-dateformat), взаимодействие с клавиатурой [touchesBegan()](https://developer.apple.com/documentation/uikit/uiresponder/1621142-touchesbegan/) - сообщает этому объекту, что в представлении или окне произошло одно или несколько новых касаний.

<img alt="gif" src="images/WeeklyFinderArt.gif" height = 510 width = 233 />

---

### [TemperatureConverter](https://github.com/artemiosdev/Small-projects/tree/main/TemperatureConverter/TemperatureConverter/TemperatureConverter)

используется [UISlider](https://developer.apple.com/documentation/uikit/uislider), округление [round()](https://www.advancedswift.com/rounding-floats-and-doubles-in-swift/) 

<img alt="gif" src="images/TemperatureConverter.gif" height = 510 width = 233 />

---

### [PassDataProjectArt](https://github.com/artemiosdev/Small-projects/tree/main/PassDataProjectArt/PassDataProjectArt)

UITextField c login и password, выбор segue  учитывая идентификатор [performSegue(withIdentifier:, sender:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621413-performsegue), возврат segue на другой экран с помощью  unwind Segue реализуется как к элементом, так и с View (предпочтительнее). Взаимодействие с [UIStoryboardSegue](https://developer.apple.com/documentation/uikit/uistoryboardsegue/) (destination, source, identifier). Передача данных с одного View на другой, [prepare(for segue: UIStoryboardSegue, sender: )](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare) этот метод уведомляет view controller о том, что переход вот-вот будет выполнен. . Взаимодействие с клавиатурой [touchesBegan()](https://developer.apple.com/documentation/uikit/uiresponder/1621142-touchesbegan/) - сообщает этому объекту, что в представлении или окне произошло одно или несколько новых касаний.

<img alt="gif" src="images/PassDataProjectArt.gif" height = 510 width = 233 />

---

### [UILabelAndUIButton](https://github.com/artemiosdev/Small-projects/tree/main/UILabel/UILabel)

пример использования [UIButton](https://developer.apple.com/documentation/uikit/uibutton) и [UILabel](https://developer.apple.com/documentation/uikit/uilabel), свойства элементов, верстка кодом `(isHidden, font, text, setTitle, titleLabel?.text, textColor, setTitleColor, backgroundColor)`

<img alt="gif" src="images/UILabelAndUIButton.gif" height = 510 width = 233 />

---

### [UISegmentedControl, UISlider, UITextField, UIScrollView, UIDatePicker, UISwitch, UIPickerView](https://github.com/artemiosdev/Small-projects/tree/main/UISegmentedControl/UISegmentedControl)

- [UISegmentedControl](https://developer.apple.com/documentation/uikit/uisegmentedcontrol), добавить кодом segment [segmentedContol.insertSegment](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618588-insertsegment).

- [UISlider](https://developer.apple.com/documentation/uikit/uislider) (`.value,.minimumValue, .maximumValue, .maximumTrackTintColor, .minimumTrackTintColor,  .thumbTintColor`). 

- [UITextField ]( https://developer.apple.com/documentation/uikit/uitextfield) 
Есть делегат  [UITextFieldDelegate](https://developer.apple.com/documentation/uikit/uitextfielddelegate) с помощью которого можно отслеживать взаимодействия пользователя с текстовым полем. 

- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller/) an object that displays an alert message.

- [UIAlertAction](https://developer.apple.com/documentation/uikit/uialertaction )
action that can be taken when the user taps a button in an alert.
Создаем кнопку с предупреждением.

- Метод [present()](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-present) вызывает на экран наше предупреждение.

- [UIScrollView](https://developer.apple.com/documentation/uikit/uiscrollview)
View, которое позволяет прокручивать и масштабировать содержащиеся в нем view. 

- [UIDatePicker](https://developer.apple.com/documentation/uikit/uidatepicker)
барабан выбора, даты, времени. [DateFormatter()](https://developer.apple.com/documentation/foundation/dateformatter/) - форматирование даты для вывода. 

- [UISwitch](https://developer.apple.com/documentation/uikit/uiswitch)
использования switch для скрытия/отображения элементов на экране, (`.isOn, .onTintColor, .thumbTintColor`) 

- [UIPickerView](https://developer.apple.com/documentation/uikit/uipickerview)
вращающийся барабан с возможностью выбора среди элементов. [UIPickerViewDelegate](https://developer.apple.com/documentation/uikit/uipickerviewdelegate), и [UIPickerViewDataSource](https://developer.apple.com/documentation/uikit/uipickerviewdatasource). Отдельная кнопка в PickerView [UIToolbar](https://developer.apple.com/documentation/uikit/uitoolbar) и [UIBarButtonItem](https://developer.apple.com/documentation/uikit/uibarbuttonitem). При выборе textField за место клавиатуры по умолчанию, вызывается PickerView.

<img alt="gif" src="images/UISegmentedControl.gif" height = 510 width = 233 />

---

### [UITextView, UIStepper, UIActivityIndicatorView, UIProgressView](https://github.com/artemiosdev/Small-projects/tree/main/UITextView/UITextView)

- [UITextView ](https://developer.apple.com/documentation/uikit/uitextview)

- [UITextViewDelegate](https://developer.apple.com/documentation/uikit/uitextviewdelegate) - протокол включающий в себя методы отслеживания тапов, и не только. 

- [UIStepper ](https://developer.apple.com/documentation/uikit/uistepper) - элемент управления, для увеличения или уменьшения значения.

- [UIActivityIndicatorView](https://developer.apple.com/documentation/uikit/uiactivityindicatorview) - анимация прогресса загрузки данных.

- [UIProgressView](https://developer.apple.com/documentation/uikit/uiprogressview) - индикатор прогресса загрузки.

<img alt="gif" src="images/UITextView.gif" height = 510 width = 233 />

---

### [ArtCover](https://github.com/artemiosdev/Small-projects/tree/main/ArtCover/ArtCover)

- [Struct](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)
- [Navigation Controller Scene](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
<img alt="image" src="images/uinavigationcontroller.jpg"> </img> 
- [UINavigationItem](https://developer.apple.com/documentation/uikit/uinavigationitem)
- [UITableViewController](https://developer.apple.com/documentation/uikit/uitableviewcontroller)
- [UIListContentConfiguration](https://developer.apple.com/documentation/uikit/uilistcontentconfiguration) - конфигурация содержимого для представления содержимого на основе списка
- [prepare(for:sender:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare) - уведомляет контроллер представления о том, что переход вот-вот будет выполнен.
- [numberOfSections(in:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614860-numberofsections) - возвращает количество разделов (section) в табличном представлении.
- [tableView(_:numberOfRowsInSection:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614931-tableview) - указывает источнику данных возвращать количество строк в заданном разделе табличного представления.
- [tableView(_:cellForRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614861-tableview) - запрашивает у источника данных ячейку для вставки в определенном месте табличного представления

<img alt="gif" src="images/ArtCover.gif" height = 510 width = 233 />

---

### [ArtCoverCollectionView](https://github.com/artemiosdev/Small-projects/tree/main/ArtCoverCollectionView/ArtCoverCollectionView)

- [Struct](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)
- [Navigation Controller Scene](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
- [UINavigationItem](https://developer.apple.com/documentation/uikit/uinavigationitem)
- [UICollectionViewController](https://developer.apple.com/documentation/uikit/uicollectionviewcontroller) - контроллер представления, который специализируется на управлении представлением коллекции.
- [UICollectionViewCell](https://developer.apple.com/documentation/uikit/uicollectionviewcell)
- [UICollectionViewFlowLayout](https://developer.apple.com/documentation/uikit/uicollectionviewflowlayout) - верстка элемента кодом
- [prepare(for:sender:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare) - уведомляет контроллер представления о том, что переход вот-вот будет выполнен.
- [collectionView(_:numberOfItemsInSection:)](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618058-collectionview) - запрашивает у вашего объекта источника данных количество элементов в указанном разделе.
- [collectionView(_:cellForItemAt:)](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618029-collectionview) - запрашивает у вашего объекта источника данных ячейку, соответствующую указанному элементу в представлении коллекции. 

<img alt="gif" src="images/ArtCoverCollectionView.gif" height = 510 width = 233 />

---

### [UIStackView](https://github.com/artemiosdev/Small-projects/tree/main/UIStackView/UIStackView)

[StackView](https://developer.apple.com/documentation/uikit/uistackview) - streamlined interface for laying out a collection of views in either a column or a row.

<img alt="gif" src="images/UIStackView.gif" height = 510 width = 510 />

---

### [UITabBar](https://github.com/artemiosdev/Small-projects/tree/main/UITabBar/UITabBar) 

[TabBar](https://developer.apple.com/documentation/uikit/uitabbar) - a control that displays one or more buttons in a tab bar for selecting between different subtasks, views, or modes in an app.

<img alt="gif" src="images/UITabBar.gif" height = 510 width = 233 />

---
### [AwesomeBrowser](https://github.com/artemiosdev/Small-projects/tree/main/AwesomeBrowser/AwesomeBrowser)

- [WebKit](https://developer.apple.com/documentation/webkit) - integrate web content seamlessly into your app, and customize content interactions to meet your app’s needs.
- [WKWebView](https://developer.apple.com/documentation/webkit/wkwebview)  - an object that displays interactive web content, such as for an in-app browser.
- [WKNavigationDelegate](https://developer.apple.com/documentation/webkit/wknavigationdelegate) - methods for accepting or rejecting navigation changes, and for tracking the progress of navigation requests.
- [UITextFieldDelegate](https://developer.apple.com/documentation/uikit/uitextfielddelegate) - a set of optional methods to manage the editing and validation of text in a text field object.
- [URL](https://developer.apple.com/documentation/foundation/url)
- [URLRequest](https://developer.apple.com/documentation/foundation/urlrequest)
- [load(_:)](https://developer.apple.com/documentation/webkit/wkwebview/1414954-load) - loads the web content that the specified URL request object references and navigates to that content.
- [webView.allowsBackForwardNavigationGestures](https://developer.apple.com/documentation/webkit/wkwebview/1414995-allowsbackforwardnavigationgestu) - Boolean value that indicates whether horizontal swipe gestures trigger backward and forward page navigation. Добавим свайпы вперед и назад

Свойства `webView`
- `canGoBack` -  Boolean value that indicates whether there is a valid back item in the back-forward list.
- `canGoForward` - a Boolean value that indicates whether there is a valid forward item in the back-forward list.

И методы `webView`
- `goBack()` - navigates to the back item in the back-forward list. New navigation to the requested item, or nil if there is no back item in the back-forward list.
- `goForward()` - navigates to the forward item in the back-forward list. New navigation to the requested item, or nil if there is no forward item in the back-forward list.

- [resignFirstResponder()](https://developer.apple.com/documentation/uikit/uiresponder/1621097-resignfirstresponder) - notifies this object that it has been asked to relinquish its status as first responder in its window. Им "скрываем" клавиатуру после ввода нужного адреса ссылки.

<img alt="gif" src="images/AwesomeBrowser.gif" height = 510 width = 233 />

---
### [UIContainerView](https://github.com/artemiosdev/Small-projects/tree/main/UIContainerView/UIContainerView)

Определяет область в иерархии представлений контроллера представления для размещения дочернего child view controller. The child view controller указывается с помощью встроенного перехода segue.

- [Struct](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)
- [UITableViewController](https://developer.apple.com/documentation/uikit/uitableviewcontroller)
- [tableView(_:numberOfRowsInSection:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614931-tableview) - указывает источнику данных возвращать количество строк в заданном разделе табличного представления.
- [tableView(_:cellForRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614861-tableview) - запрашивает у источника данных ячейку для вставки в определенном месте табличного представления
- [tableView(_:didSelectRowAt:)](https://developer.apple.com/documentation/uikit/uitableviewdelegate/1614877-tableview) - tells the delegate a row is selected.

<img alt="gif" src="images/UIContainerView.gif" height = 510 width = 650 />

---

### [UIPageView](https://github.com/artemiosdev/Small-projects/tree/main/UIPageView/UIPageView)

C его помощью можно сделать ознакомительный функционал ввиде некой презентации для пользователя который впервые скачал ваше приложение

- [UIPageViewController](https://developer.apple.com/documentation/uikit/uipageviewcontroller) - a container view controller  that manages navigation between pages of content, where a child view controller manages each page

- [UIPageViewControllerDataSource](https://developer.apple.com/documentation/uikit/uipageviewcontrollerdatasource ) – протокол UIPageViewControllerDataSource принимается объектом, который предоставляет контроллеры просмотра контроллеру просмотра страницы по мере необходимости в ответ на жесты навигации. 
Благодаря ему будем листать нашу презентацию. С ним идут 2 обязательных для протокола метода (`viewControllerBefore` and `viewControllerAfter`, вперед и назад по презентации)

- [viewDidAppear(_:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621423-viewdidappear) - уведомляет контроллер представления о том, что его представление было добавлено в иерархию представлений.
- [class UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults) - интерфейс к базе данных пользователя по умолчанию, где вы постоянно сохраняете пары ключ-значение при запуске вашего приложения. 
- [set(_:forKey:)](https://developer.apple.com/documentation/foundation/userdefaults/1408905-set) - sets the value of the specified default key to the specified Boolean value.
- [instantiateViewController(withIdentifier:)](https://developer.apple.com/documentation/uikit/uistoryboard/1616214-instantiateviewcontroller) - cоздает контроллер представления с указанным идентификатором и инициализирует его данными из раскадровки. На основе storyboard with identifier.
- [present(_:animated:completion:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-present) - presents a view controller modally.
- [dismiss(animated:completion:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621505-dismiss) - oтклоняет контроллер представления, который был представлен модально контроллером представления.

<img alt="gif" src="images/UIPageView.gif" height = 510 width = 233 />

---

### [UIGestureRecognizer](https://github.com/artemiosdev/Small-projects/tree/main/UIGestureRecognizer/UIGestureRecognizer)

The base [class](https://developer.apple.com/documentation/uikit/uigesturerecognizer) for concrete gesture recognizers. 

- [UISwipeGestureRecognizer](https://developer.apple.com/documentation/uikit/uiswipegesturerecognizer) - a discrete gesture recognizer that interprets swiping gestures in one or more directions.
- [.direction](https://developer.apple.com/documentation/uikit/uiswipegesturerecognizer/1619178-direction) - the permitted direction of the swipe for this gesture recognizer.

- [UITapGestureRecognizer](https://developer.apple.com/documentation/uikit/uitapgesturerecognizer) - a discrete gesture recognizer that interprets single or multiple taps.
- [numberOfTapsRequired](https://developer.apple.com/documentation/uikit/uitapgesturerecognizer/1623581-numberoftapsrequired) - the number of taps necessary for gesture recognition.

- [addGestureRecognizer(_:)](https://developer.apple.com/documentation/uikit/uiview/1622496-addgesturerecognizer) - прикрепляет a gesture recognizer to the view.

- [require(toFail:)](https://developer.apple.com/documentation/uikit/uigesturerecognizer/1624203-require) - creates a dependency relationship between the gesture recognizer and another gesture recognizer when the objects are created.

<img alt="gif" src="images/UIGestureRecognizer.gif" height = 510 width = 233 />

---



