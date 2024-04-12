
ONLY_SHOOT_WHILE_AIMING = true
WEAPONS_RECOIL= {




--a fazer


a
}


--jbn

---functions 
function cancelShooting ()
    if not getPedControlState(localPlayer, "aim_weapon")then 
        toggleControl("action", false)
        toggleControl("fire", false)
    else
        toggleControl("action", true)
        toggleControl("fire", true)
    end
end
if ONLY_SHOOT_WHILE_AIMING then
        addEventHandler ("onClientKey", root, cancelShooting) --client
        addEventHandler ("onClientPlayerWeaponFire", localPlayer, cancelShooting)
end
function isElementMoving(theElement) -- wiki
    if isElement(theElement) then                                   -- First check if the given argument is an element
        return Vector3(getElementVelocity(theElement)).length ~= 0
    end
    return false
end
