//
//  GameScene.swift
//  JoinSwift
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {

        
        backgroundColor = UIColor.blackColor()
        
        let elemento1 = SKSpriteNode(color: UIColor.blueColor(), size: CGSizeMake(50, 50))
        elemento1.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame)-50)
        
        addChild(elemento1)
        
        let elemento2 = SKSpriteNode(color: UIColor.redColor(), size: CGSizeMake(50, 50))
        elemento2.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame)+50)
        addChild(elemento2)
        
        
        elemento1.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(50, 50))
        elemento2.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(50, 50))
        
        elemento1.physicsBody?.dynamic = false
        elemento1.physicsBody?.affectedByGravity = false
        
        elemento2.physicsBody?.dynamic = true
        elemento2.physicsBody?.affectedByGravity = true
        
        
        
        let conexion = SKPhysicsJointLimit.jointWithBodyA(
            elemento1.physicsBody,
            bodyB:
            elemento2.physicsBody,
            anchorA: CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)+25),
            anchorB: CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)-25))
        
        elemento2.physicsBody?.applyTorque(1)
        
        self.physicsWorld.addJoint(conexion)
        
    }
    
    
    
    
    
    
    
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {

        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
