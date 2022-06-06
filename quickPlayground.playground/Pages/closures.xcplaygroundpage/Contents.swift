import Foundation

let double:(Int) -> Int = { x in
	return x * 2
}



let closureAsBlockCode = {
	
	let player1 = "Vinod"
	let player2 = "Sunitha"
	
	if player1 > player2 {
		print("hi \(player1) won")
	}else{
		print("hi \(player2) won")
	}
	
	
}

closureAsBlockCode()
