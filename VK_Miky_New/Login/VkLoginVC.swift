//
//  VkLoginVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 10.08.2022.
//

import UIKit
import WebKit

class VkLoginVC: UIViewController {

    @IBOutlet weak var webView: WKWebView! {
        didSet {
            webView.navigationDelegate = self
        }
    }
    
    let session = Session.shared
    var tabBarVC: TabBarVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        urlSession()
    }
    
    func urlSession() {
        var urlComponents = URLComponents()
            urlComponents.scheme = "https"
            urlComponents.host = "oauth.vk.com"
            urlComponents.path = "/authorize"
        
            urlComponents.queryItems = [
                URLQueryItem(name: "client_id", value: "\(session.userId)"),
                URLQueryItem(name: "display", value: "mobile"),
                URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
                URLQueryItem(name: "scope", value: "262150"),
                URLQueryItem(name: "response_type", value: "token"),
                URLQueryItem(name: "v", value: "5.131") ]
        
        let request = URLRequest(url: urlComponents.url!)
        
        webView.load(request)
    }
}

extension VkLoginVC: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        
            guard let url = navigationResponse.response.url, url.path == "/blank.html",
                  let fragment = url.fragment else {
                
                decisionHandler(.allow)
                return
    }
        
    let params = fragment
        .components(separatedBy: "&")
        .map { $0.components(separatedBy: "=") }
        .reduce([String: String]()) { result, param in
            var dict = result
            let key = param[0]
            let value = param[1]
            dict[key] = value
            
            return dict
    }
        
        if let token = params["access_token"] {
            self.session.token = token
            tabBarVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabBarVC") as? TabBarVC
            self.view.insertSubview((tabBarVC?.view)!, at: 9)
//            print(token)
        }
    
    decisionHandler(.cancel)
    }
}
