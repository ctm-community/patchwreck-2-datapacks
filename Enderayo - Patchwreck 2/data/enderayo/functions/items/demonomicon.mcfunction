kill 00000000-0001-44ef-0000-00000000002c
execute as @s at @s run summon marker ~ ~ ~ {UUID:[I;0,83183,0,44]}

schedule function enderayo:items/remove_circle 20s
scoreboard players set .cd enderayo.demonomicon 1800

#/give @p written_book{display:{Name:'{"text":"Demonomicon","color":"#800000","bold":true,"italic":false}'},HideFlags:32,Demonomicon:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0f,Operation:1,UUID:[I;1472508292,775505822,-1682709257,1802090043],Slot:"offhand"}],title:"",author:"",generation:0,pages:['[{"text":"\\n  << Summon Circle >>","color":"red","bold":false,"italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Click Here !","color":"red","bold":true,"italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger enderayo.demonomicon set 1"}},{"text":"\\n\\n","obfuscated":false,"hoverEvent":{"action":"show_text","value":[{"text":" "}]},"clickEvent":{"action":"change_page","value":" "}},{"text":"uuuuuuuuuuuuuuuu","color":"black","bold":true,"italic":false,"obfuscated":true,"hoverEvent":{"action":"show_text","value":[{"text":"zueuuhzgi","color":"dark_red","bold":true,"italic":false,"obfuscated":true}]},"clickEvent":{"action":"change_page","value":" "}},{"text":"\\n\\nAbilty: Syphon Souls","color":"red","bold":false,"italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Summon a circle that last 20s absorbing the souls of the monsters that dies inside of it. Each souls absorbed grant this book +1% damage (when in offhand) up to a maximum of +50% damage. ALL souls are lost on death.","color":"gray","bold":false,"italic":false}]},"clickEvent":{"action":"change_page","value":" "}},{"text":"\\nClick above to activate (90s Cooldown)\\n\\n","color":"gray","bold":false,"italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"Summon a circle that last 20s absorbing the souls of the monsters that dies inside of it. Each souls absorbed grant this book +1% damage (when in offhand) up to a maximum of +50% damage. ALL souls are lost on death.","color":"gray","bold":false,"italic":false}]},"clickEvent":{"action":"change_page","value":" "}}]']} 1
