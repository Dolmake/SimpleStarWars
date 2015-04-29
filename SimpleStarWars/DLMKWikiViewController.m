//
//  DLMKWikiViewController.m
//  SimpleStarWars
//
//  Created by Daniel on 29/04/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKWikiViewController.h"

@interface DLMKWikiViewController ()

@property (copy, nonatomic) NSString* url;

@end

@implementation DLMKWikiViewController



-(id) initWithURL:(NSString*) url{
    if (self = [super initWithNibName:nil bundle:nil]){
        _url = url;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated{
    
    NSURLRequest* req = [NSURLRequest requestWithURL:[NSURL URLWithString:self.url]];
    [self.webView loadRequest:req ];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
