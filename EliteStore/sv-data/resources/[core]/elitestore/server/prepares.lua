Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
------------------------------------------------------------------------------------------------
--[ MultiChar ] --------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare('vRP/get_users', 'SELECT * FROM vrp_user_ids WHERE identifier = @identifier')
vRP.prepare('vRP/get_chars', 'SELECT * FROM vrp_users WHERE id = @user_id')
vRP.prepare("vRP/get_usersBenefits","SELECT * FROM vrp_benefits WHERE steam = @steam")
------------------------------------------------------------------------------------------------
--[ WL Discord ] -------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("characters/getDiscord","SELECT userDiscord FROM vrp_users WHERE id = @id ")
------------------------------------------------------------------------------------------------
--[ Elite Coins ] ------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("vRP/get_token_infos","SELECT * FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/get_token_maxusos","SELECT maxusos FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/get_token_coins","SELECT coins FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/get_token_item","SELECT item FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/get_token_qtd","SELECT qtd FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/get_token_usos","SELECT usos FROM dossantos_token WHERE token = @token") 
vRP.prepare("vRP/use_token","UPDATE dossantos_token SET usos = @usos WHERE token = @token") 
------------------------------------------------------------------------------------------------
--[ Elite Homes ] ------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("homes/get_homeuser","SELECT * FROM vrp_homes_permissions WHERE user_id = @user_id AND home = @home")
vRP.prepare("homes/get_homeuserid","SELECT * FROM vrp_homes_permissions WHERE user_id = @user_id")
vRP.prepare("homes/get_homeuserowner","SELECT * FROM vrp_homes_permissions WHERE user_id = @user_id AND home = @home AND owner = 1")
vRP.prepare("homes/get_homeuseridowner","SELECT * FROM vrp_homes_permissions WHERE home = @home AND owner = 1")
vRP.prepare("homes/get_homeuseridco_owner","SELECT * FROM vrp_homes_permissions WHERE user_id = @user_id AND home = @home AND owner = 0")
vRP.prepare("homes/get_homepermissions","SELECT * FROM vrp_homes_permissions WHERE home = @home")
vRP.prepare("homes/add_permissions","INSERT IGNORE INTO vrp_homes_permissions(home,user_id) VALUES(@home,@user_id)")
vRP.prepare("homes/buy_permissions","INSERT IGNORE INTO vrp_homes_permissions(home,user_id,owner,tax,garage) VALUES(@home,@user_id,1,@tax,1)")
vRP.prepare("homes/count_homepermissions","SELECT COUNT(*) as qtd FROM vrp_homes_permissions WHERE home = @home")
vRP.prepare("homes/rem_permissions","DELETE FROM vrp_homes_permissions WHERE home = @home AND user_id = @user_id")
vRP.prepare("homes/rem_allpermissions","DELETE FROM vrp_homes_permissions WHERE home = @home")
vRP.prepare("homes/chest_Size","SELECT chestSize FROM vrp_homes_permissions WHERE home = @home AND owner =1")
vRP.prepare("homes/chest_UPDATE","UPDATE vrp_homes_permissions SET chestSize = @chestSize WHERE home = @home AND owner = 1")
vRP.prepare("homes/create_house","INSERT INTO elite_homes(home,interior,bau,valor,qtd_chaves,transferivel,disponivel,x,y,z) VALUES(@home,@interior,@bau,@valor,@qtd_chaves,@transferivel,@disponivel,@x,@y,@z)")
------------ Garagem da casa -------------
-- vRP.prepare("homes/upd_permissions","UPDATE vrp_homes_permissions SET garage = 1 WHERE home = @home AND user_id = @user_id")
vRP.prepare('homes/GarageCreate','INSERT INTO elite_homes_garage(user_id,home,garagem,spawn) VALUES(@user_id,@home,@garagem,@spawn) ')
vRP.prepare('homes/GarageSelect','SELECT garagem,spawn FROM elite_homes_garage WHERE user_id = @user_id AND home = @home ')
vRP.prepare('homes/GarageUpdate','UPDATE elite_homes_garage SET garagem = @garagem,spawn = @spawn WHERE user_id = @user_id AND home = @home ')
vRP.prepare('homes/Garage','SELECT * FROM elite_homes_garage')
-------------------------------------------------
--Selecionar o interior
vRP.prepare('homes/UserHouserInterior','SELECT interior FROM vrp_homes_permissions WHERE user_id = @user_id AND home = @home ')
vRP.prepare('homes/HouseCustomData','SELECT * FROM elite_homes WHERE home = @home ')
vRP.prepare('homes/GetAllHouse','SELECT * FROM elite_homes')
vRP.prepare('homes/ChangeInterior','UPDATE vrp_homes_permissions SET interior = @interior WHERE user_id = @user_id AND home = @home')
------------------------------------------------------------------------------------------------
--[ Elite Inventory ] --------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("getSelf","SELECT * FROM elite_identity WHERE user_id = @user_id")
vRP.prepare("setSelf","REPLACE INTO elite_identity(user_id,self) VALUES(@user_id,@self)")
vRP.prepare("getVipTime","SELECT elite_vips FROM vrp_users WHERE id = @id")
vRP.prepare("updateVipTime","UPDATE vrp_users SET elite_vips = @elite_vips WHERE id = @id")
vRP.prepare("setRentalTime","UPDATE vrp_user_vehicles SET rental_time = @rental_time WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("getRentalTime","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("vRP/add_priority","UPDATE vrp_users SET priority = @priority WHERE id = @id")
vRP.prepare("vRP/update_registration","UPDATE vrp_user_identities SET registration = @registration WHERE user_id = @user_id")
------------------------------------------------------------------------------------------------
--[ Elite Music ] ------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("InsertMusic","INSERT INTO spf_playlist_msic(id_playlist,video_url) VALUES(@id_playlist, @url)")	
vRP.prepare("InsertPlaylist","INSERT INTO spf_playlist(nome,id_xbl) VALUES(@name, @id_xbl)")	
vRP.prepare("getXbl","SELECT x.identifier FROM elite_music x  WHERE x.user_id = @user_id")	
------------------------------------------------------------------------------------------------
--[ Elite Core ] -------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("creative/get_vehicle","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("creative/rem_vehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/get_vehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_update_vehicles","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_detido","UPDATE vrp_user_vehicles SET detido = @detido, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_ipva","UPDATE vrp_user_vehicles SET ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/move_vehicle","UPDATE vrp_user_vehicles SET user_id = @nuser_id WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/add_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,ipva) VALUES(@user_id,@vehicle,@ipva)")
vRP.prepare("creative/con_maxvehs","SELECT COUNT(vehicle) as qtd FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("creative/rem_srv_data","DELETE FROM vrp_srv_data WHERE dkey = @dkey")
vRP.prepare("creative/get_estoque","SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
vRP.prepare("creative/set_estoque","UPDATE vrp_estoque SET quantidade = @quantidade WHERE vehicle = @vehicle")
vRP.prepare("creative/get_users","SELECT * FROM vrp_users WHERE id = @user_id")
vRP.prepare("elite/ban"," UPDATE vrp_users SET banned = @banned, expire_banned = @expire_banned WHERE id = @user_id")
------------------------------------------------------------------------------------------------
--[ Elite bank ] -------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare('elite/InsertS', 'INSERT INTO elite_bank(user_id, title, amount, idtrans) VALUES(@user_id, @title, @amount, @idtrans)')
vRP.prepare('elite/GetS', 'SELECT * from elite_bank WHERE user_id = @user_id ORDER BY id DESC')
------------------------------------------------------------------------------------------------
--[ Elite CNH ] --------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("vRP/update_cnh","UPDATE vrp_user_identities SET cnh = @cnh WHERE user_id = @user_id")
vRP.prepare("vRP/get_cnh","SELECT user_id FROM vrp_user_identities WHERE cnh = @cnh")

vRP.prepare('elite/cnh:insert', 'INSERT INTO vrp_user_identities (user_id, cnh) VALUES (@user_id, @cnh)')
vRP.prepare('elite/cnh:update', 'UPDATE vrp_user_identities SET cnh = @cnh WHERE user_id = @user_id')
vRP.prepare('elite/cnh:update3', 'UPDATE vrp_user_identities SET pontos = @pontos WHERE user_id = @user_id')
vRP.prepare('elite/cnh:update2', 'UPDATE vrp_user_identities SET pontos = @pontos WHERE user_id = @user_id')
vRP.prepare('elite/cnh:consult', 'SELECT * FROM vrp_user_identities WHERE user_id = @user_id')
vRP.prepare('elite/cnh:consult2', 'SELECT * FROM vrp_user_identities WHERE user_id = @user_id AND pontos = @pontos')
vRP.prepare('elite/cnh:consult3', 'SELECT * FROM vrp_user_identities WHERE user_id = @user_id AND cnh = @cnh')
vRP.prepare('elite/cnh:delete', 'DELETE FROM vrp_user_identities WHERE user_id = @user_id')
vRP.prepare('zaion/cnh:insert', 'INSERT INTO vrp_user_identities (user_id, cnh) VALUES (@user_id, @cnh)')
-- Aplicação de pontos pelo radar
vRP.prepare('elite/cnh:update2', 'UPDATE vrp_user_identities SET pontos=@pontos WHERE user_id=@user_id')
vRP.prepare('elite/cnh:consult', 'SELECT * FROM vrp_user_identities WHERE user_id = @user_id')
------------------------------------------------------------------------------------------------
--[ Desmanche ] --------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("creative/get_vehicle","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("creative/rem_vehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/get_vehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_update_vehicles","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_detido","UPDATE vrp_user_vehicles SET detido = @detido, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/get_detido","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/set_ipva","UPDATE vrp_user_vehicles SET ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/move_vehicle","UPDATE vrp_user_vehicles SET user_id = @nuser_id WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("creative/add_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,ipva) VALUES(@user_id,@vehicle,@ipva)")
vRP.prepare("creative/con_maxvehs","SELECT COUNT(vehicle) as qtd FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("creative/rem_srv_data","DELETE FROM vrp_srv_data WHERE dkey = @dkey")
vRP.prepare("creative/get_estoque","SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
vRP.prepare("creative/set_estoque","UPDATE vrp_estoque SET quantidade = @quantidade WHERE vehicle = @vehicle")
vRP.prepare("creative/get_users","SELECT * FROM vrp_users WHERE id = @user_id")
------------------------------------------------------------------------------------------------
--[ Garagens ] ---------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
vRP.prepare("vRP/getVehicles", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("vRP/getVehicle", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vRP/getVehicle1","SELECT * FROM vrp_user_vehicles WHERE vehicle = @vehicle")
vRP.prepare("vRP/setDetido", "UPDATE vrp_user_vehicles SET arrest = @arrest, time = @time, tax = @tax WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vRP/setIpva", "UPDATE vrp_user_vehicles SET tax = @tax WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vRP/setVehicleData", "UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel, windows = @windows, tyres = @tyres WHERE user_id = @user_id AND vehicle = @vehicle")
