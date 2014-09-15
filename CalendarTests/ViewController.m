//
//  ViewController.m
//  CalendarTests
//
//  Created by Aidan Cornelius-Bell on 14/09/2014.
//

#import "ViewController.h"
#import "calendarControl.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize datePickerOutlet, eventNameOutlet, eventLocationOutlet;

- (void)viewDidLoad {
    [super viewDidLoad];
    [calendarControl requestAccess:^(BOOL granted, NSError *error) {
        NSLog(@"%@", [error localizedDescription]);
    }];
    [eventNameOutlet becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)createEventButton:(id)sender {
    [calendarControl addEventAt:datePickerOutlet.date withTitle:eventNameOutlet.text inLocation:eventLocationOutlet.text];
}
@end
