package com.example.demo.admin;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping(value = "/insert")
	public void boardInsert(
			@RequestParam("title") String title, /*@RequestParam("editordata")*/ String editordata) {
			log.debug("제목" + title);
			//log.debug("내용" + editordata);

	}

	
}
