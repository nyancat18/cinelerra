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
;;;  Standard Spanish female voice                                      ;;;
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
;;;  Voice Talent:  Silvia Fernández                                    ;;;
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

(set! Indisys_MP_es_sf::zdur_tree 
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

(set! Indisys_MP_es_sf::phone_durs '
(
  ;;; PHONE DURATION DATA for a male speaker
; (# 0.2 0.1)
; (v 0.055 0)
; (dh 0.04 0.013333)
; (sh 0.137778 0.030012)
; (z 0.163409 0.150273)
; (ax 0.092963 0.038587)
; (g 0.064813 0.026332)
; (G 0.063012 0.012264)
; (ch 0.109078 0.019343)
; (th 0.082975 0.020107)
; (x 0.101547 0.028746)
; (rr 0.062126 0.029087)
; (D 0.046587 0.013417)
; (l 0.063981 0.033097)
; (u1 0.087722 0.025713)
; (B 0.052 0.014765)
; (a1 0.078106 0.020165)
; (ll 0.074694 0.046031)
; (n 0.059494 0.030216)
; (p 0.078649 0.032454)
; (e 0.061169 0.024376)
; (ny 0.085235 0.020043)
; (e1 0.074347 0.030217)
; (a 0.074096 0.070344)
; (i1 0.07266 0.021049)
; (b 0.057097 0.027123)
; (d 0.04869 0.022862)
; (u 0.065598 0.026392)
; (t 0.06998 0.016373)
; (f 0.083499 0.022751)
; (o1 0.080378 0.03067)
; (s 0.080962 0.03606)
; (o 0.06964 0.029085)
; (r 0.026087 0.010005)
; (k 0.073238 0.019578)
; (i 0.057735 0.021518)
; (m 0.059389 0.021599)
; (hh 0.113333 0.024664)
; (zh 0.071 0.030)
  ;;; PHONE DURATION DATA for a female speaker
 (# 0.2 0.1)
 (dh 0.04 0.013333)
 (hh 0.113333 0.016073)
 (v 0.04 0.004082)
 (z 0.107045 0.04002)
 (zh 0.074 0.018841)
 (sh 0.131471 0.031113)
 (ax 0.087609 0.021735)
 (g 0.058034 0.020869)
 (G 0.051118 0.010201)
 (ch 0.106643 0.024146)
 (th 0.084414 0.020179)
 (x 0.095 0.031187)
 (rr 0.079109 0.03475)
 (D 0.052665 0.019498)
 (l 0.068727 0.037451)
 (u1 0.088684 0.020733)
 (B 0.047851 0.011182)
 (a1 0.081051 0.021818)
 (ll 0.070266 0.061138)
 (n 0.065005 0.025544)
 (p 0.081239 0.042899)
 (e 0.064588 0.022886)
 (ny 0.094529 0.01728)
 (e1 0.077195 0.03704)
 (a 0.079514 0.043982)
 (i1 0.078049 0.022138)
 (b 0.058782 0.022451)
 (d 0.050626 0.020089)
 (u 0.070579 0.023462)
 (t 0.064749 0.022986)
 (f 0.08193 0.024173)
 (o1 0.080988 0.028863)
 (s 0.085099 0.030433)
 (o 0.083732 0.038128)
 (r 0.03785 0.018439)
 (k 0.078282 0.027166)
 (i 0.064821 0.023618)
 (m 0.067915 0.020486)
))

(provide 'Indisys_MP_es_sf_durdata)
