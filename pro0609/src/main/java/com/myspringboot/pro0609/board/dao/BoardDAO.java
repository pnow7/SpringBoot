package com.myspringboot.pro0609.board.dao;

import com.myspringboot.pro0609.board.vo.ArticleVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

import java.util.List;

@Mapper
public interface BoardDAO {

    public List<ArticleVO> selectAllArticlesList() throws DataAccessException;
}