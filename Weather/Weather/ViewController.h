//
//  ViewController.h
//  Weather
//
//  Created by Mac on 15/07/15.
//  Copyright (c) 2015 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLConnectionDelegate,NSURLConnectionDataDelegate>{
    
    NSString *urlString;
    NSURL    *url;

}


@end
