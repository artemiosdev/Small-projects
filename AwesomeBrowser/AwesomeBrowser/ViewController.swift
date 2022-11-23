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
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var urlTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        urlTextField.delegate = self
        webView.navigationDelegate = self
        let homePage = "https://www.apple.com"
        let url = URL(string: homePage)
        let request = URLRequest(url: url!)
        urlTextField.text = homePage
        webView.load(request)
        // добавим свайпы вперед и назад
        webView.allowsBackForwardNavigationGestures = true
    }
    // добавим функционал кнопок при возможности их использования
    @IBAction func backButtonAction(_ sender: UIButton) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func forwardButtonAction(_ sender: UIButton) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
}

extension ViewController: UITextFieldDelegate, WKNavigationDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let urlString = textField.text!
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        webView.load(request)
        textField.resignFirstResponder()
        return true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        urlTextField.text = webView.url?.absoluteString
        // реализуем свайпы вперед и назад
        backButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }
}
