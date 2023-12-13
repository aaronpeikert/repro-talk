local function copy_file(inputFile, outputFile)
    local f = io.open(inputFile, "rb")
    if not f then return false, "Unable to open input file." end
    local content = f:read("*all")
    f:close()
    local o = io.open(outputFile, "w")
    if not o then return false, "Unable to open output file." end

    o:write(content)
    o:close()

    return true
end

local function main()
    local inputFilename = "index.html" -- Replace with your SVG file path
    local outputFilename = "_publish/index.html" -- Replace with desired output file path

    local success, message = copy_file(inputFilename, outputFilename)
    if success then
        print("index.html copied to " .. outputFilename)
    else
        print(message)
    end
end

main()
