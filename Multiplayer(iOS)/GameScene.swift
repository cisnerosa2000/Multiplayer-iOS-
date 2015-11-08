//
//  GameScene.swift
//  Multiplayer(iOS)
//
//  Created by cisnerosa on 11/5/15.
//  Copyright (c) 2015 cisnerosa. All rights reserved.
//

import SpriteKit



class GameScene: SKScene {
    let backgroundNode = SKSpriteNode(imageNamed: "Background")
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        
        
        
        backgroundNode.position = CGPoint(x: self.frame.size.width/2.0, y: self.frame.size.height/2.0)
        backgroundNode.zPosition = -1
        
        
        
        //320x568
        
        setupTiles()
        
        
        
        addChild(backgroundNode)
      
        
        
        
        var boardArray = [
            [0,0,0],
            [0,0,0],
            [0,0,0]]
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            if let name = nodeAtPoint(location).name {
                
                let coords = name.componentsSeparatedByString(" ")
                print(Int(coords[0]))
            }
    
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    func setupTiles() {
     
        let positions = [
        [[-108,108],[0,108],[108,108]],
        [[-108,0],[0,0],[108,0]],
        [[-108,-108],[0,-108],[108,-108]]]
        
        for level in positions {
            for coord in level {
                let node = SKSpriteNode(imageNamed: "square.png")
                node.position = CGPoint(x: coord[0], y: coord[1])
                node.name = "\(coord[0]) \(coord[1])"
                node.zPosition = 1
                backgroundNode.addChild(node)
            }
        }
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
