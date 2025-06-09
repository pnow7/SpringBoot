package com.human.notice.service;

import com.human.notice.vo.NoticeVO;
import java.util.List;

public interface NoticeService {

    //Controller에서 GetMapping을 하기 위해 listNotices을 가져옴
    public List<NoticeVO> listNotices() throws Exception;

}
