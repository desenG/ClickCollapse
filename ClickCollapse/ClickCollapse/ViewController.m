//
//  ViewController.m
//  ClickCollapse
//
//  Created by Desen on 2016-12-19.
//  Copyright © 2016 Desen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CCOptionSetting.CollapseClickDelegate = self;
    [CCOptionSetting reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [CCOptionSetting openCollapseClickCellAtIndex:0 animated:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collapse Click Delegate
// Required Methods
-(int)numberOfCellsForCollapseClick {
    return 2;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index {
    switch (index) {
        case 0:
            return @"Login To CollapseClick";
            break;
        default:
            return @"";
            break;
    }
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    switch (index) {
        case 0:
            return viewOptionSetting;
            break;
            
        default:
            return [UIGenerator getClickCollapseMaskView];
            break;
    }
}

#pragma mark - TextField Delegate for Demo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
