//
//  ContentView.swift
//  KakaoAuth
//
//  Created by Jacob Ko on 2022/08/02.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var kakoAuthVM: KakaoAuthVM = KakaoAuthVM()
	
	let loginStatusInfo: (Bool) -> String = { isLogginIn in
		return isLogginIn ? "로그인 상태" : "로그아웃 상태"
	}
	
    var body: some View {
		VStack (spacing: 20) {
			Text(loginStatusInfo(kakoAuthVM.isLogginIn))
				.font(.title)
			
			Button {
				kakoAuthVM.handleKakaoLogin()
			} label: {
				Text("카카오 로그안")
			}
			
			Button {
				kakoAuthVM.kakaoLogout()
			} label: {
				Text("카카오 로그아웃")
			}

		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
