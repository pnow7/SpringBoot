package com.human.notice.controller;

import com.human.notice.service.NoticeService;
import com.human.notice.vo.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
@RequestMapping("/notice")
public class NoticeControllerImpl implements NoticeController{

    @Autowired
    NoticeService noticeService;

    @GetMapping("/notice_list.do")
    public String listNotices(Model model) throws Exception {

        List<NoticeVO> noticesList = noticeService.listNotices();
        model.addAttribute("noticesList", noticesList);

        return "/notice/notice_list";
    }
}
