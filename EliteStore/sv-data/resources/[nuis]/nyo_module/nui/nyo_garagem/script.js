var garage = {
	allNuiGaragem: $("#actionMenuGaragem"),
	mainGaragem: $(".mainGaragem"),

	vehicles: undefined,
	type: undefined,
	openedVehicle: undefined,

    categoryIcons: {},
    
    changeScreen: (screen,self) => {
		$(".step").removeClass("active");
        self.classList.add('active')

		$(".category").hide();
		$("." + screen).show();
	},

	changeCategory: (self) => {
		let category = self.getAttribute("category");
		$(".category-item").removeClass("active");
		self.classList.add("active");
		$(".vehicle-item").hide(0);
		$("." + category).show(0);
	},

	open: (data) => {
		let vehicleList = $("#vehicle-list");
		let categoryList = $("#category-list");
		let vehiclesHtml = "";
		let categoriesHtml = "";

		garage.vehicles = data.vehicles;
		garage.type = data.garageType;

		for ([k, v] of Object.entries(data.vehicles)) {
			vehiclesHtml += `
            <div class="item vehicle-item ${v.category}" vehicle="${
				v.vehicle
			}" onclick="garage.openCar(this)" >
                <img src="${imgGarage}/${v.vehicle}.png">
                <div class="item-info">
                    <span>${v.vehicleName}</span>
                    <br>
                    <small id="taxlate-${v.vehicle}">${
				v.taxLate ? "Taxado" : "Liberado"
			}</small>
                </div>
            </div>
            `;
		}

		for ([k, v] of Object.entries(data.categoryTypes)) {
			categoriesHtml += `
                <div class="item category-item ${
					k == 0 ? "active" : ""
				} " category="${v}" onclick="garage.changeCategory(this)" ><img src="nyo_garagem/assets/${v}.png"></div>
            `;
		}

		vehicleList.html(vehiclesHtml);
		categoryList.html(categoriesHtml);

		$(".vehicle-item").hide(0);
		$("." + data.categoryTypes[0]).show(0);

		garage.allNuiGaragem.fadeIn(1);
		garage.mainGaragem.fadeOut(1);
	},

	generateBars: (amountActive, amount) => {
		let text = "";
		for (let i = 1; i <= (amount || 12); i++) {
			text += `
                <div class="shape ${i <= amountActive ? "active" : ""}"></div>
            `;
		}
		return text;
	},

	openCar: (self, veh) => {
		let vehicle = self ? self.getAttribute("vehicle") : veh;
		let vehCfg = garage.vehicles[vehicle];

        garage.openedVehicle = vehicle;
        
        try {
            vehCfg.custom = JSON.parse(vehCfg.custom)
        } catch(err) {
            vehCfg.custom = {}
        }


		let mainGarageHtml = `
            <header>
                <h1>${vehCfg.vehicleName}</h1>
                <small>Categoria ${vehCfg.class}</small>
                <img id="img-stars" src="nyo_garagem/assets/stars.png">
                <img id="img-car" src="${imgGarage}/${vehCfg.vehicle}.png">
            </header>
            <section>
                <h1>estatisticas</h1>
                <small>do veiculo</small>
                <div class="infos-content category">
                <div class="column">
                    <div class="row">
                    <span>Velocidade</span>
                    <small>${vehCfg.maxSpeed} km/h</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.maxSpeed) / 250)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Motor</span>
                    <small>${vehCfg.engine / 10}%</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.engine) / 1000)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Freio</span>
                    <small>${vehCfg.maxBraking.toFixed(2)}</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.maxBraking) / 1.5)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Lataria</span>
                    <small>${vehCfg.body / 10}%</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.body) / 1000)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Tração</span>
                    <small>${vehCfg.maxTraction.toFixed(2)}</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.maxTraction) / 3)}
                    </div>
                    </div>  
                    <div class="row">
                    <span>Combustível</span>
                    <small>${vehCfg.fuel}%</small>
                    <div class="bar">
                        ${garage.generateBars((12 * vehCfg.fuel) / 100)}
                    </div>
                    </div>
                </div>
                <div class="column">
                    <div class="info-column">
                    <small>Status</small>
                    <span>${
                    vehCfg.allowed == false ? 'Sem permissão'
                            : vehCfg.taxLate
							? "Taxas atrasadas"
							: vehCfg.exploded
							? "Veículo Explodido"
							: vehCfg.impound
							? "Veículo detido"
							: "Liberado"
					}</span>
                    </div>
                    <div class="info-column">
                    <small>Tipo</small>
                    <span>${garage.type}</span>
                    </div>
                    <div class="info-column">
                    <small>${
						vehCfg.taxLate
							? "Taxa"
							: vehCfg.exploded || vehCfg.impound
							? "Seguro"
							: vehCfg.garageTax
							? "Taxa de retirada"
							: "Taxa"
					}</small>
                    <span>${
						vehCfg.taxLate || vehCfg.exploded
							? "$" + vehCfg.taxPrice
							: vehCfg.garageTax
							? "$" + vehCfg.garageTax
							: "Sem taxas"
					}</span>
                    </div>
                </div>
                </div>

                <div class="infos-content2 category" style="display: none;">
                <div class="column">
                    <div class="row">
                    <span>Motor</span>
                    <small>${(vehCfg.custom ? parseInt(vehCfg.custom["11"])|| -1 : -1 )+ 1} / 4</small>
                    <div class="bar">
                        ${garage.generateBars((vehCfg.custom ? parseInt(vehCfg.custom["11"])|| -1 : -1) + 1,4)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Freio</span>
                    <small>${(vehCfg.custom ? parseInt(vehCfg.custom["12"])|| -1 : -1 )+ 1} / 3</small>
                    <div class="bar">
                        ${garage.generateBars((vehCfg.custom ? parseInt(vehCfg.custom["12"])|| -1 : -1) + 1,3)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Transmissão</span>
                    <small>${(vehCfg.custom ? parseInt(vehCfg.custom["13"])|| -1 : -1 )+ 1} / 3</small>
                    <div class="bar">
                        ${garage.generateBars((vehCfg.custom ? parseInt(vehCfg.custom["13"])|| -1 : -1) + 1,3)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Suspensão</span>
                    <small>${(vehCfg.custom ? parseInt(vehCfg.custom["15"])|| -1 : -1 )+ 1} / 4</small>
                    <div class="bar">
                        ${garage.generateBars((vehCfg.custom ? parseInt(vehCfg.custom["15"])|| -1 : -1) + 1,3)}
                    </div>
                    </div>
                    <div class="row">
                    <span>Blindagem</span>
                    <small>${(vehCfg.custom ? parseInt(vehCfg.custom["16"])|| -1 : -1 )+ 1} / 5</small>
                    <div class="bar">
                        ${garage.generateBars((vehCfg.custom ? parseInt(vehCfg.custom["16"])|| -1 : -1) + 1,3)}
                    </div>
                    </div>  
                </div>
                <div class="column">
                    <div class="info-column">
                    <small>Status</small>
                    <span>${
						vehCfg.taxLate
							? "Taxas atrasadas"
							: vehCfg.exploded
							? "Veículo Explodido"
							: vehCfg.impound
							? "Veículo detido"
							: "Liberado"
					}</span>
                    </div>
                    <div class="info-column">
                    <small>Tipo</small>
                    <span>${garage.type}</span>
                    </div>
                    <div class="info-column">
                    <small>${
						vehCfg.taxLate
							? "Taxa"
							: vehCfg.exploded || vehCfg.impound
							? "Seguro"
							: vehCfg.garageTax
							? "Taxa de retirada"
							: "Taxa"
					}</small>
                    <span>${
						vehCfg.taxLate || vehCfg.exploded
							? "$" + vehCfg.taxPrice
							: vehCfg.garageTax
							? "$" + vehCfg.garageTax
							: "Sem taxas"
					}</span>
                    </div>
                </div>
                </div>
                
            </section>
            <footer class="footerGaragem">
                <div class="steps">
                    <small>Paginas</small>
                    <div class="step-content">
                        <div class="step active" onclick="garage.changeScreen('infos-content',this)"></div>
                        <div class="step" onclick="garage.changeScreen('infos-content2',this)"></div>
                    </div>
                </div>
                <div class="btns">
                    ${
						/*<button style="background: #d8a80a;" onclick="garage.storeNearestVehicle()">Guardar Próximo</button>*/ ""
					}
                    ${
						vehCfg.allowed != false && vehCfg.taxLate
							? '<button style="background: #FF2D2D;" onclick="garage.payTax()">Pagar Taxas</button>'
							: ""
					}
                    ${
						vehCfg.allowed != false && vehCfg.exploded
							? '<button style="background: #FF2D2D;" onclick="garage.payInsurance()">Acionar Seguro</button>'
							: ""
					}
                    ${
						vehCfg.allowed != false && vehCfg.impound
							? '<button style="background: #FF2D2D;" onclick="garage.removeFromDetention()">Acionar Seguro</button>'
							: ""
					}
                    ${
						vehCfg.allowed != false && !vehCfg.taxLate && !vehCfg.exploded && !vehCfg.impound
							? vehCfg.spawned
								? `
                                <button style="background: #FF2D2D;" onclick="garage.storeVehicle()">Guardar</button>`
								: '<button  onclick="garage.spawnVehicle()">Retirar</button>'
							: ""
					}
                </div>
            </footer>
        `;

		if (self) {
			$(".vehicle-item").removeClass("active");
			self.classList.add("active");
		}

		garage.mainGaragem.html(mainGarageHtml);
		garage.mainGaragem.fadeIn(1);
	},

	payTax: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/garage_pay_tax",
			JSON.stringify({ vehicle }),
			({ success }) => {
				if (success) {
					garage.vehicles[vehicle].taxLate = false;
					garage.openCar(null, vehicle);
					$("#taxlate-" + vehicle).html(`Liberado`);
				}
			}
		);
	},

	payInsurance: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/garage_pay_insurance",
			JSON.stringify({ vehicle }),
			({ success }) => {
				if (success) {
					garage.vehicles[vehicle].engine = 1000;
					garage.vehicles[vehicle].body = 1000;
					garage.vehicles[vehicle].fuel = 100;
					garage.vehicles[vehicle].exploded = false;
					garage.openCar(null, vehicle);
				}
			}
		);
	},

	removeFromDetention: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/garage_remove_detention",
			JSON.stringify({ vehicle }),
			({ success }) => {
				if (success) {
					garage.vehicles[vehicle].impound = false;
					garage.openCar(null, vehicle);
				}
			}
		);
	},

	storeVehicle: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/store_vehicle",
			JSON.stringify({ vehicle }),
			({ success, engine, body, fuel, exploded }) => {
                if (success) {
                    garage.vehicles[vehicle].engine = engine;
					garage.vehicles[vehicle].body = body;
					garage.vehicles[vehicle].fuel = fuel;
					garage.vehicles[vehicle].exploded = exploded;
					garage.vehicles[vehicle].spawned = false;
					garage.openCar(null, vehicle);
				}
			}
		);
	},

	spawnVehicle: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/spawn_vehicle",
			JSON.stringify({ vehicle }),
			({ success }) => {
                if (success) {
					garage.vehicles[vehicle].spawned = true;
					garage.openCar(null, vehicle);
				}
			}
		);
	},

	storeNearestVehicle: () => {
		let vehicle = garage.openedVehicle;
		$.post(
			"http://nyo_module/store_nearest_vehicle",
			JSON.stringify({ vehicle })
		);
	},

	close: () => {
		garage.allNuiGaragem.fadeOut(1);
	},
};
