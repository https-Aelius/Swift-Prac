//
//  ContentView.swift
//  Practise
//
//  Created by Helios Guan on 15/08/2025.
//

import SwiftUI

//here is the contents of the page

struct ContentView: View {
    var body: some View {
        //as you can see HStack works like a div on html pages
        HStack {
            SunnyForecast(day: "Mon", high: 70, low: 50)
            
        }
        .padding()
        HStack{
            
            //order is important for each property
            RainyForecast(rainy: "Tue", isLightning: false, high: 60, low: 40)
            RainyForecast(rainy:"Tue", isLightning:true, high:68, low:43)
        }
        .padding()
        HStack{
            CloudyForecast()
            CloudyForecast()
        }
    }
}

#Preview {
    ContentView()
}

//here are the different "variables" like modules ig.

//First method is do do it like this and then delcare each property outside the function (Better flexibility)

struct SunnyForecast: View{
    
    //let sunny: String
    let day: String
    let high: Int
    let low: Int
    
    var body: some View{
        VStack{
            Text(day)
            Image(systemName: "sun.max.fill")
                .imageScale(.medium)
                .foregroundStyle(Color.yellow)
            
            Text("High: \(high)") //expects it to be string so we format to change data type
            Text("Low: \(low)")// format it this way to convert data type
        }
    }

    
}

//demonstration of putting Bool into functions
struct RainyForecast: View{
    
    //order is important
    let rainy: String
    let isLightning: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        if isLightning{
            return "cloud.bolt.rain"
        } else {
            return "cloud.rain.fill" //need space lol
        }
    }
    
    var iconColor: Color{
        if isLightning{
            return Color.gray
        } else{
            return Color.blue
        }
    }
    
    var body: some View{
        VStack{
            Text(rainy)
            Image(systemName: iconName)
                .imageScale(.medium)
                .foregroundStyle(iconColor)
            Text("High: \(high)")
            Text("Low: \(low)")
        }
    }
}


//second way here is to just define all properties inside the function
struct CloudyForecast: View{
    var body: some View{
        VStack{
            Text("Wednesday")
            Image(systemName: "cloud.fill")
                .imageScale(.medium)
                .foregroundStyle(Color.gray)
            Text("High: 65")
            Text("Low: 45")
        }
    }
}
