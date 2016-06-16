//singing exercise
var x

for (x = "la"; x.length <= 20; x = x + x) {
      console.log(x);
}

function BlastOff (number){
	for (x = number; x >= -1; x = x -1){
		if (x >= 0){
			console.log(x);
		} else {
			console.log("BLAST OFF!");
		}
	}
}
BlastOff(3)