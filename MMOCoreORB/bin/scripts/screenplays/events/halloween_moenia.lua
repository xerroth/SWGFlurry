local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

halloween_moenia = ScreenPlay:new {
   numberOfActs = 1, 
}

registerScreenPlay("halloween_moenia", true)

function halloween_moenia:start()
if (isZoneEnabled("naboo")) then
print("Halloween_Moenia Event ACTIVE")
		self:spawnSceneObjects()
		self:spawnMobiles()
		self:spawnBoss()
	end
end

function halloween_moenia:spawnSceneObjects()
	
--Trooper Piles
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4730.26, 3.75, -4872.22, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4802.53, 4.17, -4725.92, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4808.48, 4.17, -4705.84, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4830.14, 4.17, -4679.77, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4810.19, 4.17, -4679.66, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4826.63, 4.17, -4727.38, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4815.82, 2.81295, -4762.64, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/deathtrooper_pile.iff", 4790.4, 2.3878, -4787.26, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/particle/pt_halloween_ghost_fog.iff", 4730.26, 3.75, -4872.22, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/particle/pt_large_fog_gray.iff", 4802.53, 4.17, -4725.92, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_halloween_ghost_fog.iff", 4808.48, 4.17, -4705.84, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_halloween_ghost_fog.iff", 4830.14, 4.17, -4679.77, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_large_fog_gray.iff", 4810.19, 4.17, -4679.66, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_halloween_ghost_fog.iff", 4826.63, 4.17, -4727.38, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_large_fog_gray.iff", 4815.82, 2.81295, -4762.64, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_green_gunk_spurt.iff", 4790.4, 2.3878, -4787.26, 0, 1, 0, 0, 0)  
 
--Transport
	spawnSceneObject("naboo", "object/static/structure/general/transport_debris_01.iff", 4724.35, 3.73864, -4914.8, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/structure/general/transport_debris_02.iff", 4731, 3.75, -4863, 0, 1, 0, 0, 0)
--Debris
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_small_chunk.iff", 4768.89, 4.27246, -4863.35, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_storage.iff", 4770.27, 3.75, -4826.82, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_tractorbeam.iff", 4800.8, 3.75, -4808.14, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_conduit.iff", 4686.25, 4.75, -4893.74, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_storage.iff", 4721.94, 6.25, -4965.66, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_tractorbeam.iff", 4755.31, 3.75, -4976.41, 0, 1, 0, 0, 0)

--Particle Effects
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4747.97, 3.75, -4852.69, 0, 1, 0, 0, 0)
--Ship
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4725.82, 3.73086, -4913.93, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4725.82, 3.73086, -4913.93, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4727.32, 3.75, -4922.34, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4727.32, 3.75, -4922.34, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_greenish.iff", 4716.08, 2.34732, -4915.12, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4716.08, 2.34732, -4915.12, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4719.59, 3.75, -4854.78, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4728.04, 3.75, -4846.33, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4735.5, 3.75, -4839.89, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4748, 3.75, -4846.21, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4714.45, 3.75, -4872.01, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4686.66, 4.75098, -4892.18, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4687.58, 4.75098, -4895.3, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4718.96, 6.25098, -4966.49, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4725.53, 6.25, -4966.49, 131, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4720.53, 6.25, -4968.01, 347, 0, 1, 0, 0, 0) 

--Bank
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4768.89, 4.27246, -4863.35, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4768.89, 4.27246, -4863.35, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4770.27, 3.75, -4826.82, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff",4770.27, 3.75, -4826.82, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/static/particle/pt_miasma_of_fog_gray.iff", 4800.8, 3.75, -4808.14, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/particle/pt_burning_smokeandembers_large.iff", 4800.8, 3.75, -4808.14, 0, 1, 0, 0, 0)
--Walls
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4808.78, 4.17, -4701.48, 0, -0.92388, 0, 0.382683, 0)
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4802.73, 4.17, -4704.48, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4797.8, 4.17, -4703.99, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4803.83, 4.17, -4690.78, 0, 0.92388, 0, 0.382683, 0)
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4793.87, 4.17, -4703.54, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4800.1, 4.17, -4704.49, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4802.73, 4.17, -4704.48, 0, 1, 0, 0, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4806.43, 4.17, -4704.45, 0, 0.382683, 0, 0.92388, 0) 
	spawnSceneObject("naboo", "object/static/structure/dathomir/outbreak_hasty_wall_s01.iff", 4806.78, 4.17, -4692.75, 0, 0.92388, 0, 0.382683, 0) 
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 4726.36, 3.75, -4844.74, 0, 0.382683, 0, 0.92388, 0) 

--block wall
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 4717.81, 3.75, -4854.85, 0, 0.382683, 0, 0.92388, 0) 
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 4705.83, 3.75, -4867.62, 0, 0.382683, 0, 0.92388, 0) 
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_32_style_01.iff", 4691.7, 3.75, -4885.43, 0, 0.382683, 0, 0.92388, 0) 
--debris
	spawnSceneObject("naboo", "object/static/structure/general/debris_deathstar_conduit.iff", 4686.25, 4.75, -4893.74, 0, 1, 0, 0, 0) 
--small wall
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", 4676.68, 3.75, -4926.5, 0, 0.92388, 0, 0.382683, 0) 
	spawnSceneObject("naboo", "object/static/structure/military/military_wall_weak_imperial_style_01.iff", 4700, 3.75, -4954, 0, 0.92388, 0, 0.382683, 0) 


end

function halloween_moenia:spawnMobiles()
	

--Deathtrooper
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4731.5, 4.03629, -4881.78, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4733.86, 3.7992, -4864.51, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4733.22, 3.7992, -4857.02, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4750.99, 3.7992, -4892.1, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4775.61, 3.24579, -4907.15, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4778.37, 3.42821, -4945.52, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4782.53, 3.81982, -4957.14, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4782.53, 3.81982, -4957.14, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4793.81, 3.7992, -4965.67, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4822.48, 3.75, -4951.96, 314, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4811.2, 3.75, -4950.9, 302, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4816.53, 3.75, -4963.88, 46, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4829.14, 3.75, -4974.19, 127, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4836.2, 3.75, -4972.44, 84, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4769.71, 3.75, -4967.68, 318, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4758.39, 3.75, -4964.05, 333, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4749.95, 3.75, -4954.46, 1, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4743.55, 3.75, -4943.66, 12, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4701.62, 3.75, -4893.87, 65, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4706.6, 3.62904, -4908.37, 109, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4691.75, 3.75, -4902.19, 104, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4700.4, 3.75, -4916.3, 75, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4708.43, 3.75, -4929.47, 140, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4725.03, 3.75, -4940.82, 37, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4740.52, 3.75, -4944.35, 35, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
	pNpc = spawnMobile("naboo", "outbreak_deathtrooper", 1800, 4746.5, 3.75, -4927.11, 18, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
 

--Prisoners
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4805.81, 3.93341, -4908.51, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4854.35, 3.7992, -4927.27, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4854.09, 3.75, -4899.26, 180, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4865.08, 3.75, -4902.89, 101, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4871.48, 3.75, -4889.44, 17, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4866.13, 3.75, -4873.97, 24, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4855, 3.75, -4868.34, 341, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4851.59, 3.75, -4854.97, 47, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4845.79, 3.75, -4847.85, 357, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4838.54, 3.75, -4844.91, 314, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4830.38, 3.75, -4835.12, 274, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4825.06, 3.75, -4843.12, 327, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "outbreak_undead_prisoner", 1800, 4845.01, 3.75, -4858.48, 106, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
--Imp Troopers
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4846.3, 3.75, -4872.13, 79, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4869.21, 3.75, -4852.35, 19, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4865.95, 3.75, -4844.4, 5, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4870.55, 3.75, -4834.93, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4864.22, 3.75, -4801.64, 324, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4869.8, 3.75, -4796.76, 329, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4872.78, 3.75, -4788.19, 339, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_imp_trooper", 1800, 4884.12, 3.75, -4790.98, 93, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")

--Maint Boss
	pNpc = spawnMobile("naboo", "Afflicted_maintenance_boss", 1800, 4778.38, 3.8493, -4954.81, 15, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")

--civilians
  	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4784.27, 3.27151, -4757.99, 43, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4790.68, 3.90368, -4755.52, 87, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4791.89, 3.94786, -4749.66, 13, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4795.93, 4.15822, -4743.61, 37, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4802.61, 4.1596, -4741.64, 87, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4810.45, 4.1649, -4738.4, 57, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4813.93, 4.17, -4732.23, 16, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4818.43, 4.17, -4725, 39, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4816.38, 4.17, -4720.45, 309, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4816.85, 4.17, -4711.13, 19, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")	
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4821.06, 4.17, -4705.31, 39, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4822.27, 4.17, -4692.6, 10, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4820.24, 4.17, -4688.51, 244, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4821.58, 4.17, -4673.69, 329, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4828.84, 4.17, -4669.06, 97, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4837.2, 4.17, -4671.2, 205, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4845.22, 4.17, -4677.94, 254, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4849.75, 4.17, -4690, 252, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4850.75, 4.17, -4697.92, 270, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4846.76, 4.17, -4706.95, 185, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4841.3, 4.17, -4716.31, 284, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4837.38, 4.17, -4720.31, 244, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4828.45, 4.21181, -4734.44, 280, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4820.55, 4.05407, -4755.02, 331, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_junk_dealer", 600, 4800.76, 4.25515, -4762.29, 347, 0)
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4821.26, 4.17, -4719.7, 298, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4807.99, 4.17, -4714.33, 320, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4801.17, 4.17, -4713.94, 342, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4801.84, 4.17, -4723.44, 331, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4809.32, 4.17, -4726.44, 323, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4814.05, 4.17, -4722.02, 315, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4815.79, 4.17, -4729.03, 357, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4831.15, 4.17, -4717.27, 285, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
 	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4834.27, 4.17, -4708.76, 271, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4837.75, 4.17, -4701.35, 280, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4838.86, 4.17, -4689.06, 247, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4833.1, 4.17, -4682.98, 246, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4828.35, 4.17, -4687.42, 267, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4813.3, 4.17, -4683.37, 213, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
 	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4817.49, 4.17, -4691.29, 230, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4794.77, 4.17, -4716.4, 339, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4802.35, 4.17, -4721.21, 342, 0)
	AiAgent(pNpc):setAiTemplate("idlewander") 
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4819.06, 3.70257, -4743.96, 328, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4810.38, 3.80719, -4746.27, 349, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo", "afflicted_civilian", 1, 4796.85, 4.17, -4738.21, 14, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")

--Door Guards
	pNpc = spawnMobile("naboo","fbase_stormtrooper_squad_leader_extreme", 1, 4797.52, 4.17, -4692.64, 138, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")
	pNpc = spawnMobile("naboo","fbase_stormtrooper_squad_leader_extreme", 1, 4792.72, 4.17, -4697.94, 90, 0) 
	AiAgent(pNpc):setAiTemplate("idlewander")

--Trigger Place Holder
	--local T1Naboo = spawnMobile("naboo", "rancor", 1, 4849.01, 3.81524, -4727.87, 357, 0) print("Halloween Trigger 1 Loaded")
        	--createObserver(OBJECTDESTRUCTION, "halloween_moeniaScreenPlay", "notify1NabooDead", T1Naboo)

--Trigger Place Holder
	--local T2Naboo = spawnMobile("naboo", "rancor", 1, 4822.71, 3.95551, -4738.77, 256, 0) print("Halloween Trigger 2 Loaded")
        	--createObserver(OBJECTDESTRUCTION, "halloween_moeniaScreenPlay", "notify2NabooDead", T2Naboo)
end

function halloween_moenia:spawnBoss()

	local pMini = spawnMobile("naboo", "outbreak_mini_boss", 2400, 4756.34, 3.90096, -4872.23, 15, 0)
        	createObserver(OBJECTDESTRUCTION, "halloween_moenia", "notifyMiniDead", pMini)
end

function halloween_moenia:notifyMiniDead(pMini, pKiller)
	local player = LuaCreatureObject(pKiller)
  	local pBoss = spawnMobile("naboo","outbreak_rancor_boss", 0, 4736.11, 3.75, -4921.59, 21, 0)  print("Spawned Mutant Rancor")
	spatialChat(pMini, "Avenge me my pet!!")
        return 0
end

--Trigger Place Holder Activated
--function halloween_moenia:notify1NabooDead(T1Naboo, pKiller)
	--local player = LuaCreatureObject(pKiller)
        --local pBoss = spawnMobile("naboo", "rancor", 1, 4849.01, 3.81524, -4727.87, 357, 0)  print("Phase 1 Started")
        --return 0
--end

--Trigger Place Holder Activated
--function halloween_moenia:notify2NabooDead(T2Naboo, pKiller)
	--local player = LuaCreatureObject(pKiller)
        --local pBoss = spawnMobile("naboo", "rancor", 1, 4822.71, 3.95551, -4738.77, 256, 0) print("Phase 2 Started")
        --return 0
--end