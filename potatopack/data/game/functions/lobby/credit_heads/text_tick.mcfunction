#Ticking for text

$data merge entity @s[tag=!selected] {line_width:100,text:'{"text":"$(name)\\n","italic":false,"color":"green"}'}
$data merge entity @s[tag=selected] {line_width:200,text:'{"translate":"credits.$(name)","italic":false,"color":"green"}'}