//
//  ViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire // import this file for networking purposes---http requests
import SwiftyJSON


class WeatherViewController: UIViewController, CLLocationManagerDelegate {
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "9d319b8306256c7864bedb466c169b82"
    /***Get your own App ID at https://openweathermap.org/appid ****/
    

    //TODO: Declare instance variables here
    let locationManager  = CLLocationManager()
    let weatherDataModel = WeatherDataModel()
    

    
    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //TODO:Set up the location manager here.
        locationManager.delegate = self  //this allows apple to send location data to the weatherView controller class
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters //this asks for an approximate location to find a location
        locationManager.requestWhenInUseAuthorization() //request permission from the user to gather data
        locationManager.startUpdatingLocation()
        
    
        
        
    }
    
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    

    func getWeatherData(url: String, parameters: [String : String]){
        
        
        //this helps request information from the openweather API
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            
            if response.result.isSuccess{
                print("Success! Got the weather data!")
                
                let weatherJSON : JSON = JSON(response.result.value!)
                print(weatherJSON)
                
                self.updateWeatherData(json: weatherJSON)
            }
            else {
                print("Error \(response.result.error)")
                self.cityLabel.text = "Connection Issues"
            }
        }
    }
    
    
    
    
    //MARK: - JSON Parsing
    /***************************************************************/
   
    
    //Write the updateWeatherData method here:
    func updateWeatherData(json : JSON){
        
        if let tempResult = json["main"]["temp"].double{ //this line of code picks up the value of temperature from the json file
        
        weatherDataModel.temperature = Int(tempResult - 273.15)
        
        weatherDataModel.city = json["name"].stringValue
            
        weatherDataModel.condition = json["weather"][0]["id"].intValue
            
        weatherDataModel.weatherIconName = weatherDataModel.updateWeatherIcon(condition: weatherDataModel.condition)
        
            
            updateUIWithWeatherData()
        }
        
        
        else {
            cityLabel.text = "Weather Unavailable"
        }
    }
    

    
    
    
    //MARK: - UI Updates
    /***************************************************************/
    
    
    //Write the updateUIWithWeatherData method here:
    
    func updateUIWithWeatherData(){
        
        cityLabel.text = weatherDataModel.city
        temperatureLabel.text = "\(weatherDataModel.temperature)"
        weatherIcon.image = UIImage(named: weatherDataModel.weatherIconName)
    }
    
    
    
    
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) { //this function gets updated location from the user
        
        let location = locations[locations.count - 1] //this creates an object and gets the last location from the cllocation
        if location.horizontalAccuracy > 0{ //checks if location does exit. airplanemode or in a tunnel
            locationManager.stopUpdatingLocation() // stops updating once a position is found
            locationManager.delegate = nil //allows location manager to stop receiving extra messages whiles its the process of being stopped
            
            print("Longitude = \(location.coordinate.longitude) , Latitude = \(location.coordinate.latitude)")
            
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            
            //creates a dictionary and sends this info to http://api.openweathermap.org/data/2.5/weather
            
            let params : [String: String] = ["lat" : latitude, "lon" : longitude, "appid" : APP_ID ]
            
            getWeatherData(url: WEATHER_URL, parameters: params)
        }
    }
    
    
    //Write the didFailWithError method here:
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        
        cityLabel.text = "Location Unavailable"
    }
    
    

    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    

    
    //Write the PrepareForSegue Method here
    
    
    
    
    
}


