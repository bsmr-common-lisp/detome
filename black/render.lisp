(in-package #:black)

(defun render (obj interpolation)
  (declare (object obj)
		   (single-float interpolation))
  (let ((render-cb (render-cb obj)))
	(and render-cb (funcall render-cb obj interpolation))))

#|
(defun add-to-render-list (type renderer)
  (declare (symbol type) (renderer renderer))
  (let ((ass (assoc type *render-list*)))
	(if ass
		(push renderer (cadr ass))
		(push (list type (list renderer)) *render-list*))))

(defmethod print-object ((object renderer) out)
  (format out "<renderer:\"~a\">" (slot-value object 'name)))
	   

(defclass renderer-sub (renderer)
  ((blah :initarg :blah :accessor blah))
  (:default-initargs :name "some subclass of renderer"))
|#