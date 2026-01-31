//
//  ContentView.swift
//  PicturesSlidesApp
//
//  Created by Егор Батяев on 24.01.2026.
//

import SwiftUI

struct ContentView: View {
    private let images_names = ["raven-1", "raven-2", "raven-3", "raven-4"]
    @State private var image_index = 0
    var body: some View {
        VStack {
            Text ("Ворона HSE 🐦‍⬛")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.top, 80)
                .padding(.bottom, 60)
            
            Image(images_names[image_index])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 380, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 4)
                )
            
            Spacer()
            HStack(spacing: 40) {
                Button(action: {
                    withAnimation{
                        if image_index > 0{
                            image_index -= 1
                        } else{
                            image_index = images_names.count - 1
                        }
                    }
                }) {
                    HStack {
                        Text("⬅️")
                            .font(.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                    )
                }
                
                Button(action: {
                    withAnimation{
                        if image_index < images_names.count - 1{
                            image_index += 1
                        } else{
                            image_index = 0
                        }
                    }
                }) {
                    HStack {
                        Text("➡️")
                            .font(.system(size: 40))
                    }
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                    )
                }
            }
            .padding(.horizontal)
            .padding(.top, 30)
            .padding(.bottom, 30)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground).ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
