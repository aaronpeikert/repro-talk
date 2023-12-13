local function hexToFile(inputFile, outputFile)
    local f = io.open(inputFile, "r")
    if not f then return false, "Unable to open input file." end

    local hexContent = f:read("*all")
    f:close()

    local content = (hexContent:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))

    local o = io.open(outputFile, "wb")
    if not o then return false, "Unable to open output file." end

    o:write(content)
    o:close()

    return true
end

local function main()
    local inputFilename = "minerva/encoded.hex" -- Replace with your hex file path
    local outputFilename = "decoded.svg" -- Replace with desired SVG output file path

    local success, message = hexToFile(inputFilename, outputFilename)
    if success then
        print("File successfully decoded and written to " .. outputFilename)
    else
        print(message)
    end
end

main()
