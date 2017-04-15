//
//  main.m
//  block
//
//  Created by iOS-School-1 on 15.04.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

void f(int a,int (^inc)(void))
{
    NSLog(@"%@",@(a+inc()));
}

@interface  BlockTestClass: NSObject
-(void)testMemory;
@end;
@interface BlockTestClass()
{
    NSString *_str2;
}

@property(nonatomic,copy) NSString *str;
@property (nonatomic,copy) void (^test)(void);
@end

@implementation  BlockTestClass
-(instancetype) init{
    self=[super init];
    if (self)
        {
            _str=@"Hellow";
            _str2=@"Hellow2";
        }
    return self;
}

-(void) testMemory {
    __weak typeof (self) weakSelf=self;
   // __weak typeof (self) weakSelf=self;
    self.test=^void(void)
    {
        //NSLog(@"%@",weakSelf.str);
        //__strong typeof (self) strongSelf=weakSelf;
        //NSLog(@"%@",strongSelf.str);
        __strong typeof(self) strongSelf=weakSelf;
        NSLog(@"%@",strongSelf->_str2);
    };
    self.test();
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        //int a=10;
        
        //__block int a=10;
        //int (^inc)(void)=^int(void)
        //{
            //NSLog(@"%@",@((a)));
        //    return ++a;
        //};
        //a+=10;
        //inc();
        //f(2,inc);
        //dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
          //  NSLog(@"Hello, World!");
        //});
        //__block int a=10;
        //int (^inc)(void)=^int(void)
        //{
        //    NSLog(@"%@",@((a)));
        //    return ++a;
        //};
        
        //[inc copy];
       // BlockTestClass *test=[BlockTestClass new];
       // [test testMemory];
        NSArray *arr=@[@(1),@(2),@(4),@(3),@(5)];
        [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx,
            BOOL *_Nonnull stop)
            {
                if (3==[obj intValue]){
                    NSLog(@"%@",@(idx));
                }
         }];
        
    return 0;
        
    }
}
