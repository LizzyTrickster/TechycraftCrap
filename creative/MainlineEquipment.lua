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
  },
  ["f51ba06a-2070-4e14-b3bc-360501dd110b"] = {
    POS={-465, -20},
    INFO="Detector before cross over, northbound just north of Lizzy's R&D Lab"
  },
  ["300981e7-34ec-4922-8ae6-7a01154fd6d4"] = {
    POS={-459,-12},
    INFO="North of Lizzy's R&D Lab. south exit"
  },
  ["cf716e07-0601-4db7-8412-744772987e3f"] = {
    POS={-450,-110},
    INFO="Detector after crossover, north of Lizzy's R&D lab, Wer Rail exit"
  },
  ["1f5e788e-7651-4c15-9fa8-a1cf5ecacfb4"] = {
    POS={-464,-110},
    INFO="Exit after crossover, north of Liz rd lab, mainline exit"
  },
  ["56ab85e3-5b89-4cff-a8ab-8718b1d7c544"] = {
    POS={-458,-98},
    INFO="Mainline entrance to crossover, north of Lizz R&D"
  },
  ["a60d9552-ecef-4a14-864e-aa789103cad6"] = {
    POS={-445,-100},
    INFO="WerRail entrance to crossover, north of liz rd"
  }
}

DATA.BLOCKS = {
  ["EXAMPLE-BLOCK-ID-HERE"] = {
    ENTRY_DETECTORS = {"UUID1", "UUID2"}, -- Table of detector addresses that are "entrances" to this block, must contain 1 or more
    EXIT_DETECTORS = {"UUID3"}, -- Same as the entry but for exit instead :)
    INFO = "some misc info"
  },
  ["MAIN-CROSS-NORTH-LIZRD"] = {
    ENTRY_DETECTORS = {"f51ba06a-2070-4e14-b3bc-360501dd110b", "56ab85e3-5b89-4cff-a8ab-8718b1d7c544", "a60d9552-ecef-4a14-864e-aa789103cad6"},
    EXIT_DETECTORS = {"300981e7-34ec-4922-8ae6-7a01154fd6d4", "cf716e07-0601-4db7-8412-744772987e3f", "1f5e788e-7651-4c15-9fa8-a1cf5ecacfb4"},
    INFO = "Cross over before Lizzy's base"
  }
}


return DATA
