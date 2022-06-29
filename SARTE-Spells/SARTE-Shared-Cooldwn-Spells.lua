local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTable_Shaman_Shocks = {--Shaman Shocks
--Shocks
--Frost Shock
[8056] = "Rank 1",
[8058] = "Rank 2",
[10472] = "Rank 3",
[10473] = "Rank 4",
[25464] = "Rank 5",
--Flame Shock
[8050] = "Rank 1",
[8052] = "Rank 2",
[8053] = "Rank 3",
[10447] = "Rank 4",
[10448] = "Rank 5",
[29228] = "Rank 6",
[25457] = "Rank 7",
--Earth shock
[8042] = "Rank 1",
[8044] = "Rank 2",
[8045] = "Rank 3",
[8046] = "Rank 4",
[10412] = "Rank 5",
[10413] = "Rank 6",
[10414] = "Rank 7",
[25454] = "Rank 8",
}
SpellTableHunterTraps = {-- Hunter Traps
--Explosive Trap
[13813] = "Rank 1",
[14316] = "Rank 2",
[14317] = "Rank 3",
[27025] = "Rank 4",
--Immolation Trap
[13795] = "Rank 1",
[14302] = "Rank 2",
[14303] = "Rank 3",
[14304] = "Rank 4",
[14305] = "Rank 5",
[27023] = "Rank 6",
--Frost Trap
[13809] = "Rank 1",
--Snake Trap
[34600] = "Rank 1",
--Freezing Trap
[1499] = "Rank 1",
[14310] = "Rank 2",
[14311] = "Rank 3",
}
elseif isClassicWow then
SpellTable_Shaman_Shocks = {--Shaman Shocks
--Shocks
--Frost Shock
[8056] = "Rank 1",
[8058] = "Rank 2",
[10472] = "Rank 3",
[10473] = "Rank 4",
--Flame Shock
[8050] = "Rank 1",
[8052] = "Rank 2",
[8053] = "Rank 3",
[10447] = "Rank 4",
[10448] = "Rank 5",
[29228] = "Rank 6",
--Earth shock
[8042] = "Rank 1",
[8044] = "Rank 2",
[8045] = "Rank 3",
[8046] = "Rank 4",
[10412] = "Rank 5",
[10413] = "Rank 6",
[10414] = "Rank 7",
}
SpellTableHunterTraps = {-- Hunter Traps
--Explosive Trap
[13813] = "Rank 1",
[14316] = "Rank 2",
[14317] = "Rank 3",
--Immolation Trap
[13795] = "Rank 1",
[14302] = "Rank 2",
[14303] = "Rank 3",
[14304] = "Rank 4",
[14305] = "Rank 5",
--Frost Trap
[13809] = "Rank 1",
--Freezing Trap
[1499] = "Rank 1",
[14310] = "Rank 2",
[14311] = "Rank 3",
}
end
