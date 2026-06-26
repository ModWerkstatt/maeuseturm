local constructionutil = require "::/scripts/construction/constructionutil.lua"
local transf = require "::/scripts/transf.lua"
local vec3 = require "::/scripts/vec3.lua"

function data()
    return {
		updateFn = function(captureParams, params)
			local subconstruction = {}

			local result = { }

			subconstruction.models = { }
			
			if (params.maeuseturm) == 1 then
				subconstruction.models[#subconstruction.models+1] = { id = "mauseturm_alt.mdl", transf = constructionutil.rotateTransf(params, { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 } ) }
			
			elseif (params.maeuseturm) == 2 then
				subconstruction.models[#subconstruction.models+1] = { id = "mauseturm_medium.mdl", transf = constructionutil.rotateTransf(params, { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 } ) }
				
			elseif (params.maeuseturm) == 3 then
				subconstruction.models[#subconstruction.models+1] = { id = "mauseturm_modern.mdl", transf = constructionutil.rotateTransf(params, { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 } ) }
			
			end

			subconstruction.terrainAlignmentLists = { 
				{
					type = "EQUAL",
					faces =  { }
				}
			}	
			
			local result = { }
			
			result.snapPoint = {
				transportModes = { "TRAIN", "ELECTRIC_TRAIN" },
				allowSnapToBaseEdgeEnds = true,
				allowSnapToMesh = true,
			}

			result.subconstructions = {
				subconstruction
			}

			return result
		end
	}
end
