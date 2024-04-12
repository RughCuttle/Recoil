local mathRand = math.random 
function doWeaponRecoil()
   local isLocalPlayerAiming = getPedControlState(localPlayer, "aim_weapon")
   if isLocalPlayerAiming then
      --iprint("Mirando", isLocalPlayerAiming, " ", math.random(-15, 10)/100)
      local w, h = guiGetScreenSize()
      local X, Y, Z = getWorldFromScreenPosition ( w/2, h/2, 200)
      local ROT = 360- getPedCameraRotation(localPlayer)
      if isElementMoving(localPlayer) and not isPedDucked(localPlayer) then
         setCameraTarget(X, Y, Z+10) --pitch
         setPedCameraRotation( localPlayer, ROT + mathRand(-100, 100)/100 )-- yaw
      else
         --iprint("ta agachado", isPedDucked(localPlayer))
         setCameraTarget(X, Y, Z+1) --pitch
         setPedCameraRotation( localPlayer, ROT + mathRand(-9, 9)/100 )-- yaw
      end
   end
end
addEventHandler ("onClientPlayerWeaponFire", localPlayer, doWeaponRecoil)
