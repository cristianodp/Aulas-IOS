//
//  Carro.h
//  Aula1
//
//  Created by Cristiano Diniz Pinto on 26/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject{
    NSInteger velocidade;
}

@property NSString *modelo;
@property NSString *fabricante;
@property NSString *cor;
@property BOOL ligado;

-(void)acelelar:(NSInteger)aceleracao;
-(void)reduzir:(NSInteger) reducao;
-(void)freiar;
-(void)imprimirVelecidade;
-(NSString *)retornaVelecidade;

@end
