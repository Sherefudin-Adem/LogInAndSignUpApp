//  ContentView.swift
//  LoginPage
//
//  Created by Shah Adem on 19.04.20.
//  Copyright © 2020 Shah Adem. All rights reserved.

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack{
			LinearGradient(gradient: .init(colors:[Color("Color-0"), Color("Color-1"), Color("Color-2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
			
			if UIScreen.main.bounds.height > 800 {
				Home()
			} else {
				ScrollView(.vertical,showsIndicators: false){
					
					Home()
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

struct Home: View {
	@State var  index = 0
	var body: some View {
		VStack{
			Image("logo")
				.resizable()
				.renderingMode(.original)
				.padding()
			HStack{
				Button(action: {
					withAnimation(.spring(response: 0.5, dampingFraction: 0.9,blendDuration: 0.5)){
						self.index = 0
					}
					
				}){
					Text("MEMBER")
						.foregroundColor(self.index == 0 ? .black : .white)
						.fontWeight(.bold)
						.padding(.vertical, 10)
						.frame(width: (UIScreen.main.bounds.width - 50) / 2)
					
				}
				.background(self.index == 0 ? Color.white : Color.clear)
				.clipShape(Capsule())
				
				Button(action: {
					withAnimation(.spring(response: 0.5, dampingFraction: 0.9,blendDuration: 0.5)){
						self.index = 1
					}
					
				}){
					Text("SUBSCRIBE")
						.foregroundColor(self.index == 1 ? .black : .white)
						.fontWeight(.bold)
						.padding(.vertical, 10)
						.frame(width: (UIScreen.main.bounds.width - 50) / 2)
					
				}
				.background(self.index == 1 ? Color.white : Color.clear)
				.clipShape(Capsule())
			}
			.background(Color.black.opacity(0.1))
			.clipShape(Capsule())
			.padding(.top, 25)
			
			if self.index == 0 {
				
				Login()
				
			} else {
				SignUp()
			}
			if self.index == 0{
				Button(action: {
					
				})	{
					Text("Forget Password?")
						.foregroundColor(.white)
				}
				.padding(.top, 20)
			}
			
			HStack(spacing: 15){
				Color.white.opacity(0.7)
					.frame(width: 35, height: 1)
				
				Text("Or")
					.fontWeight(.bold)
					.foregroundColor(.white)
				Color.white.opacity(0.7)
					.frame(width: 35, height: 1)
			}
			.padding(.top, 10)
			
			HStack {
				
				Button(action: {
					
				}) {
					Image("instagram")
						.renderingMode(.original)
						.padding()
						.frame(width: 80.0, height: 80.0)

				}
				.background(Color.white)
				.clipShape(Circle())
				
				Button(action: {
					
				}) {
					Image("facebook")
						.renderingMode(.original)
						.padding()
						.frame(width: 80.0, height: 80.0)

				}
				.background(Color.white)
				.clipShape(Circle())
				.padding(.leading, 25)
			}
			.padding(.top, 10)
		}
		.padding()
	}
}

struct Login: View {
	@State var email = ""
	@State var password = ""
	var body: some View {
		VStack{
			VStack {
				HStack(spacing: 15){
					Image(systemName: "envelope.circle")
						.foregroundColor(.black)
					TextField("Enter Email Address".lowercased(), text: self.$email)
					
				}
				.padding(.vertical, 20)
				Divider()
				
				HStack(spacing: 15) {
					Image(systemName: "lock.circle.fill")
						.resizable()
						.frame(width: 15, height: 18)
						.foregroundColor(.black)
					
					SecureField("Enter password", text: self.$password)
					
					
					Button(action: {
						
					}) {
						Image(systemName: "eye")
						.foregroundColor(.black)
						
					}
				}
				.padding(.vertical, 20)
				
			}
			.padding(.vertical)
			.padding(.horizontal, 20)
			.padding(.bottom, 40)
			.background(Color.white)
			.cornerRadius(10)
			.padding(.top, 25)
			
			Button(action: {
				
			}){
				Text("LOGIN")
					.padding(.vertical)
					.frame(width: UIScreen.main.bounds.width - 100)
					.foregroundColor(.white)
				
			}
			.background(
				LinearGradient(gradient: .init(colors: [Color("Color-2"), Color("Color-1"), Color("Color-0")]), startPoint: .leading, endPoint: .trailing)
			)
				
				.cornerRadius(8)
				.offset(y: -40)
				.padding(.bottom, -40)
				.shadow(radius: 15)
			
		}
	}
}

struct SignUp: View {
	@State var email = ""
	@State var password = ""
	@State var confirm = ""
	var body: some View {
		VStack{
			VStack {
				HStack(spacing: 15){
					Image(systemName: "envelope.circle")
						.foregroundColor(.black)
					TextField("Enter Email Address".lowercased(), text: self.$email)
					
				}.padding(.vertical, 20)
				
				Divider()
				
				HStack(spacing: 15) {
					Image(systemName: "lock.circle.fill")
						.resizable()
						.frame(width: 15, height: 18)
						.foregroundColor(.black)
					
					SecureField("Enter password", text: self.$password)
					
					
					Button(action: {
						
					}) {
						Image(systemName: "eye")
						.foregroundColor(.black)
						
					}
				}.padding(.vertical, 20)
				
				Divider()
				
				HStack(spacing: 15) {
					Image(systemName: "lock.circle.fill")
						.resizable()
						.frame(width: 15, height: 18)
						.foregroundColor(.black)
					
					SecureField("Confirm password", text: self.$confirm)
					
					
					Button(action: {
						
					}) {
						Image(systemName: "eye")
						.foregroundColor(.black)
						
					}
				}.padding(.vertical, 20)
				
			}
			.padding(.vertical)
			.padding(.horizontal, 20)
			.padding(.bottom, 40)
			.background(Color.white)
			.cornerRadius(10)
			.padding(.top, 25)
			
			Button(action: {
				
			}){
				Text("SIGNUP")
					.padding(.vertical)
					.frame(width: UIScreen.main.bounds.width - 100)
					.foregroundColor(.white)
				
			}
			.background(
				LinearGradient(gradient: .init(colors: [Color("Color-2"), Color("Color-1"), Color("Color-0")]), startPoint: .leading, endPoint: .trailing)
			)
				
				.cornerRadius(8)
				.offset(y: -40)
				.padding(.bottom, -40)
				.shadow(radius: 15)
			
		}
	}
}

