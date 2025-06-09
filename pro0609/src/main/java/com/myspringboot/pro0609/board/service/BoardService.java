package com.myspringboot.pro0609.board.service;

import com.myspringboot.pro0609.board.vo.ArticleVO;

import java.util.List;

public interface BoardService {

    public List<ArticleVO> listArticles() throws Exception;

}
