//
//  ProfileViewController.m
//  CodeSchoolSlides
//
//  Created by Arek Turlewicz on 13/03/11.
//  Copyright (c) 2013年 Arek Turlewicz. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage *origImage = [UIImage imageNamed:@"a1.png"];
        self.tabBarItem.image = [UIImage imageWithCGImage:origImage.CGImage scale:10 orientation:-90 ];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Profile";
    UIImageView *pictureView = [[UIImageView alloc] initWithImage:
                              [UIImage imageNamed:@"a2.jpg"]];
    [pictureView setContentMode:UIViewContentModeScaleAspectFit];
    pictureView.frame = self.view.frame;
    pictureView.frame = CGRectMake(20,20,100,114);
    [self.view addSubview:pictureView];
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: Ball 3D";
    [self.view addSubview:nameLabel];

    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"From: Orlando";
    [self.view addSubview:cityLabel];
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"This ball is the ...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal...bla bla bal";
    [self.view addSubview:biography];
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,440,280,40)];
    memberSinceLabel.text = @"November 2012";
    [self.view addSubview:memberSinceLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
