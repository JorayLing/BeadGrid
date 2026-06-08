-- BeadGrid for Aseprite
-- Usage: place this file in Aseprite's Scripts folder and run it from File > Scripts.

local pc = app.pixelColor

local PALETTES = {
  {
    id = "mard_291",
    name = "Mard 291",
    colors = {
      { id = "A1", name = "A1", hex = "#FAF4C8" },
      { id = "A10", name = "A10", hex = "#F77C31" },
      { id = "A11", name = "A11", hex = "#FFDD99" },
      { id = "A12", name = "A12", hex = "#FE9F72" },
      { id = "A13", name = "A13", hex = "#FFC365" },
      { id = "A14", name = "A14", hex = "#FD543D" },
      { id = "A15", name = "A15", hex = "#FFF365" },
      { id = "A16", name = "A16", hex = "#FFFF9F" },
      { id = "A17", name = "A17", hex = "#FFE36E" },
      { id = "A18", name = "A18", hex = "#FEBE7D" },
      { id = "A19", name = "A19", hex = "#FD7C72" },
      { id = "A2", name = "A2", hex = "#FFFFD5" },
      { id = "A20", name = "A20", hex = "#FFD568" },
      { id = "A21", name = "A21", hex = "#FFE395" },
      { id = "A22", name = "A22", hex = "#F4F57D" },
      { id = "A23", name = "A23", hex = "#E6C9B7" },
      { id = "A24", name = "A24", hex = "#F7F8A2" },
      { id = "A25", name = "A25", hex = "#FFD67D" },
      { id = "A26", name = "A26", hex = "#FFC830" },
      { id = "A3", name = "A3", hex = "#FEFF8B" },
      { id = "A4", name = "A4", hex = "#FBED56" },
      { id = "A5", name = "A5", hex = "#F4D738" },
      { id = "A6", name = "A6", hex = "#FEAC4C" },
      { id = "A7", name = "A7", hex = "#FE8B4C" },
      { id = "A8", name = "A8", hex = "#FFDA45" },
      { id = "A9", name = "A9", hex = "#FF995B" },
      { id = "B1", name = "B1", hex = "#E6EE31" },
      { id = "B10", name = "B10", hex = "#95D3C2" },
      { id = "B11", name = "B11", hex = "#5D722A" },
      { id = "B12", name = "B12", hex = "#166F41" },
      { id = "B13", name = "B13", hex = "#CAEB7B" },
      { id = "B14", name = "B14", hex = "#ADE946" },
      { id = "B15", name = "B15", hex = "#2E5132" },
      { id = "B16", name = "B16", hex = "#C5ED9C" },
      { id = "B17", name = "B17", hex = "#9BB13A" },
      { id = "B18", name = "B18", hex = "#E6EE49" },
      { id = "B19", name = "B19", hex = "#24B88C" },
      { id = "B2", name = "B2", hex = "#63F347" },
      { id = "B20", name = "B20", hex = "#C2F0CC" },
      { id = "B21", name = "B21", hex = "#156A6B" },
      { id = "B22", name = "B22", hex = "#0B3C43" },
      { id = "B23", name = "B23", hex = "#303A21" },
      { id = "B24", name = "B24", hex = "#EEFCA5" },
      { id = "B25", name = "B25", hex = "#4E846D" },
      { id = "B26", name = "B26", hex = "#8D7A35" },
      { id = "B27", name = "B27", hex = "#CCE1AF" },
      { id = "B28", name = "B28", hex = "#9EE5B9" },
      { id = "B29", name = "B29", hex = "#C5E254" },
      { id = "B3", name = "B3", hex = "#9EF780" },
      { id = "B30", name = "B30", hex = "#E2FCB1" },
      { id = "B31", name = "B31", hex = "#B0E792" },
      { id = "B32", name = "B32", hex = "#9CAB5A" },
      { id = "B4", name = "B4", hex = "#5DE035" },
      { id = "B5", name = "B5", hex = "#35E352" },
      { id = "B6", name = "B6", hex = "#65E2A6" },
      { id = "B7", name = "B7", hex = "#3DAF80" },
      { id = "B8", name = "B8", hex = "#1C9C4F" },
      { id = "B9", name = "B9", hex = "#27523A" },
      { id = "C1", name = "C1", hex = "#E8FFE7" },
      { id = "C10", name = "C10", hex = "#3EBCE2" },
      { id = "C11", name = "C11", hex = "#28DDDE" },
      { id = "C12", name = "C12", hex = "#1C334D" },
      { id = "C13", name = "C13", hex = "#CDE8FF" },
      { id = "C14", name = "C14", hex = "#D5FDFF" },
      { id = "C15", name = "C15", hex = "#22C4C6" },
      { id = "C16", name = "C16", hex = "#1557A8" },
      { id = "C17", name = "C17", hex = "#04D1F6" },
      { id = "C18", name = "C18", hex = "#1D3344" },
      { id = "C19", name = "C19", hex = "#1887A2" },
      { id = "C2", name = "C2", hex = "#A9F9FC" },
      { id = "C20", name = "C20", hex = "#176DAF" },
      { id = "C21", name = "C21", hex = "#BEDDFF" },
      { id = "C22", name = "C22", hex = "#67B4BE" },
      { id = "C23", name = "C23", hex = "#C8E2FF" },
      { id = "C24", name = "C24", hex = "#7CC4FF" },
      { id = "C25", name = "C25", hex = "#A9E5E5" },
      { id = "C26", name = "C26", hex = "#3CAED8" },
      { id = "C27", name = "C27", hex = "#D3DFFA" },
      { id = "C28", name = "C28", hex = "#BBCFED" },
      { id = "C29", name = "C29", hex = "#34488E" },
      { id = "C3", name = "C3", hex = "#A0E2FB" },
      { id = "C4", name = "C4", hex = "#41CCFF" },
      { id = "C5", name = "C5", hex = "#01ACEB" },
      { id = "C6", name = "C6", hex = "#50AAF0" },
      { id = "C7", name = "C7", hex = "#3677D2" },
      { id = "C8", name = "C8", hex = "#0F54C0" },
      { id = "C9", name = "C9", hex = "#324BCA" },
      { id = "D1", name = "D1", hex = "#AEB4F2" },
      { id = "D10", name = "D10", hex = "#361851" },
      { id = "D11", name = "D11", hex = "#B9BAE1" },
      { id = "D12", name = "D12", hex = "#DE9AD4" },
      { id = "D13", name = "D13", hex = "#B90095" },
      { id = "D14", name = "D14", hex = "#8B279B" },
      { id = "D15", name = "D15", hex = "#2F1F90" },
      { id = "D16", name = "D16", hex = "#E3E1EE" },
      { id = "D17", name = "D17", hex = "#C4D4F6" },
      { id = "D18", name = "D18", hex = "#A45EC7" },
      { id = "D19", name = "D19", hex = "#D8C3D7" },
      { id = "D2", name = "D2", hex = "#858EDD" },
      { id = "D20", name = "D20", hex = "#9C32B2" },
      { id = "D21", name = "D21", hex = "#9A009B" },
      { id = "D22", name = "D22", hex = "#333A95" },
      { id = "D23", name = "D23", hex = "#EBDAFC" },
      { id = "D24", name = "D24", hex = "#7786E5" },
      { id = "D25", name = "D25", hex = "#494FC7" },
      { id = "D26", name = "D26", hex = "#DFC2F8" },
      { id = "D3", name = "D3", hex = "#2F54AF" },
      { id = "D4", name = "D4", hex = "#182A84" },
      { id = "D5", name = "D5", hex = "#B843C5" },
      { id = "D6", name = "D6", hex = "#AC7BDE" },
      { id = "D7", name = "D7", hex = "#8854B3" },
      { id = "D8", name = "D8", hex = "#E2D3FF" },
      { id = "D9", name = "D9", hex = "#D5B9F8" },
      { id = "E1", name = "E1", hex = "#FDD3CC" },
      { id = "E10", name = "E10", hex = "#D33793" },
      { id = "E11", name = "E11", hex = "#FCDDD2" },
      { id = "E12", name = "E12", hex = "#F78FC3" },
      { id = "E13", name = "E13", hex = "#B5006D" },
      { id = "E14", name = "E14", hex = "#FFD1BA" },
      { id = "E15", name = "E15", hex = "#F8C7C9" },
      { id = "E16", name = "E16", hex = "#FFF3EB" },
      { id = "E17", name = "E17", hex = "#FFE2EA" },
      { id = "E18", name = "E18", hex = "#FFC7DB" },
      { id = "E19", name = "E19", hex = "#FEBAD5" },
      { id = "E2", name = "E2", hex = "#FEC0DF" },
      { id = "E20", name = "E20", hex = "#D8C7D1" },
      { id = "E21", name = "E21", hex = "#BD9DA1" },
      { id = "E22", name = "E22", hex = "#B785A1" },
      { id = "E23", name = "E23", hex = "#937A8D" },
      { id = "E24", name = "E24", hex = "#E1BCE8" },
      { id = "E3", name = "E3", hex = "#FFB7E7" },
      { id = "E4", name = "E4", hex = "#E8649E" },
      { id = "E5", name = "E5", hex = "#F551A2" },
      { id = "E6", name = "E6", hex = "#F13D74" },
      { id = "E7", name = "E7", hex = "#C63478" },
      { id = "E8", name = "E8", hex = "#FFDBE9" },
      { id = "E9", name = "E9", hex = "#E970CC" },
      { id = "F1", name = "F1", hex = "#FD957B" },
      { id = "F10", name = "F10", hex = "#8A4526" },
      { id = "F11", name = "F11", hex = "#5A2121" },
      { id = "F12", name = "F12", hex = "#FD4E6A" },
      { id = "F13", name = "F13", hex = "#F35744" },
      { id = "F14", name = "F14", hex = "#FFA9AD" },
      { id = "F15", name = "F15", hex = "#D30022" },
      { id = "F16", name = "F16", hex = "#FEC2A6" },
      { id = "F17", name = "F17", hex = "#E69C79" },
      { id = "F18", name = "F18", hex = "#D37C46" },
      { id = "F19", name = "F19", hex = "#C1444A" },
      { id = "F2", name = "F2", hex = "#FC3D46" },
      { id = "F20", name = "F20", hex = "#CD9391" },
      { id = "F21", name = "F21", hex = "#F7B4C6" },
      { id = "F22", name = "F22", hex = "#FDC0D0" },
      { id = "F23", name = "F23", hex = "#F67E66" },
      { id = "F24", name = "F24", hex = "#E698AA" },
      { id = "F25", name = "F25", hex = "#E54B4F" },
      { id = "F3", name = "F3", hex = "#F74941" },
      { id = "F4", name = "F4", hex = "#FC283C" },
      { id = "F5", name = "F5", hex = "#E7002F" },
      { id = "F6", name = "F6", hex = "#943630" },
      { id = "F7", name = "F7", hex = "#971937" },
      { id = "F8", name = "F8", hex = "#BC0028" },
      { id = "F9", name = "F9", hex = "#E2677A" },
      { id = "G1", name = "G1", hex = "#FFE2CE" },
      { id = "G10", name = "G10", hex = "#D98C39" },
      { id = "G11", name = "G11", hex = "#E0C593" },
      { id = "G12", name = "G12", hex = "#FFC890" },
      { id = "G13", name = "G13", hex = "#B7714A" },
      { id = "G14", name = "G14", hex = "#8D614C" },
      { id = "G15", name = "G15", hex = "#FCF9E0" },
      { id = "G16", name = "G16", hex = "#F2D9BA" },
      { id = "G17", name = "G17", hex = "#78524B" },
      { id = "G18", name = "G18", hex = "#FFE4CC" },
      { id = "G19", name = "G19", hex = "#E07935" },
      { id = "G2", name = "G2", hex = "#FFC4AA" },
      { id = "G20", name = "G20", hex = "#A94023" },
      { id = "G21", name = "G21", hex = "#B88558" },
      { id = "G3", name = "G3", hex = "#F4C3A5" },
      { id = "G4", name = "G4", hex = "#E1B383" },
      { id = "G5", name = "G5", hex = "#EDB045" },
      { id = "G6", name = "G6", hex = "#E99C17" },
      { id = "G7", name = "G7", hex = "#9D5B3E" },
      { id = "G8", name = "G8", hex = "#753832" },
      { id = "G9", name = "G9", hex = "#E6B483" },
      { id = "H1", name = "H1", hex = "#FDFBFF" },
      { id = "H10", name = "H10", hex = "#EEE9EA" },
      { id = "H11", name = "H11", hex = "#CECDD5" },
      { id = "H12", name = "H12", hex = "#FFF5ED" },
      { id = "H13", name = "H13", hex = "#F5ECD2" },
      { id = "H14", name = "H14", hex = "#CFD7D3" },
      { id = "H15", name = "H15", hex = "#98A6A8" },
      { id = "H16", name = "H16", hex = "#1D1414" },
      { id = "H17", name = "H17", hex = "#F1EDED" },
      { id = "H18", name = "H18", hex = "#FFFDF0" },
      { id = "H19", name = "H19", hex = "#F6EFE2" },
      { id = "H2", name = "H2", hex = "#FEFFFF" },
      { id = "H20", name = "H20", hex = "#949FA3" },
      { id = "H21", name = "H21", hex = "#FFFBE1" },
      { id = "H22", name = "H22", hex = "#CACAD4" },
      { id = "H23", name = "H23", hex = "#9A9D94" },
      { id = "H3", name = "H3", hex = "#B6B1BA" },
      { id = "H4", name = "H4", hex = "#89858C" },
      { id = "H5", name = "H5", hex = "#48464E" },
      { id = "H6", name = "H6", hex = "#2F2B2F" },
      { id = "H7", name = "H7", hex = "#000000" },
      { id = "H8", name = "H8", hex = "#E7D6DB" },
      { id = "H9", name = "H9", hex = "#EDEDED" },
      { id = "M1", name = "M1", hex = "#BCC6B8" },
      { id = "M10", name = "M10", hex = "#C5B2BC" },
      { id = "M11", name = "M11", hex = "#9F7594" },
      { id = "M12", name = "M12", hex = "#644749" },
      { id = "M13", name = "M13", hex = "#D19066" },
      { id = "M14", name = "M14", hex = "#C77362" },
      { id = "M15", name = "M15", hex = "#757D78" },
      { id = "M2", name = "M2", hex = "#8AA386" },
      { id = "M3", name = "M3", hex = "#697D80" },
      { id = "M4", name = "M4", hex = "#E3D2BC" },
      { id = "M5", name = "M5", hex = "#D0CCAA" },
      { id = "M6", name = "M6", hex = "#B0A782" },
      { id = "M7", name = "M7", hex = "#B4A497" },
      { id = "M8", name = "M8", hex = "#B38281" },
      { id = "M9", name = "M9", hex = "#A58767" },
      { id = "P1", name = "P1", hex = "#FCF7F8" },
      { id = "P10", name = "P10", hex = "#D9C7EA" },
      { id = "P11", name = "P11", hex = "#F3ECC9" },
      { id = "P12", name = "P12", hex = "#E6EEF2" },
      { id = "P13", name = "P13", hex = "#AACBEF" },
      { id = "P14", name = "P14", hex = "#337680" },
      { id = "P15", name = "P15", hex = "#668575" },
      { id = "P16", name = "P16", hex = "#FEBF45" },
      { id = "P17", name = "P17", hex = "#FEA324" },
      { id = "P18", name = "P18", hex = "#FEB89F" },
      { id = "P19", name = "P19", hex = "#FFFEEC" },
      { id = "P2", name = "P2", hex = "#B0A9AC" },
      { id = "P20", name = "P20", hex = "#FEBECF" },
      { id = "P21", name = "P21", hex = "#ECBEBF" },
      { id = "P22", name = "P22", hex = "#E4A89F" },
      { id = "P23", name = "P23", hex = "#A56268" },
      { id = "P3", name = "P3", hex = "#AFDCAB" },
      { id = "P4", name = "P4", hex = "#FEA49F" },
      { id = "P5", name = "P5", hex = "#EE8C3E" },
      { id = "P6", name = "P6", hex = "#5FD0A7" },
      { id = "P7", name = "P7", hex = "#EB9270" },
      { id = "P8", name = "P8", hex = "#F0D958" },
      { id = "P9", name = "P9", hex = "#D9D9D9" },
      { id = "Q1", name = "Q1", hex = "#F2A5E8" },
      { id = "Q2", name = "Q2", hex = "#E9EC91" },
      { id = "Q3", name = "Q3", hex = "#FFFF00" },
      { id = "Q4", name = "Q4", hex = "#FFEBFA" },
      { id = "Q5", name = "Q5", hex = "#76CEDE" },
      { id = "R1", name = "R1", hex = "#D50D21" },
      { id = "R10", name = "R10", hex = "#FFDB4C" },
      { id = "R11", name = "R11", hex = "#FFEBFA" },
      { id = "R12", name = "R12", hex = "#D8D5CE" },
      { id = "R13", name = "R13", hex = "#55514C" },
      { id = "R14", name = "R14", hex = "#9FE4DF" },
      { id = "R15", name = "R15", hex = "#77CEE9" },
      { id = "R16", name = "R16", hex = "#3ECFCA" },
      { id = "R17", name = "R17", hex = "#4A867A" },
      { id = "R18", name = "R18", hex = "#7FCD9D" },
      { id = "R19", name = "R19", hex = "#CDE55D" },
      { id = "R2", name = "R2", hex = "#F92F83" },
      { id = "R20", name = "R20", hex = "#E8C7B4" },
      { id = "R21", name = "R21", hex = "#AD6F3C" },
      { id = "R22", name = "R22", hex = "#6C372F" },
      { id = "R23", name = "R23", hex = "#FEB872" },
      { id = "R24", name = "R24", hex = "#F3C1C0" },
      { id = "R25", name = "R25", hex = "#C9675E" },
      { id = "R26", name = "R26", hex = "#D293BE" },
      { id = "R27", name = "R27", hex = "#EA8CB1" },
      { id = "R28", name = "R28", hex = "#9C87D6" },
      { id = "R3", name = "R3", hex = "#FD8324" },
      { id = "R4", name = "R4", hex = "#F8EC31" },
      { id = "R5", name = "R5", hex = "#35C75B" },
      { id = "R6", name = "R6", hex = "#238891" },
      { id = "R7", name = "R7", hex = "#19779D" },
      { id = "R8", name = "R8", hex = "#1A60C3" },
      { id = "R9", name = "R9", hex = "#9A56B4" },
      { id = "T1", name = "T1", hex = "#FFFFFF" },
      { id = "Y1", name = "Y1", hex = "#FD6FB4" },
      { id = "Y2", name = "Y2", hex = "#FEB481" },
      { id = "Y3", name = "Y3", hex = "#D7FAA0" },
      { id = "Y4", name = "Y4", hex = "#8BDBFA" },
      { id = "Y5", name = "Y5", hex = "#E987EA" },
      { id = "ZG1", name = "ZG1", hex = "#DAABB3" },
      { id = "ZG2", name = "ZG2", hex = "#D6AA87" },
      { id = "ZG3", name = "ZG3", hex = "#C1BD8D" },
      { id = "ZG4", name = "ZG4", hex = "#96869F" },
      { id = "ZG5", name = "ZG5", hex = "#8490A6" },
      { id = "ZG6", name = "ZG6", hex = "#94BFE2" },
      { id = "ZG7", name = "ZG7", hex = "#E2A9D2" },
      { id = "ZG8", name = "ZG8", hex = "#AB91C0" }
    }
  }
}

local function clamp(value, minValue, maxValue)
  if value < minValue then
    return minValue
  end
  if value > maxValue then
    return maxValue
  end
  return value
end

local function hexToColor(hex)
  local clean = hex:gsub("#", "")
  local r = tonumber(clean:sub(1, 2), 16)
  local g = tonumber(clean:sub(3, 4), 16)
  local b = tonumber(clean:sub(5, 6), 16)
  return {
    hex = "#" .. clean:upper(),
    r = r,
    g = g,
    b = b,
    rgba = pc.rgba(r, g, b, 255)
  }
end

local function normalizePalette(rawPalette)
  local normalized = {
    id = rawPalette.id,
    name = rawPalette.name,
    colors = {}
  }
  for _, entry in ipairs(rawPalette.colors) do
    local parsed = hexToColor(entry.hex)
    normalized.colors[#normalized.colors + 1] = {
      id = entry.id,
      name = entry.name,
      hex = parsed.hex,
      r = parsed.r,
      g = parsed.g,
      b = parsed.b,
      rgba = parsed.rgba
    }
  end
  return normalized
end

for index, rawPalette in ipairs(PALETTES) do
  PALETTES[index] = normalizePalette(rawPalette)
end

local function basenameWithoutExtension(path)
  if not path or path == "" then
    return "bead-pattern"
  end
  local normalized = path:gsub("\\", "/")
  local name = normalized:match("([^/]+)$") or normalized
  return (name:gsub("%.[^.]+$", ""))
end

local function getPaletteNames()
  local names = {}
  for _, palette in ipairs(PALETTES) do
    names[#names + 1] = palette.name
  end
  return names
end

local function findPaletteByName(name)
  for _, palette in ipairs(PALETTES) do
    if palette.name == name then
      return palette
    end
  end
  return PALETTES[1]
end

local function colorDistanceSq(r1, g1, b1, r2, g2, b2)
  local dr = r1 - r2
  local dg = g1 - g2
  local db = b1 - b2
  return dr * dr + dg * dg + db * db
end

local function nearestPaletteColor(pixelValue, palette)
  local alpha = pc.rgbaA(pixelValue)
  if alpha == 0 then
    return nil
  end

  local r = pc.rgbaR(pixelValue)
  local g = pc.rgbaG(pixelValue)
  local b = pc.rgbaB(pixelValue)

  local bestEntry = nil
  local bestDistance = nil

  for _, entry in ipairs(palette.colors) do
    local distance = colorDistanceSq(r, g, b, entry.r, entry.g, entry.b)
    if bestDistance == nil or distance < bestDistance then
      bestDistance = distance
      bestEntry = entry
    end
  end

  return bestEntry
end

local function spriteBounds(sprite)
  return Rectangle(0, 0, sprite.width, sprite.height)
end

local function flattenSpriteFrame(sprite, frameNumber)
  local image = Image(sprite.spec)
  image:clear(0)
  image:drawSprite(sprite, frameNumber)
  return image
end

local function buildPattern(sprite, frameNumber, targetWidth, targetHeight, palette)
  local sourceImage = flattenSpriteFrame(sprite, frameNumber)
  local bounds = spriteBounds(sprite)
  local cells = {}
  local counts = {}

  for ty = 0, targetHeight - 1 do
    local row = {}
    for tx = 0, targetWidth - 1 do
      local sourceX = bounds.x + math.floor(((tx + 0.5) / targetWidth) * bounds.width)
      local sourceY = bounds.y + math.floor(((ty + 0.5) / targetHeight) * bounds.height)
      sourceX = clamp(sourceX, bounds.x, bounds.x + bounds.width - 1)
      sourceY = clamp(sourceY, bounds.y, bounds.y + bounds.height - 1)

      local entry = nearestPaletteColor(sourceImage:getPixel(sourceX, sourceY), palette)
      row[#row + 1] = entry

      if entry then
        counts[entry.id] = (counts[entry.id] or 0) + 1
      end
    end
    cells[#cells + 1] = row
  end

  local legend = {}
  for _, entry in ipairs(palette.colors) do
    local count = counts[entry.id]
    if count and count > 0 then
      legend[#legend + 1] = {
        id = entry.id,
        name = entry.name,
        hex = entry.hex,
        rgba = entry.rgba,
        count = count
      }
    end
  end

  return {
    width = targetWidth,
    height = targetHeight,
    cells = cells,
    legend = legend,
    total = targetWidth * targetHeight,
    filled = 0,
    palette = palette
  }
end

local function finalizePatternStats(pattern)
  local filled = 0
  for _, item in ipairs(pattern.legend) do
    filled = filled + item.count
  end
  pattern.filled = filled
  return pattern
end

local function drawFilledRect(image, x, y, width, height, color)
  for py = y, y + height - 1 do
    for px = x, x + width - 1 do
      image:putPixel(px, py, color)
    end
  end
end

local function drawRectOutline(image, x, y, width, height, color)
  for px = x, x + width - 1 do
    image:putPixel(px, y, color)
    image:putPixel(px, y + height - 1, color)
  end
  for py = y, y + height - 1 do
    image:putPixel(x, py, color)
    image:putPixel(x + width - 1, py, color)
  end
end

local BITMAP_FONT = {
  [" "] = {"000","000","000","000","000"},
  ["0"] = {"111","101","101","101","111"},
  ["1"] = {"010","110","010","010","111"},
  ["2"] = {"111","001","111","100","111"},
  ["3"] = {"111","001","111","001","111"},
  ["4"] = {"101","101","111","001","001"},
  ["5"] = {"111","100","111","001","111"},
  ["6"] = {"111","100","111","101","111"},
  ["7"] = {"111","001","001","001","001"},
  ["8"] = {"111","101","111","101","111"},
  ["9"] = {"111","101","111","001","111"},
  ["A"] = {"010","101","111","101","101"},
  ["B"] = {"110","101","110","101","110"},
  ["C"] = {"011","100","100","100","011"},
  ["D"] = {"110","101","101","101","110"},
  ["E"] = {"111","100","110","100","111"},
  ["F"] = {"111","100","110","100","100"},
  ["G"] = {"011","100","101","101","011"},
  ["H"] = {"101","101","111","101","101"},
  ["I"] = {"111","010","010","010","111"},
  ["J"] = {"001","001","001","101","010"},
  ["K"] = {"101","101","110","101","101"},
  ["L"] = {"100","100","100","100","111"},
  ["M"] = {"101","111","111","101","101"},
  ["N"] = {"101","111","111","111","101"},
  ["O"] = {"111","101","101","101","111"},
  ["P"] = {"111","101","111","100","100"},
  ["Q"] = {"111","101","101","111","001"},
  ["R"] = {"111","101","111","110","101"},
  ["S"] = {"011","100","111","001","110"},
  ["T"] = {"111","010","010","010","010"},
  ["U"] = {"101","101","101","101","111"},
  ["V"] = {"101","101","101","101","010"},
  ["W"] = {"101","101","111","111","101"},
  ["X"] = {"101","101","010","101","101"},
  ["Y"] = {"101","101","010","010","010"},
  ["Z"] = {"111","001","010","100","111"}
}

local function drawBitmapGlyph(image, glyph, color, x, y, scale)
  local pattern = BITMAP_FONT[glyph] or BITMAP_FONT[" "]
  for row = 1, #pattern do
    local line = pattern[row]
    for column = 1, #line do
      if line:sub(column, column) == "1" then
        drawFilledRect(
          image,
          x + (column - 1) * scale,
          y + (row - 1) * scale,
          scale,
          scale,
          color
        )
      end
    end
  end
end

local function drawBitmapText(image, text, color, x, y, scale)
  local upper = tostring(text or ""):upper()
  local cursorX = x
  for index = 1, #upper do
    local glyph = upper:sub(index, index)
    drawBitmapGlyph(image, glyph, color, cursorX, y, scale)
    cursorX = cursorX + (3 + 1) * scale
  end
end

local function measureBitmapText(text, scale)
  local length = #(tostring(text or ""))
  if length == 0 then
    return 0
  end
  return (length * 3 + math.max(0, length - 1)) * scale
end

local function safeDrawText(image, text, color, x, y, scale)
  local ok = pcall(function()
    drawBitmapText(image, text, color, x, y, scale or 1)
  end)
  return ok
end

local function luminance(entry)
  return (entry.r * 299 + entry.g * 587 + entry.b * 114) / 1000
end

local function labelColorForEntry(entry)
  if not entry then
    return pc.rgba(0, 0, 0, 255)
  end
  if luminance(entry) < 140 then
    return pc.rgba(255, 255, 255, 255)
  end
  return pc.rgba(0, 0, 0, 255)
end

local function drawCellCode(image, entry, x, y, cellSize)
  if not entry or cellSize < 14 then
    return
  end
  local text = entry.id
  local scale = math.max(1, math.floor(cellSize / 10))
  local textWidth = measureBitmapText(text, scale)
  local textX = x + math.max(1, math.floor((cellSize - textWidth) / 2))
  local textHeight = 5 * scale
  local textY = y + math.max(1, math.floor((cellSize - textHeight) / 2))
  safeDrawText(image, text, labelColorForEntry(entry), textX, textY, scale)
end

local function computeAxisMetrics(cellSize, width, height)
  local scale = math.max(1, math.floor(cellSize / 10))
  local topPad = math.max(10, 7 * scale + 6)
  local leftPad = math.max(10, 14 * scale + 6)
  local maxDim = math.max(width, height)
  local step = 1
  if maxDim > 80 then
    step = 10
  elseif maxDim > 20 then
    step = 5
  end
  return {
    scale = scale,
    topPad = topPad,
    leftPad = leftPad,
    step = step
  }
end

local function shouldDrawAxisLabel(index, total, step)
  local label = index + 1
  return label == 1 or label == total or (label % step) == 0
end

local function isMajorGridLine(index)
  return index > 0 and (index % 10) == 0
end

local function drawAxisRaster(image, pattern, gridX, gridY, cellSize, axis, color)
  for x = 0, pattern.width - 1 do
    if shouldDrawAxisLabel(x, pattern.width, axis.step) then
      local label = tostring(x + 1)
      local labelWidth = measureBitmapText(label, axis.scale)
      local labelX = gridX + x * cellSize + math.max(0, math.floor((cellSize - labelWidth) / 2))
      local labelY = gridY - axis.topPad + math.max(1, math.floor((axis.topPad - 5 * axis.scale) / 2))
      safeDrawText(image, label, color, labelX, labelY, axis.scale)
    end
  end

  for y = 0, pattern.height - 1 do
    if shouldDrawAxisLabel(y, pattern.height, axis.step) then
      local label = tostring(y + 1)
      local labelWidth = measureBitmapText(label, axis.scale)
      local labelX = gridX - axis.leftPad + math.max(1, axis.leftPad - labelWidth - 3)
      local labelY = gridY + y * cellSize + math.max(0, math.floor((cellSize - 5 * axis.scale) / 2))
      safeDrawText(image, label, color, labelX, labelY, axis.scale)
    end
  end
end

local function computeLegendMetrics(pageWidth, itemCount, hasAuthor)
  if itemCount <= 0 then
    return {
      padding = 0,
      titleSize = 0,
      textSize = 0,
      swatchSize = 0,
      rowHeight = 0,
      columnGap = 0,
      columns = 1,
      rows = 0,
      legendHeight = 0
    }
  end

  local padding = math.max(20, math.floor(pageWidth * 0.03))
  local titleSize = math.max(18, math.floor(pageWidth * 0.022))
  local textSize = math.max(14, math.floor(pageWidth * 0.017))
  local swatchSize = math.max(14, math.floor(pageWidth * 0.02))
  local rowHeight = math.max(swatchSize + 8, textSize + 8)
  local columnGap = math.max(20, math.floor(pageWidth * 0.025))
  local metaGap = math.max(14, math.floor(pageWidth * 0.012))
  local authorGap = math.max(10, math.floor(pageWidth * 0.01))
  local listGap = math.max(18, math.floor(pageWidth * 0.016))
  local columns = math.max(1, math.min(4, math.floor((pageWidth - padding * 2 + columnGap) / math.max(140, math.floor(pageWidth * 0.2)))))
  local rows = math.max(1, math.ceil(itemCount / columns))
  local authorHeight = hasAuthor and (textSize + authorGap) or 0
  local legendHeight = padding + titleSize + metaGap + textSize + authorHeight + listGap + rows * rowHeight + padding
  return {
    padding = padding,
    titleSize = titleSize,
    textSize = textSize,
    swatchSize = swatchSize,
    rowHeight = rowHeight,
    columnGap = columnGap,
    metaGap = metaGap,
    authorGap = authorGap,
    authorHeight = authorHeight,
    listGap = listGap,
    columns = columns,
    rows = rows,
    legendHeight = legendHeight
  }
end

local function computePageLayout(contentPixelWidth, contentPixelHeight, itemCount, hasAuthor)
  local aspectWidth = 3
  local aspectHeight = 4
  local marginX = 36
  local marginY = 42
  local gap = 28
  local pageWidth = contentPixelWidth + marginX * 2
  local metrics = nil

  for _ = 1, 4 do
    metrics = computeLegendMetrics(pageWidth, itemCount, hasAuthor)
    local requiredHeight = marginY * 2 + contentPixelHeight + gap + metrics.legendHeight
    local requiredWidth = math.max(contentPixelWidth + marginX * 2, math.ceil(requiredHeight * aspectWidth / aspectHeight))
    if requiredWidth == pageWidth then
      break
    end
    pageWidth = requiredWidth
  end

  local pageHeight = math.ceil(pageWidth * aspectHeight / aspectWidth)
  metrics = computeLegendMetrics(pageWidth, itemCount, hasAuthor)
  local contentHeight = contentPixelHeight + (itemCount > 0 and (gap + metrics.legendHeight) or 0)
  local topOffset = math.max(marginY, math.floor((pageHeight - contentHeight) / 2))
  local contentX = math.floor((pageWidth - contentPixelWidth) / 2)
  local contentY = topOffset
  local legendY = contentY + contentPixelHeight + (itemCount > 0 and gap or 0)

  return {
    pageWidth = pageWidth,
    pageHeight = pageHeight,
    contentX = contentX,
    contentY = contentY,
    gap = gap,
    legendY = legendY,
    metrics = metrics
  }
end

local function drawLegendRaster(image, pattern, pageWidth, legendY, metrics, authorName)
  local black = pc.rgba(0, 0, 0, 255)
  local legendWidth = pageWidth - metrics.padding * 2
  local columnWidth = math.floor((legendWidth - (metrics.columns - 1) * metrics.columnGap) / metrics.columns)
  local textOffsetX = metrics.swatchSize + 10
  local titleScale = math.max(1, math.floor(metrics.titleSize / 8))
  local textScale = math.max(1, math.floor(metrics.textSize / 7))

  safeDrawText(image, "PATTERN", black, metrics.padding, legendY + metrics.padding, titleScale)
  safeDrawText(
    image,
    string.format("%dX%d %d", pattern.width, pattern.height, pattern.filled),
    black,
    metrics.padding,
    legendY + metrics.padding + metrics.titleSize + metrics.metaGap,
    textScale
  )

  local startY = legendY + metrics.padding + metrics.titleSize + metrics.metaGap + metrics.textSize
  if authorName and authorName ~= "" then
    safeDrawText(image, "BY " .. authorName, black, metrics.padding, startY + metrics.authorGap, textScale)
    startY = startY + metrics.textSize + metrics.authorGap
  end
  startY = startY + metrics.listGap

  for index, item in ipairs(pattern.legend) do
    local column = math.floor((index - 1) / metrics.rows)
    local row = (index - 1) % metrics.rows
    local itemX = metrics.padding + column * (columnWidth + metrics.columnGap)
    local itemY = startY + row * metrics.rowHeight
    drawFilledRect(image, itemX, itemY + 2, metrics.swatchSize, metrics.swatchSize, item.rgba)
    drawRectOutline(image, itemX, itemY + 2, metrics.swatchSize, metrics.swatchSize, black)
    safeDrawText(image, string.format("%s X%d", item.id, item.count), black, itemX + textOffsetX, itemY, textScale)
  end
end

local function makePreviewImage(pattern, options)
  local cellSize = options.cellSize
  local legendEnabled = options.includeLegend
  local gridPixelWidth = pattern.width * cellSize
  local gridPixelHeight = pattern.height * cellSize
  local axis = computeAxisMetrics(cellSize, pattern.width, pattern.height)
  local contentPixelWidth = gridPixelWidth + axis.leftPad
  local contentPixelHeight = gridPixelHeight + axis.topPad
  local layout = computePageLayout(contentPixelWidth, contentPixelHeight, legendEnabled and #pattern.legend or 0, options.authorName and options.authorName ~= "")
  local image = Image(layout.pageWidth, layout.pageHeight, ColorMode.RGB)

  local white = pc.rgba(255, 255, 255, 255)
  local black = pc.rgba(0, 0, 0, 255)
  local gridColor = pc.rgba(190, 190, 190, 255)
  local majorGridColor = pc.rgba(110, 140, 180, 255)
  local gridX = layout.contentX + axis.leftPad
  local gridY = layout.contentY + axis.topPad

  drawFilledRect(image, 0, 0, layout.pageWidth, layout.pageHeight, white)

  for y = 0, pattern.height - 1 do
    for x = 0, pattern.width - 1 do
      local entry = pattern.cells[y + 1][x + 1]
      local color = entry and entry.rgba or white
      local px = gridX + x * cellSize
      local py = gridY + y * cellSize
      drawFilledRect(image, px, py, cellSize, cellSize, color)
      drawCellCode(image, entry, px, py, cellSize)
      if options.showGrid then
        local lineColor = (isMajorGridLine(x) or isMajorGridLine(y)) and majorGridColor or gridColor
        drawRectOutline(image, px, py, cellSize, cellSize, lineColor)
      end
    end
  end

  drawAxisRaster(image, pattern, gridX, gridY, cellSize, axis, black)
  drawRectOutline(image, gridX, gridY, gridPixelWidth, gridPixelHeight, black)

  if legendEnabled then
    drawLegendRaster(image, pattern, layout.pageWidth, layout.legendY, layout.metrics, options.authorName)
  end

  return image
end

local function showPreviewSprite(image, title)
  local sprite = Sprite(image.width, image.height, ColorMode.RGB)
  local layer = sprite.layers[1]
  sprite:newCel(layer, 1, image, Point(0, 0))
  sprite.filename = title
  app.activeSprite = sprite
  return sprite
end

local function xmlEscape(value)
  return tostring(value)
    :gsub("&", "&amp;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
    :gsub('"', "&quot;")
end

local function svgLabelFill(entry)
  if not entry then
    return "#111111"
  end
  if luminance(entry) < 140 then
    return "#FFFFFF"
  end
  return "#111111"
end

local function renderSvg(pattern, options)
  local cellSize = options.svgCellSize
  local gridPixelWidth = pattern.width * cellSize
  local gridPixelHeight = pattern.height * cellSize
  local axis = computeAxisMetrics(cellSize, pattern.width, pattern.height)
  local contentPixelWidth = gridPixelWidth + axis.leftPad
  local contentPixelHeight = gridPixelHeight + axis.topPad
  local layout = computePageLayout(contentPixelWidth, contentPixelHeight, options.includeLegend and #pattern.legend or 0, options.authorName and options.authorName ~= "")
  local width = layout.pageWidth
  local height = layout.pageHeight
  local parts = {}
  local fontSize = math.max(7, math.floor(cellSize * 0.34))
  local axisFontSize = math.max(10, axis.scale * 6)
  local gridX = layout.contentX + axis.leftPad
  local gridY = layout.contentY + axis.topPad

  parts[#parts + 1] = string.format(
    '<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">\n',
    width, height, width, height
  )
  parts[#parts + 1] = '  <rect width="100%" height="100%" fill="#FFFFFF"/>\n'
  parts[#parts + 1] = string.format(
    '  <rect x="%d" y="%d" width="%d" height="%d" fill="#FFFFFF" stroke="#111111" stroke-width="1"/>\n',
    gridX, gridY, gridPixelWidth, gridPixelHeight
  )

  for x = 0, pattern.width - 1 do
    if shouldDrawAxisLabel(x, pattern.width, axis.step) then
      parts[#parts + 1] = string.format(
        '  <text x="%.2f" y="%.2f" font-size="%d" font-family="sans-serif" text-anchor="middle" dominant-baseline="middle" fill="#111111">%d</text>\n',
        gridX + x * cellSize + cellSize / 2,
        gridY - axis.topPad / 2,
        axisFontSize,
        x + 1
      )
    end
  end

  for y = 0, pattern.height - 1 do
    if shouldDrawAxisLabel(y, pattern.height, axis.step) then
      parts[#parts + 1] = string.format(
        '  <text x="%.2f" y="%.2f" font-size="%d" font-family="sans-serif" text-anchor="end" dominant-baseline="middle" fill="#111111">%d</text>\n',
        gridX - 6,
        gridY + y * cellSize + cellSize / 2,
        axisFontSize,
        y + 1
      )
    end
  end

  for y = 0, pattern.height - 1 do
    for x = 0, pattern.width - 1 do
      local entry = pattern.cells[y + 1][x + 1]
      local cellX = gridX + x * cellSize
      local cellY = gridY + y * cellSize
      if entry then
        parts[#parts + 1] = string.format(
          '  <rect x="%d" y="%d" width="%d" height="%d" fill="%s" stroke="#111111" stroke-width="0.6"/>\n',
          cellX, cellY, cellSize, cellSize, entry.hex
        )
        parts[#parts + 1] = string.format(
          '  <text x="%.2f" y="%.2f" font-size="%d" font-family="sans-serif" text-anchor="middle" dominant-baseline="middle" fill="%s">%s</text>\n',
          cellX + cellSize / 2,
          cellY + cellSize / 2 + 0.5,
          fontSize,
          svgLabelFill(entry),
          xmlEscape(entry.id)
        )
      else
        parts[#parts + 1] = string.format(
          '  <rect x="%d" y="%d" width="%d" height="%d" fill="#FFFFFF" stroke="#111111" stroke-width="0.6"/>\n',
          cellX, cellY, cellSize, cellSize
        )
      end

      if options.showGrid and not entry then
        local lineColor = (isMajorGridLine(x) or isMajorGridLine(y)) and "#6E8CB4" or "#C8C8C8"
        parts[#parts + 1] = string.format(
          '  <rect x="%d" y="%d" width="%d" height="%d" fill="none" stroke="#C8C8C8" stroke-width="0.6"/>\n',
          cellX, cellY, cellSize, cellSize
        )
        parts[#parts] = string.format(
          '  <rect x="%d" y="%d" width="%d" height="%d" fill="none" stroke="%s" stroke-width="0.6"/>\n',
          cellX, cellY, cellSize, cellSize, lineColor
        )
      end
    end
  end

  if options.includeLegend then
    local metrics = layout.metrics
    local legendWidth = width - metrics.padding * 2
    local columnWidth = math.floor((legendWidth - (metrics.columns - 1) * metrics.columnGap) / metrics.columns)
    parts[#parts + 1] = string.format(
      '  <text x="%d" y="%d" font-size="%d" font-family="sans-serif" fill="#111111">BeadGrid</text>\n',
      metrics.padding, layout.legendY + metrics.padding + metrics.titleSize - 4, metrics.titleSize
    )
    parts[#parts + 1] = string.format(
      '  <text x="%d" y="%d" font-size="%d" font-family="sans-serif" fill="#111111">%dx%d filled:%d</text>\n',
      metrics.padding, layout.legendY + metrics.padding + metrics.titleSize + metrics.metaGap, metrics.textSize, pattern.width, pattern.height, pattern.filled
    )

    local startY = layout.legendY + metrics.padding + metrics.titleSize + metrics.metaGap + metrics.textSize
    if options.authorName and options.authorName ~= "" then
      parts[#parts + 1] = string.format(
        '  <text x="%d" y="%d" font-size="%d" font-family="sans-serif" fill="#111111">By %s</text>\n',
        metrics.padding, startY + metrics.authorGap + metrics.textSize, metrics.textSize, xmlEscape(options.authorName)
      )
      startY = startY + metrics.textSize + metrics.authorGap
    end

    startY = startY + metrics.listGap

    for index, item in ipairs(pattern.legend) do
      local column = math.floor((index - 1) / metrics.rows)
      local row = (index - 1) % metrics.rows
      local itemX = metrics.padding + column * (columnWidth + metrics.columnGap)
      local itemY = startY + row * metrics.rowHeight
      parts[#parts + 1] = string.format(
        '  <rect x="%d" y="%d" width="%d" height="%d" fill="%s" stroke="#111111" stroke-width="0.8"/>\n',
        itemX, itemY - 10, metrics.swatchSize, metrics.swatchSize, item.hex
      )
      parts[#parts + 1] = string.format(
        '  <text x="%d" y="%d" font-size="%d" font-family="sans-serif" fill="#111111">%s x%d</text>\n',
        itemX + metrics.swatchSize + 10, itemY, metrics.textSize, xmlEscape(item.id), item.count
      )
    end
  end

  parts[#parts + 1] = "</svg>\n"
  return table.concat(parts)
end

local function writeTextFile(filePath, content)
  local file, err = io.open(filePath, "w")
  if not file then
    return false, err or "Unable to open file path."
  end
  file:write(content)
  file:close()
  return true
end

local function saveImageAsPng(image, filePath)
  local ok, err = pcall(function()
    image:saveAs(filePath)
  end)
  if not ok then
    return false, err or "Unable to save PNG."
  end
  return true
end

local function replaceExtension(filePath, newExtension)
  local normalized = filePath:gsub("\\", "/")
  if normalized:match("%.[^./]+$") then
    return normalized:gsub("%.[^./]+$", newExtension)
  end
  return normalized .. newExtension
end

local function promptExportBasePath(defaultName)
  local dialog = Dialog { title = "Export Files" }
  local submitted = false

  dialog:file { id = "pngPath", label = "PNG", save = true, filename = defaultName }
  dialog:button {
    id = "ok",
    text = "Save",
    onclick = function()
      submitted = true
      dialog:close()
    end
  }
  dialog:button {
    id = "cancel",
    text = "Cancel",
    onclick = function()
      dialog:close()
    end
  }
  dialog:show()

  if not submitted or not dialog.data or not dialog.data.pngPath or dialog.data.pngPath == "" then
    return nil
  end
  return dialog.data.pngPath
end

local function runExporter()
  local sprite = app.activeSprite
  if not sprite then
    app.alert("Open a sprite first.")
    return
  end

  local frameNumber = (app.activeFrame and app.activeFrame.frameNumber) or 1
  local bounds = spriteBounds(sprite)
  local baseName = basenameWithoutExtension(sprite.filename)
  local targetWidth = bounds.width
  local targetHeight = bounds.height
  local submitted = false

  local dialog = Dialog { title = "Export BeadGrid" }
  dialog:label {
    id = "sourceInfo",
    label = "Source",
    text = string.format("%dx%d  frame:%d  visible layers merged", bounds.width, bounds.height, frameNumber)
  }
  dialog:combobox { id = "paletteName", label = "Palette", options = getPaletteNames(), option = PALETTES[1].name }
  dialog:entry { id = "authorName", label = "Author", text = "" }
  dialog:number { id = "previewCellSize", label = "Preview Cell", text = "24", decimals = 0 }
  dialog:number { id = "svgCellSize", label = "SVG Cell", text = "32", decimals = 0 }
  dialog:check { id = "showGrid", label = "Show Grid", selected = true }
  dialog:check { id = "includeLegend", label = "Legend", selected = true }
  dialog:button {
    id = "ok",
    text = "Export",
    onclick = function()
      submitted = true
      dialog:close()
    end
  }
  dialog:button {
    id = "cancel",
    text = "Cancel",
    onclick = function()
      dialog:close()
    end
  }
  dialog:show()

  local data = dialog.data
  if not submitted or not data then
    return
  end

  local selectedPalette = findPaletteByName(data.paletteName)
  local width = targetWidth
  local height = targetHeight

  local pattern = finalizePatternStats(buildPattern(
    sprite,
    frameNumber,
    width,
    height,
    selectedPalette
  ))

  local pngPath = promptExportBasePath(baseName .. "-beadgrid.png")
  if not pngPath then
    app.alert("Export cancelled.")
    return
  end

  local previewImage = makePreviewImage(pattern, {
    cellSize = math.max(4, math.floor(tonumber(data.previewCellSize) or 12)),
    showGrid = data.showGrid,
    includeLegend = data.includeLegend,
    authorName = data.authorName
  })

  local svgText = renderSvg(pattern, {
    svgCellSize = math.max(16, math.floor(tonumber(data.svgCellSize) or 32)),
    showGrid = data.showGrid,
    includeLegend = data.includeLegend,
    authorName = data.authorName
  })
  local svgPath = replaceExtension(pngPath, ".svg")

  local messages = {
    string.format("Preview generated: %dx%d", width, height),
    string.format("Filled cells: %d", pattern.filled)
  }

  local pngOk, pngErr = saveImageAsPng(previewImage, pngPath)
  if not pngOk then
    app.alert("PNG export failed: " .. tostring(pngErr))
    return
  end

  local svgOk, svgErr = writeTextFile(svgPath, svgText)
  if not svgOk then
    app.alert("SVG export failed: " .. tostring(svgErr))
    return
  end

  messages[#messages + 1] = "PNG saved."
  messages[#messages + 1] = "SVG saved."
  app.alert(table.concat(messages, "\n"))
end

runExporter()
