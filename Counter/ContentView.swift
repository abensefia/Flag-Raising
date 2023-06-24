//
//  ContentView.swift
//  Counter
//
//  Created by abensefia on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") private var counter = 0.0
    @State private var message = ""
    
    var body: some View {
        
        VStack {
          
            Text(" \(Int(counter))")
            
            HStack(alignment: .bottom, spacing: -10){
                
                Rectangle()
                    .frame(width: 20)
                Text("🇦🇪")
                    .font(.system(size: 60))
                    .offset(y: -10*counter)
                
            }
            
            Button{
                withAnimation {
                    counter += 1
                    if counter >= 20 {
                        message = "عيشي بلادي"
                    }
                    if counter >= 30 {
                        message = "عاش اتحادنا"
                    }
                    if counter >= 40 {
                        message = "عاليا"
                    }
                }
            } label: {
                Text("Raise Flag")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            Button{
                withAnimation {
                    counter = 0
                    message = ""
                }
            } label: {
                Text("Reset")
                    .padding()
                    .background(.orange)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            Text(message)
                .padding()
                .foregroundColor(.red)
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
