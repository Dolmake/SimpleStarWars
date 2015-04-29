//
//  DLMKWikiViewController.h
//  SimpleStarWars
//
//  Created by Daniel on 29/04/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLMKWikiViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
-(id) initWithURL:(NSString*) url;

@end
