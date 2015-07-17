//
//  ViewController.m
//  Weather
//
//  Created by Mac on 15/07/15.
//  Copyright (c) 2015 Mac. All rights reserved.
//

#import "ViewController.h"

#define Weather_Constant_h @"https://api.forecast.io/forecast/55fd84ec05521fd5403322dc96ed402c/-33.873651,151.2068896"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    urlString = @"https://api.forecast.io/forecast/55fd84ec05521fd5403322dc96ed402c/-33.873651,151.2068896";
    
    url=[NSURL URLWithString:urlString];
    
    NSData *data=[NSData dataWithContentsOfURL:url];
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
 //  NSLog(@"Root Ditcionary is %@",json);
    
   NSDictionary *weatherArray=[[NSDictionary alloc]init];
        
        weatherArray=[json objectForKey:@"currently"];
    NSLog(@"-----------------------");
    NSLog(@"CURRENT WEATHER SYDNEY");
    NSLog(@"-----------------------"); 
    NSLog(@"Summary is      %@",[weatherArray objectForKey:@"summary"]);
    NSLog(@"Temperature is  %@",[weatherArray objectForKey:@"temperature"]);
    NSLog(@"Dew Point is    %@",[weatherArray objectForKey:@"dewPoint"]);
    NSLog(@"Humidity is     %@",[weatherArray objectForKey:@"humidity"]);
    NSLog(@"Wind Speed is   %@",[weatherArray objectForKey:@"windSpeed"]);
    NSLog(@"Wind Bearing is %@",[weatherArray objectForKey:@"windBearing"]);
    NSLog(@"Visibility is   %@",[weatherArray objectForKey:@"visibility"]);
    NSLog(@"Cloud Cover is  %@",[weatherArray objectForKey:@"cloudCover"]);
    NSLog(@"Pressure is     %@",[weatherArray objectForKey:@"pressure"]);
    NSLog(@"Ozone is        %@",[weatherArray objectForKey:@"ozone"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
