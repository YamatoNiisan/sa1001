
;;----------------------------------------------------------------------------;;
;; sa1001 | 連続単線 (L)                                                      ;;
;; ItL000 |                                                                   ;;
;;----------------------------------------------------------------------------;;
;; 著者 [Author] : s.s                            | 作成:160109 | 更新:170322 ;;
;;----------------------------------------------------------------------------;;

(defun c:sabaab nil (sa1001))
(defun c:L nil (sa1001))

(defun sa1001 ( / sp ep acd )
    (load "ss_common")
    (start::sspg<<)

    (setq acd (ss:acd))
    (while
	(and
	    (setq sp (trans (getpoint "\n 始点を指示:") 1 0))
	    (setq ep (trans (getpoint (trans sp 0 1) "\n 終点を指示:") 1 0))
	)
	(vla-StartUndoMark acd)
	(if (and sp ep) (ss:line sp ep))
	(vla-EndUndoMark acd)
    )

    (>>sspg::end)
    (princ)
) ;|-end-|;


;;; コマンド版-----------------------------------------------------

(defun c:sabaaba (/ sp ep)
  (load "ss_common")
  (start::sspg<<)			 

  (while
      (and
	  (setq sp (getpoint "\n 始点を指示:"))
          (setq ep (getpoint sp "\n 終点を指示:"))
      )
      (if (and sp ep)
	  (vl-cmdf "_.LINE" sp ep "")
      )
  )

  (>>sspg::end)
  (princ)
);|-end-|;

;; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> EOF



