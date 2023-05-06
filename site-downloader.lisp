#|
Steps for this program
1. Get URL from user
2. Validate URL (maybe)
3. Get HTML from URL
4. Get list of all img/script/other(?) tags and URLs
5. If whole-site is turned on, get all HREFs and add in-site URLs
6. Download all URLs
7. Write everything to disk
8. Maybe rewrite the original HTML to refer to local URLs
9. Write the original HTML
|#

(require :lisp-site-downloader)

(defun validate-url (url)
  (not (eq (ppcre:scan "https?://.+" url) nil)))

(defun input-url ()
  (let ((url (read-line)))
    (if (validate-url url)
	url
	nil)))
