//
//  WalkingExcercise.swift
//  StepCounter
//
//  Created by Ghulam Rasool on 22/11/2022.
//

import SwiftUI

struct WalkingExcercise: View {
    @State var name = "Shoaib";
    @State var traveledDistance = 5.51;
    var body: some View {
        VStack{
            Text("Hey,\n\(name)")
                .padding()
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            GifImage("Stand_up_and_walk").cornerRadius(10).padding()
            
            Text("\(traveledDistance)")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, alignment: .center)
                
            Text("Meters Travelled")
                .fontWeight(.medium)
                .font(.system(size: 24))
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, alignment: .center)
            
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "figure.walk")
                    Spacer()
                    VStack{
                        Text("6.0")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.purple)
                            .frame(alignment: .center)
                        
                        Text("steps")
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .foregroundColor(.purple)
                            .frame(alignment: .center)
                    }
                    Spacer()
                }
                Divider().padding(2).background(.white)
                
                HStack{
                    Spacer()
                    Image(systemName: "figure.walk")
                    Spacer()
                    VStack{
                        Text("00:20")
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                            .foregroundColor(.purple)
                            .frame(alignment: .center)
                        
                        Text("time taken")
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .foregroundColor(.purple)
                            .frame(alignment: .center)
                    }
                    Spacer()
                }
            }
            .background(.yellow)
            .cornerRadius(10)


            
            
            
            
            
            Spacer()
        }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.leading).background(Color.purple)
    }
}

struct WalkingExcercise_Previews: PreviewProvider {
    static var previews: some View {
        WalkingExcercise()
    }
}
