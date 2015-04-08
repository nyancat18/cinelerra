;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                      JUNTA DE ANDALUCÍA                             ;;;
;;;                      Copyright (c) 2007                             ;;;
;;;                      All Rights Reserved.                           ;;;
;;;                                                                     ;;;
;;;  Distribution policy.                                               ;;;
;;;                                                                     ;;;
;;;  Free for any use.                                                  ;;;
;;;                                                                     ;;;
;;;  All the work is based on the Festvox Toolkit, provided by:         ;;;
;;;    - Carnegie Mellon University (http://www.festvox.org)            ;;;
;;;                                                                     ;;;
;;;  The copyright below belongs to the original Festvox project; it    ;;;
;;;  therefore applies to the present work.                             ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;  Standard Spanish male voice                                        ;;;
;;;                                                                     ;;;
;;;  Contractor: Consejería de Innovación, Ciencia y Empresa            ;;;
;;;              de la Junta de Andalucía                               ;;;
;;;                                                                     ;;;
;;;  Developed by: Intelligent Dialogue Systems, S.L. (INDISYS)         ;;;
;;;                Mac-Puar Sistemas S.L.                               ;;;	
;;;                                                                     ;;;
;;;  Authors:   Jesús González <j.gonzalez@indisys.es>                  ;;;
;;;             Pilar Manchón, <p.manchon@indisys.es>                   ;;;
;;;             Diego Martínez, <d.martinez@indisys.es>                 ;;;
;;;             Guillermo Pérez, <g.perez@indisys.es>                   ;;;
;;;             Carmen Del Solar, <c.delsolar@indisys.es>               ;;;
;;;                                                                     ;;;
;;;  Voice Talent:  Pedro Alonso                                        ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   A hand-specified tree to predict zcore durations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(set! Indisys_MP_es_pa::zdur_tree 
 '
   ((R:SylStructure.parent.R:Syllable.p.syl_break > 1 ) ;; clause initial
    ((R:SylStructure.parent.stress is 1)
     ((1.5))
     ((1.2)))
    ((R:SylStructure.parent.syl_break > 1)   ;; clause final
     ((R:SylStructure.parent.stress is 1)
      ((1.5))
      ((1.2)))
     ((R:SylStructure.parent.stress is 1)
      ((ph_vc is +)
       ((1.2))
       ((1.0)))
      ((1.0))))))

(set! Indisys_MP_es_pa::phone_durs
'(
  ;;; PHONE DATA  
  ;; name zero mean in seconds e.g.
  ;(# 0.0 0.250)
  ; all other phones on Indisys_MP_es phoneset
   (# 0.0 0.250)
   (a 0.0 0.080)
   (e 0.0 0.080)
   (i 0.0 0.070)
   (o 0.0 0.080)
   (u 0.0 0.070)
   (i0 0.0 0.040)
   (u0 0.0 0.040)
   (ax 0.046 0.024)
   (a1 0.0 0.090)
   (e1 0.0 0.090)
   (i1 0.0 0.080)
   (o1 0.0 0.090)
   (u1 0.0 0.080)
   (b 0.0 0.065)
   (B 0.0 0.060)
   (ch 0.0 0.135)
   (d 0.0 0.060)
   (D 0.0 0.055)
   (f 0.0 0.100)
   (g 0.0 0.080)
   (G 0.0 0.075)
   (j 0.0 0.100)
   (k 0.0 0.100)
   (l 0.0 0.080)
   (ll 0.0 0.105)
   (m 0.0 0.070)
   (n 0.0 0.080)
   (ny 0.0 0.110)
   (p 0.0 0.100)
   (r 0.0 0.030)
   (rr 0.0 0.080)
   (s 0.0 0.110)
   (t 0.0 0.085)
   (th 0.0 0.100)
   (x 0.0 0.130)
   (v 0.051 0.019)
   (z 0.079 0.034)
   (dh 0.031 0.016)
   (sh 0.108 0.031)
   (hh 0.113333 0.024664)
   (zh 0.071 0.030)
))

(provide 'Indisys_MP_es_pa_durdata)
