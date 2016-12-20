//
//  UIGenerator.m
//  ClickCollapse
//
//  Created by giatec on 2016-12-20.
//  Copyright © 2016 Desen. All rights reserved.
//

#import "UIGenerator.h"

@implementation UIGenerator
+(UIView*)getFullScreenUIViewWithColor :(UIColor*)color
{
    // get your window screen size
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    UIView* fullScreenView= [self getUIViewWithReferenceFrame:screenRect andColor:color];
    return fullScreenView;
}

+(UIView*)getUIViewWithReferenceFrame:(CGRect)referenceFrame
                   andColor :(UIColor*)color
{
    //create a new view with the same size
    UIView* newView= [[UIView alloc] initWithFrame:referenceFrame];
    newView.backgroundColor = color;
    return newView;
}

+(UIView*)getClickCollapseMaskView
{
    CGRect maskRect = [[UIScreen mainScreen] bounds];
    maskRect.size.height = maskRect.size.height + 50;
    maskRect.origin.y = -50;
    
    return [self getUIViewWithReferenceFrame:maskRect andColor:[UIColor whiteColor]];
}
@end
