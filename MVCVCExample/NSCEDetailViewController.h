//
//  NSCEDetailViewController.h
//  MVCVCExample
//
//  Created by Niklas Saers on 3/6/12.
//  Copyright (c) 2012 NSCoder Night, Esbjerg. No rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSCEModel.h"

@interface NSCEDetailViewController : UIViewController {
    
    __weak IBOutlet UIWebView *webview;
}

@property (strong, nonatomic) NSCEMovie *movie;


@end
