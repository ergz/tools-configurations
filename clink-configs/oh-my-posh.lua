local username = os.getenv("USERNAME")
local configPath = "C:/Users/" .. username .. "/Documents/ohmyposh-themes/zash.omp.json"
load(io.popen('oh-my-posh init cmd --config "' .. configPath .. '"'):read("*a"))()

-- load(io.popen('oh-my-posh init cmd --config C:/Users/emanuel/Documents/ohmyposh-themes/onehalf.minimal.omp.json'):read("*a"))()