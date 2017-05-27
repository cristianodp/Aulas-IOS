//
//  Carro.m
//  Aula1
//
//  Created by Cristiano Diniz Pinto on 26/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

#import "Carro.h"

@implementation Carro

-(void)acelelar:(NSInteger)aceleracao{
    
    velocidade = velocidade + aceleracao;
    
};
-(void)reduzir:(NSInteger) reducao{
    
    velocidade = velocidade - reducao;
    
};

-(void)freiar{
    
    velocidade = 0;
    
};

-(void)imprimirVelecidade{
    
    NSLog(@"Velocidade : %ld",velocidade);
}

-(NSString *)retornaVelecidade{
    
    return [NSString stringWithFormat:@"%ld",velocidade];
    
};

@end
