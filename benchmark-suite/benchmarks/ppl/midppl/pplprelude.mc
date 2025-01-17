
include "bool.mc"
include "math.mc"


-- These function is right now the identity function.
-- The CorePPL to RootPPL compiler should translate this
-- to the correct function.
let log = lam x. x

-- Other functions that might need special treatment are:
--  'and', 'inf',

-- Help function that is needed in models
recursive
let lnFactorial = lam n.
  if eqi n 1 then 0.
  else addf (log (int2float n)) (lnFactorial (subi n 1))
end
