//
//  ViewController.h
//  ClickCollapse
//
//  Created by Desen on 2016-12-19.
//  Copyright © 2016 Desen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<CollapseClickDelegate>
{
    
    __weak IBOutlet CollapseClick *CCOptionSetting;
    IBOutlet UIView *viewOptionSetting;
    IBOutlet UIView *ViewOptionSettingMask;
}





@end

