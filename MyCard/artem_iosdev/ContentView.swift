//
//  ContentView.swift
//  artem_iosdev
//
//  Created by Artem Androsenko on 26.01.2022.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.19, green: 0.22, blue: 0.32, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("artem")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 10.0))
                Text("artem_iosdev")
                    .font(Font.custom("Pacifico-Regular", size: 55))
                    .bold()
                    .foregroundColor(.white)
                Text("Junior iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InformationView(textName: "+7 999 123-45-67", imageName: "phone.fill")
                InformationView(textName: "artem_iosdev@gmail.com", imageName: "envelope.fill")

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI
struct InformationView: View {
    let textName: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(textName)
                    .font(.system(size: 25))
            })
            .padding(.all)
    }
}

