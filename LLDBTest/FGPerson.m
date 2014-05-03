/*
 
 FGPerson.m
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

#import "FGPerson.h"

@implementation FGPerson

- (instancetype)initWithID:(int)personID
                   andName:(NSString *)name
{
    self = [super self];
    if (self) {
        _personId = personID;
        _name = [name copy];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@:%p, ID:%i Name:%@>",NSStringFromClass([self class]), self, _personId, _name];
}

@end
