//
//  OWOuterSpaceTableViewController.m
//  OutofThisWorld
//
//  Created by Brown Magic on 9/5/14.
//  Copyright (c) 2014 codeHatcher. All rights reserved.
//

#import "OWOuterSpaceTableViewController.h"
#import "AstronomicalData.h"
#import "OWSpaceObject.h"

@interface OWOuterSpaceTableViewController ()

@end

@implementation OWOuterSpaceTableViewController

- (id)initWithStyle:(UITableViewStyle)style {
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  // Uncomment the following line to preserve selection between presentations.
  // self.clearsSelectionOnViewWillAppear = NO;

  // Uncomment the following line to display an Edit button in the navigation
  // bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  self.planets = [[NSMutableArray alloc] init];
  for (NSMutableDictionary *planet in [AstronomicalData allKnownPlanets]) {
    NSString *imageFileName = [NSString stringWithFormat:@"%@.jpg", planet[PLANET_NAME]];
    OWSpaceObject *planetObj = [[OWSpaceObject alloc] initWithData:planet andImage:[UIImage imageNamed:imageFileName]];
    [self.planets addObject:planetObj];
    
  }
//  NSMutableDictionary *myDictionary = [NSMutableDictionary new];
//  NSString *firstColor = @"red";
//  [myDictionary setObject:firstColor forKey:@"firetruck color"];
//  [myDictionary setObject:@"blue" forKey:@"ocean color"];
//  [myDictionary setObject:@"yelllow" forKey:@"star color"];
//  NSLog(@"%@", myDictionary);
//  
//  NSString *blueString = [myDictionary objectForKey:@"ocean color"];
//  NSLog(@"%@", blueString);
  NSNumber *myNumber = [NSNumber numberWithInt: 5];
  NSLog(@"%@", myNumber);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
  // Return the number of rows in the section.
  NSLog(@"%i", [self.planets count]);
  return [self.planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                      forIndexPath:indexPath];

  // Configure the cell...
  OWSpaceObject *planet = [self.planets objectAtIndex:indexPath.row];
  cell.textLabel.text = planet.name;
  cell.detailTextLabel.text = planet.nickname;
  cell.imageView.image = planet.spaceImage;
  
  cell.backgroundColor = [UIColor clearColor];
  cell.textLabel.textColor = [UIColor whiteColor];
  cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];

  return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath
*)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath]
withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the
array, and add a new row to the table view
    }
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath
*)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath
*)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little
preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
