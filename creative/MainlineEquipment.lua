-- If you want to add your stuff here, submit a PR or open an issue.
-- This file is set to be pulled down by the "Block Occupancy Controllers" along the mainline or other branch lines.
-- (https://github.com/OpenPrograms/LizzyTrickster-Programs/tree/dev/LARCS)

local DATA = {}

DATA.SIGNALS = { -- this may not be always used as the signals are controlled via redstone but we could use MCUs for this purpose.
  ["EXAMPLE-SIGNAL-UUID-HERE"] = {
    GUARDS="BLOCK-ID-HERE", 
    POS={0,0}
  }
}

DATA.DETECTORS = { -- This should follow the example in LARCS/etc/detectors.lua (see above for full URL)
  ["EXAMPLE-DETECTOR-COMPONENT-UUID-HERE"] = {
    POS={0,0}, 
    INFO="This is some basic info that can be used"
  }
}

DATA.BLOCKS = {
  ["EXAMPLE-BLOCK-ID-HERE"] = {
    ENTRY_DETECTORS = {"UUID1", "UUID2"}, -- Table of detector addresses that are "entrances" to this block, must contain 1 or more
    EXIT_DETECTORS = {"UUID3"}, -- Same as the entry but for exit instead :)
    INFO = "some misc info"
  }
}


return DATA
