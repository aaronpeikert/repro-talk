local function fileToHex(inputFile, outputFile)
    local f = io.open(inputFile, "rb")
    if not f then return false, "Unable to open input file." end

    local content = f:read("*all")
    f:close()

    local hexContent = (content:gsub('.', function (c)
        return string.format('%02X', string.byte(c))
    end))

    local o = io.open(outputFile, "w")
    if not o then return false, "Unable to open output file." end

    o:write(hexContent)
    o:close()

    return true
end

local function main()
    local inputFilename = "minerva/minerva.svg" -- Replace with your SVG file path
    local outputFilename = "minerva/encoded.hex" -- Replace with desired output file path

    local success, message = fileToHex(inputFilename, outputFilename)
    if success then
        print("File successfully encoded and written to " .. outputFilename)
    else
        print(message)
    end
end

main()
