//
//  StepsSelection.swift
//  StepCounter
//
//  Created by Ghulam Rasool on 22/11/2022.
//

import SwiftUI

struct StepsSelection: View {
    @State var noOfSteps = 0;
    @State var showStepCSelector = true;
    @State var navigate = false;
    var body: some View {
        NavigationView{
            ZStack (alignment: .center){
                NavigationLink{
                    WalkingExcercise();
                } label: {
                    HStack{
                        Text("Start Directions").foregroundColor(Color.black).padding(32)
                    }.background(Color(.white)).cornerRadius(10)
                }
                if (showStepCSelector==true){
                    VStack{
                        Text("Set Goal")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(alignment: .center)
                        
                        Button {
                            noOfSteps=noOfSteps+10;
                        } label: {
                            Image(systemName: "chevron.up").foregroundColor(Color.white).frame(height: 30).font(.system(size: 48)).padding(4)
                        }
                        
                        Text("\(noOfSteps) M").foregroundColor(Color.white).frame(height: 30).font(.system(size: 48)).padding(4)
                        
                        Button {
                            if(noOfSteps>0){
                                noOfSteps=noOfSteps-10;
                            }
                        } label: {
                            Image(systemName: "chevron.down").foregroundColor(Color.white).frame(height: 30).font(.system(size: 48)).padding(4)
                        }
                        
                        Button {
                            if(noOfSteps>0){
                                showStepCSelector=false;
                            }
                        } label: {
                            HStack{
                                Spacer()
                                Text("Start Now!").foregroundColor(Color.black).padding(16)
                                Spacer()
                            }.background(Color(.white)).cornerRadius(10)
                        }
                    }
                    .padding(32).frame(width: 250).background(Color.purple).cornerRadius(10)
                }
                
            }
            .frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.center)
            .background(Color.gray)
        }
    }
}

struct StepsSelection_Previews: PreviewProvider {
    static var previews: some View {
        StepsSelection()
    }
}
