//
//  main.m
//  HolaMundo
//
//  Created by Francisco Landero on 7/5/21.
//

#import <Foundation/Foundation.h>

//Function

//In Objc the retun value is at the begin of the fuction
//also for the parameters value tipes are before name of the parameter
int getSquare(int a) {
    // Value tipe before var name, not func or var keywork
    int value = a * a;
    return value;
}

int main(int argc, const char * argv[]) {
    
    //ARC count of instation automatic
    @autoreleasepool {
        
//        // MARK:- var declaration
//        int varName;
//        int varDeclared = 1;
//        ///First Declare the var and the implement it
//
//
//        //Casting flot value to interger
//        float floatVar = 3.1416;
//        int intVar = 4;
//
//        intVar = (int) floatVar;
//
//
//        NSLog(@"The value of my va converted is %i", intVar);
//
//        NSLog(@"The value of my va is %i", varDeclared);
//        //@ for strings
//        NSLog(@"Hello, World!");
//
//        //Call the square
//        NSLog(@"The Square of 2 is %i",getSquare(2));
//
//        // MARK:- Pointers
//
//        int var1 = 5;
//        int * var2 = &var1;
//
//        //This print var 1 and the direction of var 2
//        NSLog(@"Var 1 value: %i   Var 2 value %i", var1,var2);
//
//        //This print var 1 and the value of var 2
//        NSLog(@"Var 1 value: %i   Var 2 value %i", var1,*var2);
//
//        // MARK:- Define a constant
//        //Constat dont need ;
//#define CAMBIO_DOLAR 12.5
//
//        float cambio, resultado;
//
//        NSLog(@"Enter the amount on Pesos to convert");
//        scanf("%f", &cambio);
//        //We use a pointer to cambio to save the date there
//
//        resultado = cambio / CAMBIO_DOLAR;
//
//        NSLog(@"The convertion is %f pesos is equal to %2.f dollars", cambio, resultado);
        
//
//        // MARK:- Math operathors
//
//        int x = 3;
//
//        x += 2;
//
//        x = ++x;
//
//        NSLog(@"Value of x %i", x);
//
//        // MARK:- Structs
//
//        struct location {
//            float latitude;
//            float longitude;
//        };
//
//        struct location place;
//
//        place.latitude = 4.0123123;
//        place.longitude = 5.1231238;
        
//        // MARK:- Structs of control
//
//        int temperature = 22;
//
//        if (temperature >= 22) {
//            NSLog(@"Its hot");
//        } else {
//            NSLog(@"Nice");
//        }
//
//        //nesting
//
//        if (temperature >= 22) {
//            NSLog(@"Its hot");
//        } else if (temperature == 21){
//            NSLog(@"Nice");
//        } else {
//            NSLog(@"its cool");
//        }
//
//        //Tertiary operator
//
//        int x = 4;
//
//        x = (x != 4) ? true : false ;
//
//        NSLog(@"x is 4 %i",x);
        
        //Switch
        
//        float a,b,resultado;
//        int operation;
//
//        NSLog(@"Enter first number");
//        scanf("%f",&a);
//
//
//        NSLog(@"Enter second number");
//        scanf("%f",&b);
//
//
//        NSLog(@"To add enter 1\n");
//        NSLog(@"To subtract enter 2\n");
//        NSLog(@"To multiply enter 3\n");
//        NSLog(@"To divide enter 4\n");
//
//        scanf("%i",&operation);
//
//
//        switch (operation) {
//            case 1:
//                resultado = a+b;
//                printf("the result is: %.2f",resultado);
//                break;
//            case 2:
//                resultado = a-b;
//                printf("the result is: %.2f",resultado);
//                break;
//            case 3:
//                resultado = a*b;
//                printf("the result is: %.2f",resultado);
//                break;
//            case 4:
//                resultado = a/b;
//                printf("the result is: %.2f",resultado);
//                break;
//            default:
//                NSLog(@"I dont have that option");
//                break;
//        }
        
        //For loop
        
        int i;
        
        for (i = 0; i <= 10; i++) {
            printf("counting to %i ",i);
        }
        
        //While loop
        int x = 1;
        
        //while the condition is tru
        while (x <= 5) {
            x++;
            NSLog(@"Infinity loop");
        }
        
        //until the condition is reached
        do {
            NSLog(@"Finity loop");
        } while (x <= 5);
        
    }
    //Returning the Int value
    return 2;
}




