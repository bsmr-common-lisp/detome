(in-package #:detome)

(defclass map-object (object)
  ((x 
    :initarg :x :accessor x :type fixnum :documentation 
    "The x position of the actor on the map.")
   (y 
    :initarg :y :accessor y :type fixnum :documentation 
    "The y position of the actor on the map.")))

(defclass actor (map-object)
  ((level
    :initarg :level :accessor level :type fixnum :documentation 
    "The actor's level.")
   (hp
    :initarg :hp :accessor hp :type single-float :documentation
    "The current health of the actor.")
   (hp-max
    :initarg :hp-max :accessor hp-max :type single-float :documentation
    "The current max health of the actor.")
   (att-r
	:initarg :att-r :accessor att-r :type single-float :documentation
	"Attack rating of the actor.")
   (dmg-r
	:initarg :dmg-r :accessor dmg-r :type single-float :documentation
	"Damage rating of the actor.")
   (def-r
	:initarg :def-r :accessor def-r :type single-float :documentation
	"Defence rating of the actor.")
   (inv
	:initarg :inv :accessor inv :type list :documentation
	"Actor's inventory.")))

(defclass player (actor)
  ((provisions :initarg :provisions :accessor provisions :type fixnum)
   (g-energy :initarg :g-energy :accessor g-energy :type fixnum)
   (b-energy :initarg :b-energy :accessor b-energy :type fixnum)
   (r-energy :initarg :r-energy :accessor r-energy :type fixnum)
   (y-energy :initarg :y-energy :accessor y-energy :type fixnum))
  (:default-initargs :inv nil :level 1))
