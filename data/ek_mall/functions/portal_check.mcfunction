execute align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_display, distance=..1] if predicate ek_mall:x_portal run return 1
execute align xyz positioned ~-.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_display, distance=..1] if predicate ek_mall:x_portal run return 2
execute align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=ek_mall_portal_display, distance=..1] if predicate ek_mall:z_portal run return 3
execute align xyz positioned ~.5 ~ ~-.5 unless entity @e[tag=ek_mall_portal_display, distance=..1] if predicate ek_mall:z_portal run return 4

