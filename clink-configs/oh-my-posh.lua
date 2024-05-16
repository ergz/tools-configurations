local username = os.getenv("USERNAME")
local configPath = "C:/Users/" .. username .. "/Documents/ohmyposh-themes/pure.json"
load(io.popen('oh-my-posh init cmd --config "' .. configPath .. '"'):read("*a"))()

os.setalias("ls", "ls --color=auto $*")
os.setalias("lz", "C:\\Users\\emanuel\\scoop\\shims\\lazygit.exe $*")
os.setalias("clear", "cls")
os.setalias("vim", "C:\\Users\\emanuel\\scoop\\shims\\nvim.exe $*")
os.setalias("tl", "tailscale $*")
-- load(io.popen('oh-my-posh init cmd --config C:/Users/emanuel/Documents/ohmyposh-themes/onehalf.minimal.omp.json'):read("*a"))()
