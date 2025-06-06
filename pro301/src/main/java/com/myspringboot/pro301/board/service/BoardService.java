package com.myspringboot.pro301.board.service;

import com.myspringboot.pro301.board.vo.ArticleVO;

import java.util.List;

public interface BoardService {

    public List<ArticleVO> listArticles() throws Exception;
}