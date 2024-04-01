//
//  UIApplication.swift
//  webrtc_demo
//
//  Created by Piyush on 29/03/24.
//

import UIKit

public extension UIApplication {
    
    static func presentView(_ view: UIViewController) {
        if (view.isBeingPresented) {
            return
        }
        
        let window = UIApplication.shared.keyWindow!
        
        if let modalVC = window.rootViewController?.presentedViewController {
            modalVC.present(view, animated: true, completion: nil)
        } else {
            window.rootViewController!.present(view, animated: true, completion: nil)
        }
    }
}
