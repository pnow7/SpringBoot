package com.human.notice.dao;

import com.human.notice.vo.NoticeVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

import java.util.List;

@Mapper
public interface NoticeDAO {

    public List<NoticeVO> selectAllNoticesList() throws DataAccessException;

}
