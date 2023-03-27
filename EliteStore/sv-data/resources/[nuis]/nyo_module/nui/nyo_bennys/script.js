let bennysConfig,
	bennysModTypes,
	bennysAvailableModifications,
	bennysVehModifications,
	bennysVName,
	bennysIsBike;

let bennysTotalPrice = 0;
let changedMods = {};

const bennysCategoriesNames = {
	appearance: "Aparência",
	customization: "Customização",
	performance: "Performance",
	interior: "Interior",
	wheels: "Rodas",
	extras: "Extras",
};

const bennysWheelTypes = [
	"Sport",
	"Muscle",
	"Lowrider",
	"SUV",
	"Off Road",
	"Tuner",
	"Bike",
	"High End",
	"Benny's Original",
	"Benny's Bespoke",
	"Open Wheel",
	"Street",
	"Track",
];

const bennysPaintTypes = [
	"Normal",
	"Metálico",
	"Perolado",
	"Fosco",
	"Metal",
	"Cromado",
];

const bennysWheelColours = [
	{ name: "Black", colorindex: 0, color: '#000' },
	{ name: "Carbon Black", colorindex: 147, color: '#000' },
	{ name: "Hraphite", colorindex: 1, color: '#0d0d0d' },
	{ name: "Anhracite Black", colorindex: 11, color: '#121212' },
	{ name: "Black Steel", colorindex: 2, color: '#1c1c1c' },
	{ name: "Dark Steel", colorindex: 3, color: '#333333' },
	{ name: "Silver", colorindex: 4, color: '#a1a1a1' },
	{ name: "Bluish Silver", colorindex: 5, color: '#b5b5b5' },
	{ name: "Rolled Steel", colorindex: 6, color: '#949494' },
	{ name: "Shadow Silver", colorindex: 7, color: '#435367' },
	{ name: "Stone Silver", colorindex: 8, color: '#4C4B4B' },
	{ name: "Midnight Silver", colorindex: 9, color: '#2A303C' },
	{ name: "Cast Iron Silver", colorindex: 10, color: '#49545D' },
	{ name: "Red", colorindex: 27, color: '#A41D29' },
	{ name: "Torino Red", colorindex: 28, color: '#AE1D1F' },
	{ name: "Formula Red", colorindex: 29, color: '#C8121E' },
	{ name: "Lava Red", colorindex: 150, color: '#AF1520' },
	{ name: "Blaze Red", colorindex: 30, color: '#BD3030' },
	{ name: "Grace Red", colorindex: 31, color: '#7C1F23' },
	{ name: "Garnet Red", colorindex: 32, color: '#82313B' },
	{ name: "Sunset Red", colorindex: 33, color: '#6F2125' },
	{ name: "Cabernet Red", colorindex: 34, color: '#501730' },
	{ name: "Wine Red", colorindex: 143, color: '#1F1A21' },
	{ name: "Candy Red", colorindex: 35, color: '#C42049' },
	{ name: "Hot Pink", colorindex: 135, color: '#FE30A0' },
	{ name: "Pfsiter Pink", colorindex: 137, color: '#E8659C' },
	{ name: "Salmon Pink", colorindex: 136, color: '#FEDBD1' },
	{ name: "Sunrise Orange", colorindex: 36, color: '#FE856B' },
	{ name: "Orange", colorindex: 38, color: '#FF8C27' },
	{ name: "Bright Orange", colorindex: 138, color: '#FFB93B' },
	{ name: "Gold", colorindex: 99, color: '#B29C7F' },
	{ name: "Bronze", colorindex: 90, color: '#A17852' },
	{ name: "Yellow", colorindex: 88, color: '#FEC130' },
	{ name: "Race Yellow", colorindex: 89, color: '#F3CE22' },
	{ name: "Dew Yellow", colorindex: 91, color: '#D3CF4B' },
	{ name: "Dark Green", colorindex: 49, color: '#1E383C' },
	{ name: "Racing Green", colorindex: 50, color: '#1D5241' },
	{ name: "Sea Green", colorindex: 51, color: '#135052' },
	{ name: "Olive Green", colorindex: 52, color: '#59635B' },
	{ name: "Bright Green", colorindex: 53, color: '#187F34' },
	{ name: "Gasoline Green", colorindex: 54, color: '#2B8E8E' },
	{ name: "Lime Green", colorindex: 92, color: '#AEDD24' },
	{ name: "Midnight Blue", colorindex: 141, color: '#22273B' },
	{ name: "Galaxy Blue", colorindex: 61, color: '#213D51' },
	{ name: "Dark Blue", colorindex: 62, color: '#1F3F6D' },
	{ name: "Saxon Blue", colorindex: 63, color: '#4C6F99' },
	{ name: "Blue", colorindex: 64, color: '#194DA5' },
	{ name: "Mariner Blue", colorindex: 65, color: '#869DC1' },
	{ name: "Harbor Blue", colorindex: 66, color: '#677083' },
	{ name: "Diamond Blue", colorindex: 67, color: '#C9D9DD' },
	{ name: "Surf Blue", colorindex: 68, color: '#82B1BF' },
	{ name: "Nautical Blue", colorindex: 69, color: '#4B7186' },
	{ name: "Racing Blue", colorindex: 73, color: '#3073BA' },
	{ name: "Ultra Blue", colorindex: 70, color: '#0EA9F2' },
	{ name: "Light Blue", colorindex: 74, color: '#82ADCA' },
	{ name: "Chocolate Brown", colorindex: 96, color: '#403B3D' },
	{ name: "Bison Brown", colorindex: 101, color: '#5D4B51' },
	{ name: "Creeen Brown", colorindex: 95, color: '#655C50' },
	{ name: "Feltzer Brown", colorindex: 94, color: '#6C523A' },
	{ name: "Maple Brown", colorindex: 97, color: '#7D5846' },
	{ name: "Beechwood Brown", colorindex: 103, color: '#60413D' },
	{ name: "Sienna Brown", colorindex: 104, color: '#813E29' },
	{ name: "Saddle Brown", colorindex: 98, color: '#715447' },
	{ name: "Moss Brown", colorindex: 100, color: '#83806A' },
	{ name: "Woodbeech Brown", colorindex: 102, color: '#B2A178' },
	{ name: "Straw Brown", colorindex: 99, color: '#B39C80' },
	{ name: "Sandy Brown", colorindex: 105, color: '#CAB389' },
	{ name: "Bleached Brown", colorindex: 106, color: '#EDDBBB' },
	{ name: "Schafter Purple", colorindex: 71, color: '#4D4C72' },
	{ name: "Spinnaker Purple", colorindex: 72, color: '#434569' },
	{ name: "Midnight Purple", colorindex: 142, color: '#272337' },
	{ name: "Bright Purple", colorindex: 145, color: '#7B2A8B' },
	{ name: "Cream", colorindex: 107, color: '#F5E6D0' },
	{ name: "Ice White", colorindex: 111, color: '#EADED1' },
	{ name: "Frost White", colorindex: 112, color: '#ffffff' },
];

let customNames = {
	[14]: [
		"Buzina de Caminhão",
		"Buzina Policial",
		"Buzina de Palhaço",
		"Buzina Musical 1",
		"Buzina Musical 2",
		"Buzina Musical 3",
		"Buzina Musical 4",
		"Buzina Musical 5",
		"Trombone Triste",
		"Buzina Clássica 1",
		"Buzina Clássica 2",
		"Buzina Clássica 3",
		"Buzina Clássica 4",
		"Buzina Clássica 5",
		"Buzina Clássica 6",
		"Buzina Clássica 7",
		"Nota Musical Do",
		"Nota Musical Re",
		"Nota Musical Mi",
		"Nota Musical Fa",
		"Nota Musical Sol",
		"Nota Musical La",
		"Nota Musical Ti",
		"Nota Musical Do (Grave)",
		"Buzina de Jazz 1",
		"Buzina de Jazz 2",
		"Buzina de Jazz 3",
		"Buzina de Jazz Loop",
		"Star Spangled Banner",
		"Star Spangled Banner",
		"Star Spangled Banner",
		"Star Spangled Banner",
		"Buzina Clássica Loop",
		"Buzina Clássica 8",
		"Buzina Clássica Loop 2",
		"Halloween Loop 1",
		"Halloween Loop 2",
		"San Andreas Loop",
		"Liberty City Loop",
		"Loop Festival 1",
		"Loop Festival 2",
		"Loop Festival 3",
		"Street Transmission",
		"Buzina Musical Loop 6",
		"Buzina Musical Loop 7",
		"Buzina Musical Loop 8",
		"Buzina Natalina 1",
		"Buzina Natalina 2",
		"Buzina Natalina 3",
		"Buzina Natalina 4",
		"Buzina Natalina 5",
		"Buzina Natalina 6",
		"Buzina de Corneta Loop 1",
		"Buzina de Corneta 1",
		"Buzina de Corneta Loop 2",
		"Buzina de Corneta 2",
		"Buzina de Corneta Loop 3",
		"Buzina de Corneta 3",
	],
};

const bennysToggleMods = {
	[18]: "turbo",
	[20]: "tyreSmokeOn",
};

customNames[14][-1] = "Original";

function hexToRgb(hex) {
	var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
	return result
		? {
				r: parseInt(result[1], 16),
				g: parseInt(result[2], 16),
				b: parseInt(result[3], 16),
		  }
		: null;
}

function rgbToHex(r, g, b) {
	return "#" + ((1 << 24) + (r << 16) + (g << 8) + b).toString(16).slice(1);
}

function setVehPaintType(index, type, self) {
	const tableIndex = (type == 1 ? "primary" : "secondary") + "PaintType";
	if (bennysVehModifications[tableIndex] != index) {
		if (!changedMods[tableIndex]) {
			changedMods[tableIndex] = bennysVehModifications[tableIndex];
			bennysTotalPrice += bennysModTypes[tableIndex]?.price || 1000;
		} else if (index == changedMods[tableIndex]) {
			bennysTotalPrice -= bennysModTypes[tableIndex]?.price || 1000;
			changedMods[tableIndex] = false;
		}
	}
	bennysVehModifications[tableIndex] = index;
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	sendData("bennysSetPaintType", { paintType: index, type });
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
}

function changeTyreSmokeColour(value) {
	let rgb = hexToRgb(value);
	if (bennysVehModifications.tyreSmokeColour != rgb) {
		if (!changedMods.tyreSmokeColour) {
			changedMods.tyreSmokeColour =
				bennysVehModifications.tyreSmokeColour;
			bennysTotalPrice += bennysModTypes.tyreSmokeColour?.price || 1000;
		} else if (rgb == changedMods.tyreSmokeColour) {
			bennysTotalPrice -= bennysModTypes.tyreSmokeColour?.price || 1000;
			changedMods.tyreSmokeColour = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications.tyreSmokeColour = rgb;
	sendData("bennysSetTyreSmokeColour", rgb);
}

function bennysToogleMod(state, self) {
	let mod = parseInt(self.getAttribute("mod"));
	if (bennysVehModifications[mod] != state) {
		if (changedMods[mod] == undefined) {
			changedMods[mod] = bennysVehModifications[mod];
			bennysTotalPrice += bennysModTypes[mod]?.price || 1000;
		} else if (state == changedMods[mod]) {
			bennysTotalPrice -= bennysModTypes[mod]?.price || 1000;
			changedMods[mod] = undefined;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications[mod] = state;
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	sendData("bennysToogleMod", { state, mod });
}

function changeVehColor(value, type) {
	let rgb = hexToRgb(value);
	let tableIndex = (type == 1 ? "primary" : "secondary") + "Colour";
	if (bennysVehModifications[tableIndex] != rgb) {
		if (!changedMods[tableIndex]) {
			changedMods[tableIndex] = bennysVehModifications[tableIndex];
			bennysTotalPrice += bennysModTypes[tableIndex]?.price || 1000;
		} else if (rgb == changedMods[tableIndex]) {
			bennysTotalPrice -= bennysModTypes[tableIndex]?.price || 1000;
			changedMods[tableIndex] = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications[tableIndex] = rgb;
	sendData("bennysSetColor", { r: rgb.r, g: rgb.g, b: rgb.b, type });
}

function changeNeonVehColor(value) {
	sendData("bennysSetNeonColor", hexToRgb(value));
}

function handlePearlescentColour(self) {
	let colourIndex = parseInt(self.getAttribute("colour-index"));
	if (bennysVehModifications.pearlescentColour != colourIndex) {
		if (!changedMods.pearlescentColour) {
			changedMods.pearlescentColour =
				bennysVehModifications.pearlescentColour;
			bennysTotalPrice += bennysModTypes.pearlescentColour?.price || 1000;
		} else if (colourIndex == changedMods.pearlescentColour) {
			bennysTotalPrice -= bennysModTypes.pearlescentColour?.price || 1000;
			changedMods.pearlescentColour = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	bennysVehModifications.pearlescentColour = colourIndex;
	sendData("bennysSetPearlescentColour", { colourIndex });
}

function handleVehicleModChange(self) {
	let modType = parseInt(self.getAttribute("mod-index"));
	let modIndex = parseInt(self.getAttribute("mod"));
	if (bennysVehModifications[modType] != modIndex) {
		if (!changedMods[modType]) {
			changedMods[modType] = bennysVehModifications[modType];
			bennysTotalPrice += bennysModTypes[modType]?.price || 1000;
		} else if (modIndex == changedMods[modType]) {
			bennysTotalPrice -= bennysModTypes[modType]?.price || 1000;
			changedMods[modType] = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	bennysVehModifications[modType] = modIndex;
	sendData("bennysSetVehMod", { modType, modIndex });
}

function handleWheelIndexChange(self,rearWheel) {
	let wheelType = parseInt(self.getAttribute("wheel-type"));
	let wheelIndex = parseInt(self.getAttribute("wheel-index"));
	if (
		wheelType != bennysVehModifications.wheelType ||
		bennysVehModifications[ rearWheel ? 24 : 23] != wheelIndex
	) {
		if (!changedMods[ rearWheel ? 24 : 23]) {
			changedMods[ rearWheel ? 24 : 23] = bennysVehModifications[ rearWheel ? 24 : 23];
			bennysTotalPrice += bennysModTypes[ rearWheel ? 24 : 23]?.price || 1000;
		} else if (changedMods[ rearWheel ? 24 : 23] == wheelIndex) {
			changedMods[ rearWheel ? 24 : 23] = false;
			bennysTotalPrice -= bennysModTypes[ rearWheel ? 24 : 23]?.price || 1000;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	bennysVehModifications.wheelType = wheelType;
	bennysVehModifications[ rearWheel ? 24 : 23] = wheelIndex;
	sendData("bennysSetWheel", { wheelType, wheelIndex, rearWheel });
}

function handleWheelColour(self) {
	let colourIndex = parseInt(self.getAttribute("colour-index"));
	if (bennysVehModifications.wheelColour != colourIndex) {
		if (!changedMods.wheelColour) {
			changedMods.wheelColour = bennysVehModifications.wheelColour;
			bennysTotalPrice += bennysModTypes.wheelColour?.price || 1000;
		} else if (colourIndex == changedMods.wheelColour) {
			bennysTotalPrice -= bennysModTypes.wheelColour?.price || 1000;
			changedMods.wheelColour = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	bennysVehModifications.wheelColour = colourIndex;
	sendData("bennysSetWheelColour", { colourIndex });
}

function handleWheelChange(self) {
	let shopContent = $("#bennys-shop-content");
    let wheelType = parseInt(self.getAttribute("wheel-type"));
    let rearWheel = self.getAttribute('rear-wheel')
	let shopContentHtml = "";

    bennysInWheelsMenu = true

    if (!bennysIsBike) {
        for (
            let i = -1;
            i <= bennysAvailableModifications[23][1][wheelType].numMods - 1;
            i++
        ) {
            let imgUrl = i == -1 ? `${imgBennysVehicleMods}/${bennysVName}/wheel_default` : `${imgBennysVehicleMods}/wheels/type_${wheelType}/${i}`
            let dfUrl = `${imgBennysVehicleMods}/default/23`
            shopContentHtml += `
                <div class="item-menu ${
                    bennysVehModifications.wheelType == wheelType &&
                    bennysVehModifications[23] == i &&
                    "forceactive"
                }" onclick="handleWheelIndexChange(this)" wheel-type="${wheelType}" wheel-index="${i}" style="background-image: url('${imgUrl}.png'), url('${dfUrl}.png');">
                    <div>
                        <span>${
                            i == -1
                                ? "Original"
                                : bennysAvailableModifications[23][1][wheelType][i]
                        }</span>
                        <b>R$ ${"500,00"}</b>
                    </div>
                </div>
            `;
        }
    } else {
        for (
            let i = -1;
            i <= bennysAvailableModifications[23][1][wheelType].numMods - 1;
            i++
        ) {
            let imgUrl = i == -1 ? `${imgBennysVehicleMods}/${bennysVName}/wheel_default` : `${imgBennysVehicleMods}/wheels/type_6/${i}`
            let dfUrl = `${imgBennysVehicleMods}/default/23`
            shopContentHtml += `
                <div class="item-menu ${
                    bennysVehModifications[rearWheel ? 24 : 23] == i ?
                    "forceactive" : ''
                }" onclick="handleWheelIndexChange(this,${rearWheel == "true"})" wheel-type="${6}" wheel-index="${i}" style="background-image: url('${imgUrl}.png'), url('${dfUrl}.png');">
                    <div>
                        <span>${
                            i == -1
                                ? "Original"
                                : bennysAvailableModifications[23][1][wheelType][i]
                        }</span>
                        <b>R$ ${"500,00"}</b>
                    </div>
                </div>
            `;
        }
    }



	shopContentHtml = '<div class="column-grid">' + shopContentHtml + "</div>";

	shopContent.html(shopContentHtml);
	$("#bennys-title").html(bennysWheelTypes[wheelType]);
}

function bennysSetWindowTint(index, self) {
	if (bennysVehModifications.windowTint != index) {
		if (!changedMods.windowTint) {
			changedMods.windowTint = bennysVehModifications.windowTint;
			bennysTotalPrice += bennysModTypes.windowTint?.price || 1000;
		} else if (index == changedMods.windowTint) {
			bennysTotalPrice -= bennysModTypes.windowTint?.price || 1000;
			changedMods.windowTint = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	bennysVehModifications.windowTint = index;
	sendData("bennysSetWindowTint", { value: index });
}

function bennysToggleNeon(self, index) {
	if (!changedMods.neon) changedMods.neon = {};
	let state = !bennysVehModifications.neon[index];
	if (bennysVehModifications.neon[index] != state) {
		if (changedMods.neon[index] == undefined) {
			changedMods.neon[index] = bennysVehModifications.neon[index];
			bennysTotalPrice += bennysModTypes.neon?.price || 1000;
		} else if (state == changedMods.neon[index]) {
			bennysTotalPrice -= bennysModTypes.neon?.price || 1000;
			changedMods.neon[index] = undefined;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications.neon[index] = !bennysVehModifications.neon[index];
	self.classList[bennysVehModifications.neon[index] ? "add" : "remove"](
		"forceactive"
	);
	sendData("bennysToggleNeon", {
		index,
		state: bennysVehModifications.neon[index],
	});
}

function bennysChangeNeonColor(value) {
	let rgb = hexToRgb(value);
	if (!changedMods.neon) changedMods.neon = {};
	if (bennysVehModifications.neon.color != rgb) {
		if (!changedMods.neon.color) {
			changedMods.neon.color = bennysVehModifications.neon.color;
			bennysTotalPrice += bennysModTypes.neonColor?.price || 1000;
		} else if (rgb == changedMods.neon.color) {
			bennysTotalPrice -= bennysModTypes.neonColor?.price || 1000;
			changedMods.neon.color = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications.neon.color = rgb;
	sendData("bennysChangeNeonColor", rgb);
}

function bennysChangeXenonColor(self, index) {
	if (bennysVehModifications.xenonColour != index) {
		if (!changedMods.xenonColour) {
			changedMods.xenonColour = bennysVehModifications.xenonColour;
			bennysTotalPrice += bennysModTypes.xenonColour?.price || 1000;
		} else if (index == changedMods.xenonColour) {
			bennysTotalPrice -= bennysModTypes.xenonColour?.price || 1000;
			changedMods.xenonColour = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications.xenonColour = index;
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	sendData("bennysSetXenonColor", { value: index });
}

function bennysSetPlate(index, self) {
    if (bennysVehModifications.plate != index) {
		if (!changedMods.plate) {
			changedMods.plate = bennysVehModifications.plate;
			bennysTotalPrice += bennysModTypes.plate?.price || 1000;
		} else if (index == changedMods.plate) {
			bennysTotalPrice -= bennysModTypes.plate?.price || 1000;
			changedMods.plate = false;
		}
	}
	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);
	bennysVehModifications.plate = index;
	$(".forceactive").removeClass("forceactive");
	self.classList.add("forceactive");
	sendData("bennysSetPlateIndex", { plate: index });
}

function handleHomeMenuItemClick(self, value) {
	let shopContent = $("#bennys-shop-content");
	let modIndex = self?.getAttribute("mod-index") || value;
	let shopContentHtml = "";

	if (modIndex == "turbo") {
		shopContent.html(`
            <div class="column-grid grid-buttons">
                <button ${
					bennysVehModifications[18] && 'class="forceactive"'
				} onclick="bennysToogleMod(true,this)" mod="18">Ativar</button>
                <button ${
					!bennysVehModifications[18] && 'class="forceactive"'
				} onclick="bennysToogleMod(false,this)" mod="18">Desativar</button>
            </div>
        `);
		$("#bennys-title").html("Turbo");
    } else if (modIndex == 'plate') {

        const plates = [
            'Azul / Branco 1',
            'Amarelo / Preto',
            'Amarelo / Azul',
            'Azul / Branco 2',
            'Azul / Branco 3',
            'Yankton'
        ]

        plates.map((v, k) => shopContentHtml += `
            <button ${
                bennysVehModifications.plate == k
                    ? 'class="forceactive"'
                    : ""
            } onclick="bennysSetPlate(${k},this)" >${v}</button>
        `)

		shopContent.html(`
            <div class="column-grid grid-buttons">
                ${shopContentHtml}
            </div>
        `);

        $("#bennys-title").html("Cor da Placa"); 
    } else if (modIndex == "xenon") {
        let defaultImgUrl = `${imgBennysVehicleMods}/default/xenon.png`
		let xenonColours = [
			{name: "Branco", color:"#fff"},
			{name: "Azul", color:"#0021ff"},
			{name: "Azul Elétrico", color:"#006eff"},
			{name: "Verde Menta", color:"#00ff9d"},
			{name: "Verde Limão", color:"#6eff00"},
			{name: "Amarelo", color:"#eeff00"},
			{name: "Dourado", color:"#ffbf00"},
			{name: "Laranja", color:"#ff6100"},
			{name: "Vermelho", color:"#ff0004"},
			{name: "Rosa", color:"#ff005d"},
			{name: "Rosa Choque", color:"#ff00e1"},
			{name: "Roxo", color:"#2600ff"},
			{name: "Luz Negra", color:"#0c00ff"},
		];
		xenonColours[-1] = {name: "Original", color: ''};

        xenonColours.map((v, k) => {
			shopContentHtml += `
            <div class="item-color" onclick="bennysChangeXenonColor(this, ${k})">
                <div class="color-palete" style="background-color: ${v.color}"></div>
            </div>
			`;
		});

        shopContent.html(`
            <div class="column-grid grid-buttons">
                <button ${
                    bennysVehModifications[22] ? 'class="forceactive"' : ""
                } onclick="bennysToogleMod(true,this)" mod="22" >Ativar</button>
                <button ${
                    !bennysVehModifications[22] ? 'class="forceactive"' : ""
                } onclick="bennysToogleMod(false,this)" mod="22" >Desativar</button>
            </div>
            <div class="itens-grid grid" id="${k}">
                <div class="grid-content">
                    ${shopContentHtml}
                </div>
            </div>
        `);

		$("#bennys-title").html("Xenon");
	} else if (modIndex == "neon") {
		const neonPositions = ["Esquerda", "Direita", "Frente", "Atrás"];

		neonPositions.map(
			(v, k) =>
				(shopContentHtml += `
            <button ${
				bennysVehModifications.neon[k] ? 'class="forceactive"' : ""
			} onclick="bennysToggleNeon(this, ${k})" >${v}</button>
        `)
		);

		shopContent.html(`
            <div class="column-grid grid-buttons">
                ${shopContentHtml}
            </div>
            <div class="color-grid">
                <input oninput="bennysChangeNeonColor(this.value)" type="color" value="${rgbToHex(
					bennysVehModifications.neon.color.r,
					bennysVehModifications.neon.color.g,
					bennysVehModifications.neon.color.b
				)}">
            </div>
        `);
		$("#bennys-title").html("Neon");
	} else if (modIndex == "windowTintColour") {
		const windowColors = [
			"Normal",
			"Preto",
			"Cinza Escuro",
			"Cinza Claro",
			"Original",
			"Limousine",
			"Verde",
		];

		windowColors.map(
			(v, k) =>
				(shopContentHtml += `
            <button ${
				bennysVehModifications.windowTint == k
					? 'class="forceactive"'
					: ""
			} onclick="bennysSetWindowTint(${k},this)" >${v}</button>
        `)
		);

		shopContent.html(`
            <div class="column-grid grid-buttons">
                ${shopContentHtml}
            </div>
        `);
		$("#bennys-title").html("Cor do vidro");
	} else if (modIndex == "tyreSmoke") {
		shopContent.html(`
            <div class="column-grid grid-buttons">
                <button ${
					bennysVehModifications[20] && 'class="forceactive"'
				} onclick="bennysToogleMod(true,this)" mod="20">Ativar</button>
                <button ${
					!bennysVehModifications[20] && 'class="forceactive"'
				} onclick="bennysToogleMod(false,this)" mod="20">Desativar</button>
            </div>

            <div class="color-grid">
                <input oninput="changeTyreSmokeColour(this.value)" type="color" value="${rgbToHex(
					bennysVehModifications.tyreSmokeColour.r,
					bennysVehModifications.tyreSmokeColour.g,
					bennysVehModifications.tyreSmokeColour.b
				)}">
            </div>
        `);
		$("#bennys-title").html("Cor da Fumaça do Pneu");
	} else if (modIndex == "pearlescentColour") {
		bennysWheelColours.map((v) => {
			shopContentHtml += `
            <div class="item-color" onclick="handlePearlescentColour(this)" colour-index="${v.colorindex}">
                <div class="color-palete" style="background-color: ${v.color}"></div>
            </div>
			`;
		});

        shopContent.html(`
            <div class="itens-grid grid" id="${k}">
                <div class="grid-content">
                    ${shopContentHtml}
                </div>
            </div>
        `);
		$("#bennys-title").html("Cor do Perolado");
	} else if (modIndex == "primaryColour") {
		let paintTypes = "";

		bennysPaintTypes.map((v, k) => {
			paintTypes += `<button ${
				(bennysVehModifications.primaryPaintType == k &&
					'class="forceactive"') ||
				""
			} onclick="setVehPaintType(${k},1,this)">${v}</button>`;
		});

		shopContent.html(`
            <div class="column-grid grid-buttons">
                ${paintTypes}
            </div>

            <div class="color-grid">
                <input oninput="changeVehColor(this.value,1)" type="color" value="${rgbToHex(
					bennysVehModifications.primaryColour.r,
					bennysVehModifications.primaryColour.g,
					bennysVehModifications.primaryColour.b
				)}">
            </div>
        `);
		$("#bennys-title").html("Cor Primária");
	} else if (modIndex == "secondaryColour") {
		let paintTypes = "";

		bennysPaintTypes.map((v, k) => {
			paintTypes += `<button ${
				(bennysVehModifications.primaryPaintType == k &&
					'class="forceactive"') ||
				""
			} onclick="setVehPaintType(${k},2,this)">${v}</button>`;
		});

		shopContent.html(`
            <div class="column-grid grid-buttons">
                ${paintTypes}
            </div>

            <div class="color-grid">
                <input oninput="changeVehColor(this.value,2)" type="color" value="${rgbToHex(
					bennysVehModifications.secondaryColour.r,
					bennysVehModifications.secondaryColour.g,
					bennysVehModifications.secondaryColour.b
				)}">
            </div>
        `);
		$("#bennys-title").html("Cor Secundária");
	} else if (modIndex == "wheelColour") {
		bennysWheelColours.map((v) => {
			shopContentHtml += `
            <div class="item-color" onclick="handleWheelColour(this)" colour-index="${v.colorindex}">
                <div class="color-palete" style="background-color: ${v.color}"></div>
            </div>
			`;
		});

        shopContent.html(`
            <div class="itens-grid grid" id="${k}">
                <div class="grid-content">
                    ${shopContentHtml}
                </div>
            </div>
        `);
		$("#bennys-title").html("Cor das Rodas");

		updateHoverActive();
	} else if (modIndex == 23) {
        let text = "";
        if (bennysIsBike) {
            let bgImg = `${imgBennysVehicleMods}/wheels/type_6/0`;
            let dfUrl = `${imgBennysVehicleMods}/default/23`
            text = `
                <div class="item" wheel-type="6" onclick="handleWheelChange(this)" style="background-image: url('${bgImg}.png');">
                    <span>Roda Dianteira</span>
                </div>
                <div class="item" wheel-type="6" rear-wheel="true" onclick="handleWheelChange(this)" style="background-image: url('${bgImg}.png'), url('${dfUrl}.png');">
                    <span>Roda Traseira</span>
                </div>
            `
            shopContentHtml += `
                <div class="itens-grid grid">
                    <div class="grid-content">
                        ${text}
                    </div>
                </div>
            `;
        } else {
            for (let i = 0; i <= 12; i++) {
                if (i != 6) {
                    let bgImg = `${imgBennysVehicleMods}/wheels/type_${i}/0`;
                    let dfUrl = `${imgBennysVehicleMods}/default/23`
                    text += `
                    <div class="item" wheel-type="${i}" onclick="handleWheelChange(this)" style="background-image: url('${bgImg}.png'), url('${dfUrl}.png');">
                        <span>${bennysWheelTypes[i]}</span>
                    </div>
                `;
                }
            }
            shopContentHtml += `
                <div class="itens-grid grid">
                    <div class="grid-content">
                        ${text}
                    </div>
                </div>
            `;
        }

		shopContent.html(shopContentHtml);
		$("#bennys-title").html("Rodas");

		updateHoverActive();
	} else {
		for (let i = -1; i < bennysAvailableModifications[modIndex][0]; i++) {
            let imgUrl = `${imgBennysVehicleMods}/${bennysVName}/mod_${modIndex}/${i}`
            let defaultUrl = `${imgBennysVehicleMods}/default/${modIndex}`
			shopContentHtml += `
				<div class="item-menu ${
					bennysVehModifications[modIndex] == i && "forceactive"
				}" onclick="handleVehicleModChange(this)" mod="${i}" mod-index="${modIndex}" style="background-image: url('${imgUrl}.png'), url('${defaultUrl}.png');">
					<div>
						<span>${
							customNames[modIndex]
								? customNames[modIndex][i]
								: i == -1
								? "Original"
								: bennysAvailableModifications[modIndex][1][
										i
								  ] || "Nível " + (i + 1)
						}</span>
						<b>R$ ${bennysModTypes[modIndex].price}</b>
					</div>
				</div>
			`;
		}

		shopContentHtml =
			'<div class="column-grid">' + shopContentHtml + "</div>";

		shopContent.html(shopContentHtml);
		$("#bennys-title").html(bennysModTypes[modIndex].name);
	}
}

function setHomeMenu() {
    bennysInWheelsMenu = false
	let shopContent = $("#bennys-shop-content");
	// let aside = $('#bennys-aside')
	let categories = {};
	let shopContentHtml = "";
	// let asideHtml = ''

	for (let i = 0; i <= 49; i++) {
		if (
			bennysAvailableModifications[i] &&
            bennysAvailableModifications[i][0] > 0 &&
            bennysConfig[i]
		) {
			let modConfig = bennysModTypes[i];
			if (!categories[modConfig.category])
				categories[modConfig.category] = [];
			categories[modConfig.category].push({
				name: modConfig.name,
				modIndex: i,
			});
		}
	}

	if (!categories.appearance) categories.appearance = [];
	if (bennysConfig.primaryColour) categories.appearance.push({
		name: "Cor Primária",
		modIndex: "primaryColour",
	});
	if (bennysConfig.secondaryColour) categories.appearance.push({
		name: "Cor Secundária",
		modIndex: "secondaryColour",
	});
	if (bennysConfig.pearlescentColour) categories.appearance.push({
		name: "Perolado",
		modIndex: "pearlescentColour",
	});
	if (bennysConfig.windowTintColour) categories.appearance.push({
		name: "Vidros",
		modIndex: "windowTintColour",
	});
	if (bennysConfig.neon) categories.appearance.push({
		name: "Neon",
		modIndex: "neon",
	});
	if (bennysConfig.xenonColour) categories.appearance.push({
		name: "Xenon",
		modIndex: "xenon",
	});
    if (bennysConfig.plate) categories.appearance.push({
		name: "Cor da Placa",
		modIndex: "plate",
	});

	if (!categories.wheels) categories.wheels = [];
	if (bennysConfig.wheelColour) categories.wheels.push({ name: "Cor da Roda", modIndex: "wheelColour" });
	if (bennysConfig.tyreSmoke) categories.wheels.push({ name: "Fumaça do Pneu", modIndex: "tyreSmoke" });

	if (!categories.performance) categories.performance = [];
	if (bennysConfig.turbo) categories.performance.push({ name: "Turbo", modIndex: "turbo" });

    for ([k, v] of Object.entries(categories)) {
        if (v.length > 1) {
            let text = ""
            v.map((v) => {
                let imgUrl =  ''
                let defaultImgUrl = `${imgBennysVehicleMods}/default/${v.modIndex}`
                text += `
                    <div class="item" mod-index="${v.modIndex}" onclick="handleHomeMenuItemClick(this)" style="background-image: url('${imgUrl}.png'), url('${defaultImgUrl}.png');" >
                        <span>${v.name}</span>
                    </div>
                `;
            });
            shopContentHtml += `
                <div class="itens-grid grid" id="${k}">
                    <div class="grid-title">
                        <span>${bennysCategoriesNames[k]}</span>
                    </div>
                    <div class="grid-content">
                        ${text}
                    </div>
                </div>
            `;
            // asideHtml += `
            //     <div class="category flex-centerBennys activeMBennys scrollButtonBennys" ><i class="icon-mascara icon-fs2x" ></i></div>
            // `
        }
	}

	shopContent.html(shopContentHtml);
	$("#bennys-title").html("Tunagem de carros");
	// aside.html(asideHtml)

	updateHoverActive();
}

function updateHoverActive() {
	$(".item").mouseenter(function () {
		$(this).addClass("active");
	});

	$(".item").mouseleave(function () {
		$(this).removeClass("active");
	});
}

function initBennysNUI({
	config,
	vehModifications,
	availableModifications,
	modTypes,
	vname,
	isBike,
}) {
    bennysConfig = config
	bennysModTypes = modTypes;
	bennysAvailableModifications = availableModifications;
	bennysVehModifications = vehModifications;
	bennysVName = vname;
	bennysIsBike = isBike;

	bennysTotalPrice = 0;
	changedMods = {};

	$("#precoTotalBennys").html(`R$ ${bennysTotalPrice},00`);

	setHomeMenu();
}


function returnMenuBennys() {
    if (bennysInWheelsMenu) {
        handleHomeMenuItemClick(null, 23)
        bennysInWheelsMenu = false
    } else {
        setHomeMenu()
    }
}