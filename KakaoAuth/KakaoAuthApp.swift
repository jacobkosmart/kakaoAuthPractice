//
//  KakaoAuthApp.swift
//  KakaoAuth
//
//  Created by Jacob Ko on 2022/08/02.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct KakaoAuthApp: App {
	
	@UIApplicationDelegateAdaptor var appDelegate : MyAppDelegate
	
	// init() {
	// 	
	// 	// 메인번들에 있는 카카오 앱키 불러오기
	// 	let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
	// 	
	// 	// kakao SDK 초기화
	// 	KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
	// }
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
