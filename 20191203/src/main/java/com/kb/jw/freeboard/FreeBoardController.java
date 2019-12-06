package com.kb.jw.freeboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FreeBoardController {
	@Autowired
	SqlSession ss;

	@RequestMapping(value = "freeboard/index.do")
	public String index(Model model) {
		List<FreeBoardDTO> list = ss.selectList("freeboard.selectlist");
		model.addAttribute("list", list);
		return "freeboard/index";
	}

	@RequestMapping(value = "freeboard/insert.do")
	public String insert() {
		return "freeboard/insert";
	}

	@RequestMapping(value = "freeboard/insertProc.do")
	public String insertProc(FreeBoardDTO fbd) {
		ss.insert("freeboard.insertrow", fbd);
		return "redirect:index.do";
	}

	@RequestMapping(value = "freeboard/update.do")
	public String update(Model model, FreeBoardDTO fbd) {
		FreeBoardDTO refbd = ss.selectOne("freeboard.selectrow", fbd);
		model.addAttribute("row", refbd);
		return "freeboard/update";
	}

	@RequestMapping(value = "freeboard/updateProc.do")
	public String updateProc(FreeBoardDTO fbd) {
		ss.update("freeboard.updaterow", fbd);
		return "redirect:index.do";
	}

	@RequestMapping(value = "freeboard/delete.do")
	public String delete(String[] idx) {
		String idxss = "";
		for (int i = 0; i < idx.length; i++) {
			if (i == idx.length - 1) {
				idxss = idxss + idx[i];
			} else {
				idxss = idxss + idx[i] + ",";
			}
		}
		ss.delete("freeboard.deleterow", idxss);
		return "redirect:index.do";
	}
}
