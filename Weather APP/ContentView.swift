//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Bilal Dramé on 16/11/2023.('
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            backgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray :  .white)
            VStack {
                CityTextView(cityName: "Paris, IDF")
                
                mainWeatherStatusView(imageName: "sun.max.fill", temperature: 31, textColor: .white)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWWeek: "Lun",
                                   imageName: "sun.max.fill",
                                   temperature: 31)
                    WeatherDayView(dayOfWWeek: "Mar",
                                   imageName: "cloud.rain.fill",
                                   temperature: 15)
                    WeatherDayView(dayOfWWeek: "Mer",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 10)
                    WeatherDayView(dayOfWWeek: "Jeu",
                                   imageName: "cloud.snow.fill",
                                   temperature: -5)
                    WeatherDayView(dayOfWWeek: "Ven",
                                   imageName: "sun.max.fill",
                                   temperature: 10)
                }
                
                
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    weatherButtom(title: "Changer le temps",
                                  textColor: .blue,
                                  backgrounColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWWeek)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text(" \(temperature)°")
                .foregroundColor(.white)
            
            
        }
    }
}

struct backgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct mainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    var textColor: Color
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70,
                              weight: .medium,
                              design: .default))
        }
                .padding(.bottom, 40)
    }
}

