//
//  ViewController.swift
//  AwesomeBrowser
//
//  Created by Artem Androsenko on 21.11.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url: url!)
        webView.load(request)
        // добавим свайпы вперед и назад
        webView.allowsBackForwardNavigationGestures = true
    }


}

