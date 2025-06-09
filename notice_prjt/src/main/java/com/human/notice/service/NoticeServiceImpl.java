package com.human.notice.service;

import com.human.notice.dao.NoticeDAO;
import com.human.notice.vo.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("NoticeService")
@Transactional(propagation = Propagation.REQUIRED)
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    NoticeDAO noticeDAO;

    @Override
    public List<NoticeVO> listNotices() throws Exception {
        List<NoticeVO> noticesList = noticeDAO.selectAllNoticesList();
        return noticesList;
    }
}
