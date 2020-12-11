-- DROP TABLE REVIEW;
-- DROP TABLE WISH_LIST;

CREATE TABLE REVIEW(
	user_id INTEGER NOT NULL,
	book_id INTEGER NOT NULL,
	full_review VARCHAR2(3000) NOT NULL,
	ratings INTEGER NOT NULL,
	review_date DATE DEFAULT SYSDATE,
	CONSTRAINT REVIEW_PK PRIMARY KEY(user_id, book_id),
	CONSTRAINT REVIEW_USER_FK FOREIGN KEY(user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE,
	CONSTRAINT REVIEW_BOOK_FK FOREIGN KEY(book_id) REFERENCES BOOK(book_id) ON DELETE CASCADE
);
CREATE TABLE WISH_LIST(
	user_id INTEGER NOT NULL,
	book_id INTEGER NOT NULL,
	CONSTRAINT WISH_LIST_PK PRIMARY KEY(user_id,book_id),
	CONSTRAINT WISH_LIST_USER_FK FOREIGN KEY(user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE,
	CONSTRAINT WISH_LIST_BOOK_FK FOREIGN KEY(book_id) REFERENCES BOOK(book_id) ON DELETE CASCADE
);