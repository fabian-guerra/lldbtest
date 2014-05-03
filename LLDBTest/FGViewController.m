/*
 
 FGViewController.m
 LLDBTest
 
 Copyright 2014 Fabian Guerra
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

#import "FGViewController.h"
#import "FGPerson.h"

@interface FGViewController ()

@property (strong, nonatomic) FGPerson *person;
@property (strong, nonatomic) NSArray *names;

@end

@implementation FGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"LLDB Test";
    _names = @[@"Harry Cracker", @"John Appleseed", @"Foo Biz"];
    
    _person = [[FGPerson alloc]initWithID:0 andName:@"John Doe"];
    [self setLabels];
	
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPersonHandler:(id)sender
{
    NSUInteger index = arc4random_uniform(3);
    int counter = _person.personId + 1;
    
    _person = [[FGPerson alloc] initWithID:counter andName:[_names objectAtIndex:index]];
    [self setLabels];
    
}

- (void)setLabels
{
    _idLabel.text = [NSString stringWithFormat:@"%i",_person.personId];
    _nameLabel.text = _person.name;
}
@end
