

protocol AdvancedLifeSupport {
    func performCpr()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    func assessSituation()  {
        print("get details")
    }
    
    func medicalEmergency()  {
        delegate?.performCpr()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    
    
    func performCpr() {
        print("The paramedic will do chest compressions.")
    }
    
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCpr() {
        print("doctor does chest compression")
    }
    
}


class Surgeon: Doctor {
    override  func  performCpr() {
        super.performCpr()
        print("sing")
    }
}


let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
emilio.medicalEmergency()

let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()




