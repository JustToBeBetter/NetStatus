//
//  ViewController.m
//  NetStatus-Test
//
//  Created by 成璐飞 on 16/2/25.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

#import "ViewController.h"
#import "ChechNetStatus.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)checkNetStatus:(id)sender {
    
    NSInteger status = [ChechNetStatus checkDreviceNetStatus];
    switch (status) {
        case 0:
            self.label.text = @"没有网络";
            break;
        
        case 1:
            self.label.text = @"wifi";
            break;
            
        case 2:
            self.label.text = @"数据";
            break;
            
        default:
            break;
    }
    
}

@end
