//
//  ViewController.m
//  NativeFlutter
//
//  Created by liqiang on 2020/7/3.
//  Copyright © 2020 HomeMate. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()
@property (strong,nonnull)FlutterEngine * engine;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.engine = [[FlutterEngine alloc] initWithName:@"hello"];
    [self.engine run];
}
- (IBAction)click:(id)sender {
    FlutterViewController * flu = [[FlutterViewController alloc] initWithEngine:self.engine nibName:nil bundle:nil];
    
    [self presentViewController:flu animated:YES completion:^{
        
    }];
}


@end
