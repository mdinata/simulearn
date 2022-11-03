globals [
  initial-trees
  burnt-trees
]

;prepare group of agents -> agentset
breed [ fires fire ]
breed [ embers ember ]

to setup
  clear-all
  set-default-shape turtles "square"
  
  ;prepare the green patches density
  ask patches with [ ( random-float 100 ) < density ] [ set pcolor green ]
  ask patches with [ pxcor = min-pxcor ] [ ignite ]
  
  ;assign variable values
  set initial-trees count patches with [ pcolor = green ]
  set burnt-trees 0

  reset-ticks
end

to go

  if not any? turtles [ stop ]
  ask fires [ ask neighbors4 with [ pcolor = green ] [ ignite ]
    set breed embers 
  ]
  fade-ember
  tick
end

to ignite
  sprout-fires 1 [ set color red ]
  set pcolor black
  set burnt-trees burnt-trees + 1
end

to fade-ember
  ask embers [ set color color - 0.2 if color < red - 4 [ set pcolor color
    die ]
  ]  
end

to-report pct-burned
  report ( burnt-trees / initial-trees ) * 100
end
