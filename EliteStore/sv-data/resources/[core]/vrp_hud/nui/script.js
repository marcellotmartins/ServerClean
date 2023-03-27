
const actions = {
	resolution: (data) => {
		if (data && data.map) {
			let map = data.map;
			let container = $(".container-map");
			container.css({
				height: map.height + "px",
				top: map.top + "px",
				left: (map.width + map.left + 5) + "px", 
			});
		}
	},
	showAll: () => {
		$("body").fadeIn(500);
	},
	hideAll: () => {
		$("body").fadeOut(500);
	},
	updateHealth: (data) => {
		let health = data.health;
		if (health < 0) health = 0;
		if (health > 1) health = 1;
		$('.life').circleProgress('value', health);
	},
	updateArmour: (data) => {
		let armour = data.armour;
		if (armour < 0) armour = 0;
		if (armour > 1) armour = 1;
		$('.armour').circleProgress('value', armour);
	},
	updateHunger: (data) => {
		let hunger = data.hunger;
		if (hunger < 0) hunger = 0;
		if (hunger > 1) hunger = 1;
		$('.hunger').circleProgress('value', hunger);
	},
	updateThirst: (data) => {
		let thirst = data.thirst;
		if (thirst < 0) thirst = 0;
		if (thirst > 1) thirst = 1;
		$('.thirst').circleProgress('value', thirst);
	},
	updateFuel: (data) => {
		let fuel = data.fuel;
		if (fuel < 0) fuel = 0;
		if (fuel > 1) fuel = 1;
		$('.speedometer-container').circleProgress('value', fuel);
	},
	updateEngineHealth: (data) => {
		let engineHealth = data.engineHealth;
		if (engineHealth < 0) engineHealth = 0;
		if (engineHealth > 1) engineHealth = 1;
		$('.fuel-circle').circleProgress('value', engineHealth);
	},
	updateStreet: (data) => {
		let street = data.street;
		$(".street").text(street);
	},
	updateTime: (data) => {
		let time = data.time;
		$(".time").text(time);
	},
	showVehicleHud: () => {
		$(".container").fadeOut(500);
		$(".container-map").fadeIn(500);
		$(".speedometer-container").fadeIn(500);
	},
	hideVehicleHud: () => {
		$(".container").fadeIn(500);
		$(".container-map").fadeOut(500);
		$(".speedometer-container").fadeOut(500);
	},
	updateSpeed: (data) => {
		let speed = data.speed;
		$(".speed").text(speed);
	},
	updateSeatbelt: (data) => {
		let seatbeltOn = data.seatbeltOn;
		let seatbelt = $("#seatbelt");
		if (seatbeltOn) {
			seatbelt.attr("src", "img/seat-belt-locked.svg");
			let audio = new Audio("sounds/seatbelt-buckle.ogg");
			audio.volume = 0.5;
			audio.play();
		} else {
			seatbelt.attr("src", "img/seat-belt-unlocked.svg");
			if (!data.pressed) return;
			let audio = new Audio("sounds/seatbelt-unbuckle.ogg");
			audio.volume = 0.5;
			audio.play();
		}
	},
	updateMic: (data) => {
		let mode = data.mode;
		let modes = {
			[1]: 0.25,
			[2]: 0.5,
			[3]: 1.0
		}
		let value = modes[mode];
		$('.mic').circleProgress('value', value);
	},
	updatePlayerTalking: (data) => {
		let talking = data.talking;
		let mic = $(".mic");
		if (talking) {
			mic.addClass("talking");
		} else {
			mic.removeClass("talking");
		}
	}
}

$(() => {
    window.addEventListener("message", function(event) {
		let action = event.data.action;
		if (actions[action]) actions[action](event.data);
    });
});

$(document).ready(function(){
	window.addEventListener("message",function(event){
		$(".esc").css("display",+event.data.show?"none":"block");
	});
});

