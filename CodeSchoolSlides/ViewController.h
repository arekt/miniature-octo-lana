//
//  ViewController.h
//  CodeSchoolSlides
//
//  Created by Arek Turlewicz on 13/02/21.
//  Copyright (c) 2013年 Arek Turlewicz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (void)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) UIButton *firstButton;
@property (weak, nonatomic) UIButton *secondButton;
@end
