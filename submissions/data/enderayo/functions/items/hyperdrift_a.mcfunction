#> enderayo:items/hyperdrift_a

execute as @a[nbt={Inventory: [{Slot: 103b, tag: {Hyperdrift: 1b, Magenta: 1b}}]}] run item replace entity @s armor.head with minecraft:light_blue_stained_glass{display: {Name: '[{"text":"Hyper","color":"#F238FF","bold":true,"italic":false},{"text":"drift ","color":"#FF8A14","bold":true,"italic":false},{"text":"Helmet","color":"#0AA5FF","bold":true,"italic":false}]', Lore: ['{"text":"When worn, cycle between two states :","color":"gray","bold":false,"italic":false}', '[{"text":"•","color":"aqua","bold":false,"italic":false},{"text":" +3 armor","color":"gray","bold":false,"italic":false}]', '[{"text":"•","color":"#FF05B4","bold":false,"italic":false},{"text":" +3 damage & -3 armor","color":"gray","bold":false,"italic":false}]']}, HideFlags: 5, Hyperdrift: 1b, Lightblue: 1b, Enchantments: [{id: "minecraft:silk_touch", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 622958059, -1765456493, -1580124987, -2006602031], Slot: "head"}]} 1

schedule function enderayo:items/hyperdrift_b 3s