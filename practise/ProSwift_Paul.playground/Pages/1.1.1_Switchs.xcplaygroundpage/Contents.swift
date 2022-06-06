import Foundation


let age = 33
let religion = "Chirstian"


switch (age,religion) {
case (33,"Chirstian"):
	print("The Profile has send interest")
default:
	print("Profile doesn't matches")
}

let language = "Swift"
let experience = 5

switch (language,experience) {
	
case ("Swift",5):
	print("Your profile selected for iOS developer role")
default:
	print("Profile doesn't match for iOS developer role")
}


enum Status {
	case notStarted
	case inprogress
	case completed
}

enum Team {
	case andriod
	case iOS
	case web
}

struct WorkStatus {
	let status:Status
	let team:Team
}

let teamStatus = WorkStatus(status: .inprogress, team: .iOS)


switch (teamStatus.status,teamStatus.team) {

	
case (.completed, .iOS):
	print("Completed")
case (.notStarted, .iOS):
	print("NotStarted")
case (.inprogress, .iOS):
	print("Inprogress with feature iOs")
case (_, .andriod):
	print("Andriod team is building")
case (_, .web):
	print("Web is working")
}
