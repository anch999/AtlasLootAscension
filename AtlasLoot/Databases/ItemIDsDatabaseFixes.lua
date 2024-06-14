ItemIDManuelCorrections = {}
--ItemIDManuelCorrections[30312] = { nil, nil, HeroicID, MythicID, AscendedID }

ItemIDManuelCorrections[22491] = { nil, nil, 322491, 1322491, 222491 }
ItemIDManuelCorrections[22493] = { nil, nil, 322493, 1322493, 222493 }
ItemIDManuelCorrections[22489] = { nil, nil, 322489, 1322489, 222489 }
ItemIDManuelCorrections[1507043] = { nil, nil, 1807043, 2807043, 1707043 }
ItemIDManuelCorrections[1523064] = { nil, nil, 1823064, 2823064, 1723064 }


--ZA Bears
ItemIDManuelCorrections[1333809] = { nil, nil, 1433809, nil, 1233809 }

--intact vial of kael'thas sunstrider
ItemIDManuelCorrections[450001] = { nil, nil, 450003, 1450003, 450005 }
ItemIDManuelCorrections[450000] = { nil, nil, 450002, 1450002, 450004 }

ItemIDManuelCorrections[450009] = {nil, nil, 450011, 450013, 450015 }; --The String of Time

--Atiesh, Greatstaff of the Guardian
ItemIDManuelCorrections[22589] = { nil, nil, 322589, 1322589, 222589 }
ItemIDManuelCorrections[22632] = { nil, nil, 322632, 1322632, 222632 }
ItemIDManuelCorrections[22631] = { nil, nil, 322631, 1322631, 222631 }
ItemIDManuelCorrections[22630] = { nil, nil, 322630, 1322630, 222630 }

--Mark of the Champion
ItemIDManuelCorrections[23207] = { nil, nil, 323207, 1323207, 223207 }
ItemIDManuelCorrections[23206] = { nil, nil, 323206, 1323206, 223206 }

--[[ 
    /atlasloot updatecache startID stopID
    scans every id from 1 to 10 mil unless you set the startID and stopID 
    startID is the first itemid it will check stopID is the last itemid it will check

    /atlasloot clearcache
    clears variables cache
 ]]