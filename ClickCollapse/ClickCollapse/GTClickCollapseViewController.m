//
//  GTClickCollapseViewController.m
//  ClickCollapse
//
//  Created by giatec on 2016-12-20.
//  Copyright © 2016 Desen. All rights reserved.
//

#import "GTClickCollapseViewController.h"

@implementation GTClickCollapseViewController
// Required Methods
-(int)numberOfCellsForCollapseClick {
    return 0;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index {
    return nil;
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index {
    return nil;
}


// Optional Methods

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
    return [UIColor whiteColor];
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    return [UIColor greenColor];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    return [UIColor colorWithWhite:0.0 alpha:0.25];
}

-(void)didClickCollapseClickCellAtIndex:(int)index isNowOpen:(BOOL)open {
    NSLog(@"%d and it's open:%@", index, (open ? @"YES" : @"NO"));
}
@end
