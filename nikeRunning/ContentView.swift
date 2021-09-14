//
//  ContentView.swift
//  nikeRunning
//
//  Created by Joe Kotlan on 9/13/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            ScrollView(.vertical) {
                VStack(spacing: 35) {
                    HStack {
                        Image("nike-logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 75)
                        Spacer()
                        Image(systemName: "slider.horizontal.3")
                            .font(.system(size: 35))
                    }
                    .foregroundColor(.white)
                    .padding(.top, 30)
                    
                    ZStack {
                        Image("clock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 250)
                        ClockView()
                            .frame(maxWidth: 250)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 35)
                        .stroke(Color.white, lineWidth: 2))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("17 Miles")
                                    .font(Font.custom("Tungsten-Bold", size: 52))
                                    .foregroundColor(Color("neon"))
                                Image(systemName: "figure.walk")
                                    .font(.system(size: 35))
                                    .foregroundColor(.white)
                            }
                            Text("Keep up the good work")
                                .font(Font.custom("HelveticaLTStd-Roman", size: 24))
                                .padding(.vertical, 5)
                            HStack {
                                Text("See your full stats")
                                    .font(Font.custom("HelveticaLTStd-Roman", size: 18))
                                Image(systemName: "arrow.forward")
                                    .font(.system(size: 24))
                            }
                        }
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 35)
                    .stroke(Color.white, lineWidth: 2))

                    MapView()
                        .cornerRadius(35)
                        .frame(width: .infinity, height: 800)
                }
                .padding()
            }
            VStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Shop the store")
                        .font(Font.custom("HelveticaLTStd-Roman", size: 24))
                        .foregroundColor(Color("neon"))
                })
                .padding(.top, 30)
                .padding(.bottom, 24)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(22)
                .shadow(radius: 10)
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 50)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
