// Basic enum

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    
    // case monday, tuesday, wednesday, thursday, friday
}

var today: Weekday

today = Weekday.friday

if (today == Weekday.monday){
    print("It is Monday")
}

switch today{
case .monday, .wednesday, .friday:
    print("Swim practice")
case .thursday:
    print("Horse")
default:
    print("Piano")
}





// Rawvalues

enum State: Int {
    case ready = 0, set = 1, go = 2
}

var raceState = State.ready
raceState.rawValue

var nextRaceState = State(rawValue: 2)

if nextRaceState?.rawValue == 0{
    print("Ready")
}


// Associated values and functions

enum HomeworkStatus{
    case noHomework
    case inProgress(Int,Int)
    case done
    
    func simpleDescription() -> String{
        switch self {
        case .noHomework:
            return "no Hw"
        case .inProgress(let workDone, let totalProblems):
            return "You have Finished \(workDone) out of \(totalProblems)"
        case .done:
            return "done"
        }
    }
    
}

var myHwStatus = HomeworkStatus.inProgress(8, 10)

myHwStatus.simpleDescription()





