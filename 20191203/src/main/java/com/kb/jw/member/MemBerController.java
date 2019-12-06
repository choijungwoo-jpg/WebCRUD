package com.kb.jw.member;

import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemBerController {
	@Autowired
	SqlSession ss;

	@RequestMapping(value = "member/index.do")
	public String index(Model model) {
		List<MemBerDTO> list = ss.selectList("member.selectlist");
		model.addAttribute("list", list);
		return "member/index";
	}

	@RequestMapping(value = "member/insert.do")
	public String insert() {
		return "member/insert";
	}

	@RequestMapping(value = "member/insertProc.do")
	public String insertProc(MemBerDTO mbd) {
		ss.insert("member.insertrow", mbd);
		return "redirect:index.do";
	}

	@RequestMapping(value = "member/update.do")
	public String update(Model model, MemBerDTO mbd) {
		MemBerDTO rembd = ss.selectOne("member.selectrow", mbd);
		model.addAttribute("row", rembd);
		return "member/update";
	}

	@RequestMapping(value = "member/updateProc.do")
	public String updateProc(MemBerDTO mbd) {
		ss.update("member.updaterow", mbd);
		return "redirect:index.do";
	}

	@RequestMapping(value = "member/delete.do")
	public String delete(String[] midx) {
		String midxss = "";
		for (int i = 0; i < midx.length; i++) {
			if (i == midx.length - 1) {
				midxss = midxss + midx[i];
			} else {
				midxss = midxss + midx[i] + ",";
			}
		}
		ss.delete("member.deleterow", midxss);
		return "redirect:index.do";
	}
	

}
