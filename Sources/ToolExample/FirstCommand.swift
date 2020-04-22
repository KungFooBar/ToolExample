//
//  File.swift
//  
//
//  Created by Дмитрий Белоусов on 17.04.2020.
//

import ArgumentParser

struct FirstCommand: ParsableCommand {
    
    static let configuration = CommandConfiguration(commandName: "command", abstract: "First command")
 
    @Argument(default: "chtoto defoltnoe", help: "Helpani sebe sam")
    var firstArg: String
    
    @Option(
        name: [
            .customLong("opt-arg", withSingleDash: false),
            .customShort("o")
        ],
        help: "The number of times to repeat 'phrase'."
    )
    var optArg: Int
    
    @Flag()
    var flag: Bool
    
    func run() throws {
        print("First command:", firstArg, optArg, flag)
    }
    
}
