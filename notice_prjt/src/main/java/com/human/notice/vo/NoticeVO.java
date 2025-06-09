package com.human.notice.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class NoticeVO {

    private int n_idx;
    private String n_category;
    private String n_title;
    private String n_content;
    private String n_regdate;
    private String n_update;
    private String n_status;

}
