
;;----------------------------------------------------------------------------;;
;; sa1001 | �A���P�� (L)                                                      ;;
;; ItL000 |                                                                   ;;
;;----------------------------------------------------------------------------;;
;; ���� [Author] : s.s                            | �쐬:160109 | �X�V:170322 ;;
;;----------------------------------------------------------------------------;;

(defun c:sabaab nil (sa1001))
(defun c:L nil (sa1001))

(defun sa1001 ( / sp ep acd )
    (load "ss_common")
    (start::sspg<<)

    (setq acd (ss:acd))
    (while
	(and
	    (setq sp (trans (getpoint "\n �n�_���w��:") 1 0))
	    (setq ep (trans (getpoint (trans sp 0 1) "\n �I�_���w��:") 1 0))
	)
	(vla-StartUndoMark acd)
	(if (and sp ep) (ss:line sp ep))
	(vla-EndUndoMark acd)
    )

    (>>sspg::end)
    (princ)
) ;|-end-|;


;;; �R�}���h��-----------------------------------------------------

(defun c:sabaaba (/ sp ep)
  (load "ss_common")
  (start::sspg<<)			 

  (while
      (and
	  (setq sp (getpoint "\n �n�_���w��:"))
          (setq ep (getpoint sp "\n �I�_���w��:"))
      )
      (if (and sp ep)
	  (vl-cmdf "_.LINE" sp ep "")
      )
  )

  (>>sspg::end)
  (princ)
);|-end-|;

;; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> EOF



