//
//  ViewController.m
//  SharingApp
//
//  Created by Shubham on 30/04/17.
//  Copyright © 2017 perpule. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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
- (IBAction)shareIt:(id)sender {
    
    UIImage *image = [UIImage imageNamed:@"cat.jpg"];
    
    NSArray *activityArray = @[UIActivityTypeAddToReadingList,UIActivityTypeAirDrop,UIActivityTypeAssignToContact,UIActivityTypeCopyToPasteboard,UIActivityTypeMail,UIActivityTypeMessage,UIActivityTypeOpenInIBooks,UIActivityTypePostToFacebook,UIActivityTypePostToFlickr,UIActivityTypePostToTencentWeibo,UIActivityTypePostToTwitter,UIActivityTypePostToVimeo,UIActivityTypePostToWeibo,UIActivityTypePrint,UIActivityTypeSaveToCameraRoll];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[image] applicationActivities:nil];
    
    UINavigationController *nav = self.navigationController;
    [nav presentViewController:activityViewController animated:YES completion:nil];
    
}

@end
