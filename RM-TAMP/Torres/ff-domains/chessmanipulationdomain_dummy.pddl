(define (domain chessmanipulation_dummy)

(:types obstacle robot location dummyparam)

(:predicates
       (handEmpty ?rob)
       (holding ?rob ?obs)
       (in ?obs ?from)
       (dummyCalled ?rob ?param1 ?param2))

(:action pick
:parameters (?rob - robot ?obs - obstacle ?from - location)
:precondition (and (handEmpty ?rob) (in ?obs ?from))
:effect (and (holding ?rob ?obs)
   (not (handEmpty ?rob)) ))

(:action place
:parameters (?rob - robot ?obs - obstacle ?from - location)
:precondition (and (holding ?rob ?obs))
:effect (and (handEmpty ?rob) (in ?obs ?from)
   (not (holding ?rob ?obs)) ))
   
(:action dummy
:parameters (?rob - robot ?param1 - dummyparam ?param2 - dummyparam)
:precondition (not (dummyCalled ?rob ?param1 ?param2))
:effect (dummyCalled ?rob ?param1 ?param2)
)

)
