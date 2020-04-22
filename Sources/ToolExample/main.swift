import ArgumentParser


// toolexample command

struct MainCommand: ParsableCommand {

    static let configuration = CommandConfiguration(
        commandName: "command",
        abstract: "First command",
        subcommands: [
            FirstCommand.self
        ]
    )
    
    func run() throws {
        print("MainCommand")
    }

}


MainCommand.main()
