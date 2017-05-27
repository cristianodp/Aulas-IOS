//
//  main.m
//  Aula1
//
//  Created by Cristiano Diniz Pinto on 24/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carro.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        ///*  exemplo com int *//
        int num1 = 10;
        
        int num2 = 10;
        
        int calc = num1 + num2;
        
        NSLog(@"Soma numeros int: %d",calc);
        
        
        ///*  exemplo com Float *//
        
        float num2Float = 10;
        
        float calc2 = num1 * num2Float;
        
        NSLog(@"Multiplicacao int e float : %f",calc2);

        
        ///*  exemplo com NSString *//
        
        NSString *primeiroNome = @"Cristiano";
        NSString *segundoNome = @"Diniz";
        NSString *ultimoNome = @"Pinto";
        
        NSString *nomeCompleto = [NSString stringWithFormat:@"%@ %@ %@", primeiroNome, segundoNome, ultimoNome];
        
        NSLog(@"Meu nome é %@",nomeCompleto);
        
        ///*  exemplo com Classe Carro *//
        
        Carro * chevete = [Carro new];
        
        chevete.modelo = @"Chevete";
        chevete.fabricante = @"chevrolet";
        chevete.cor = @"prata";
        [chevete acelelar:100];
        [chevete imprimirVelecidade];
        
        
    
    }
    return 0;
}
