//
//  KakaoAuthVM.swift
//  KakaoAuth
//
//  Created by Jacob Ko on 2022/08/02.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser


class KakaoAuthVM: ObservableObject {
	
	@Published var isLogginIn: Bool = false
	

	// MARK: - 카카오톡 앱으로 로그인 하기
	func handleKakaoLoginApp() async -> Bool {
		
		await withCheckedContinuation { continuation in
			UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
				if let error = error {
					print(error)
					continuation.resume(returning: false)
				}
				else {
					print("loginWithKakaoTalk() success.")

					//do something
					_ = oauthToken
					continuation.resume(returning: true)
				}
			}
		}
	}
	
	// MARK: - 카카오톡 계정으로 로그인 하기 - 웹뷰
	func handleWithKakaoAccountLogin() async -> Bool {
		await withCheckedContinuation { continuation in
			// 카카오 계정으로 로그인 하기 - 웹뷰를 열러서 로그인 하기
			UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
					if let error = error {
						print(error)
						continuation.resume(returning: false)
					}
					else {
						print("loginWithKakaoAccount() success.")

						//do something
						_ = oauthToken
						continuation.resume(returning: true)
					}
				}
		}
	}
	
	@MainActor
	func handleKakaoLogin() {
		Task {
			// 카카오톡 설치 여부 확인 - 설치기 되어있을때
			if(UserApi.isKakaoTalkLoginAvailable()) {
				
				// 카카오 앱을 통해 로그인
				isLogginIn =  await handleKakaoLoginApp()
			} else {
				// 카카오 웹뷰로 로그인
				isLogginIn = await handleWithKakaoAccountLogin()
			}
		}
	}
	
	
	// MARK: - 카카오톡 로그아웃
	
	func handleKakaoLogout() async -> Bool {
		await withCheckedContinuation { continuation in
			UserApi.shared.logout {(error) in
				if let error = error {
					print(error)
					continuation.resume(returning: false)
				}
				else {
					print("logout() success.")
					continuation.resume(returning: true)
				}
			}
		}
	}
	
	@MainActor
	func kakaoLogout() {
		Task {
			if await handleKakaoLogout() {
				isLogginIn = false
			}
		}
	}
	
}
