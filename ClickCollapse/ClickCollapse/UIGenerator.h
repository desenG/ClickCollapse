//
//  UIGenerator.h
//  ClickCollapse
//
//  Created by giatec on 2016-12-20.
//  Copyright © 2016 Desen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIGenerator : NSObject
+(UIView*)getFullScreenUIViewWithColor :(UIColor*)color;

+(UIView*)getUIViewWithReferenceFrame:(CGRect)referenceFrame
                            andColor :(UIColor*)color;

+(UIView*)getClickCollapseMaskView;
@end
