//
//  ViewController.swift
//  webrtc_demo
//
//  Created by Piyush on 29/03/24.
//

import UIKit
import WebRTCiOSSDK

class ViewController: UIViewController {

    @IBOutlet weak var videoView: UIView!
    var client:AntMediaClient =  AntMediaClient.init();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        client.setLocalView(container: videoView);
        client.setWebSocketServerUrl(url: "wss://test.antmedia.io:5443/WebRTCAppEE/websocket");
        client.publish(streamId: "stream123456")
    }


}

