/*
 ERO CLOUDE에서 내보내기된 SQL은 AUTO_INCREMENT와 CHECK 제약 조건이 없기 때문에 별도로 추가를 해야만 한다!!!!!!!!!!!!!
 */

DROP TABLE IF EXISTS `tbl_hobby`;

CREATE TABLE `tbl_hobby`
(
    `hobby_no`   INT          NOT NULL AUTO_INCREMENT COMMENT '취미 번호',
    `hobby_name` VARCHAR(200) NOT NULL COMMENT '취미명',
    `member_no`  INT          NOT NULL COMMENT '회원번호'
);

DROP TABLE IF EXISTS `tbl_members`;

CREATE TABLE `tbl_members`
(
    `member_no`   INT         NOT NULL AUTO_INCREMENT COMMENT '회원번호(자동 증가)',
    `member_name` VARCHAR(50) NOT NULL
);

ALTER TABLE `tbl_hobby`
    ADD CONSTRAINT `PK_TBL_HOBBY` PRIMARY KEY (
                                               `hobby_no`
        );

ALTER TABLE `tbl_members`
    ADD CONSTRAINT `PK_TBL_MEMBERS` PRIMARY KEY (
                                                 `member_no`
        );

ALTER TABLE `tbl_hobby`
    ADD CONSTRAINT `FK_tbl_members_TO_tbl_hobby_1` FOREIGN KEY (
                                                                `member_no`
        )
        REFERENCES `tbl_members` (
                                  `member_no`
            );


