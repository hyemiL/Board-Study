package com.example.demo.admin;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.admin.vo.BoardInsertVo;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private final Logger log = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/list")
	public String boardList(Model model) {
		HashMap<String, Object> userInfo = new HashMap<>();
		log.debug("##### BoardController - dashboard userInfo : {}", userInfo);

		model.addAttribute(userInfo);
		return "/boardList";
	}

	@RequestMapping(value = "/write")
	public String boardInfo() {
		return "/boardWrite";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/insert", method = RequestMethod.POST)
//	public void boardInsert(
//			@RequestParam("title") String title, @RequestParam("editordata") String editordata) {
//			log.debug("title :{}", title);
//			log.debug("editordata :{}",editordata);
//
//	}
	
//	@ResponseBody
//	@RequestMapping(value = "/insert", method = RequestMethod.POST)
//	public void boardInsert(@RequestBody HashMap<String, Object> map) {
//		log.debug("map1 :{}" + map);
//		log.debug("map2 :{}" + map);
//		log.debug("map3 :{}" + map);
//		log.debug("map4 :{}" + map);
//		log.debug("map5 :{}" + map);
//	}
	
	@ResponseBody // json 주고 받을 때 쓰는 어노테이션
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public BoardInsertVo boardInsert(@RequestBody BoardInsertVo vo) {
		log.debug("title: {}", vo.getTitle());
		log.debug("editordata: {}", vo.getEditordata());
		return vo;
	}
	
}
