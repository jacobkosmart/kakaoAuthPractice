//
//  MySceneDelegate.swift
//  KakaoAuth
//
//  Created by Jacob Ko on 2022/08/02.
//

import Foundation
import UIKit
import KakaoSDKAuth


class MySceneDelegate: UIResponder, UIWindowSceneDelegate {

	func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
		if let url = URLContexts.first?.url {
			if (AuthApi.isKakaoTalkLoginUrl(url)) {
				_ = AuthController.handleOpenUrl(url: url)
			}
		}
	}
}
