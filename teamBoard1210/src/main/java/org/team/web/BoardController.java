package org.team.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.team.domain.BoardVO;
import org.team.service.BoardService;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;

	@RequestMapping(value="/create", method = RequestMethod.GET)
	public void createGet(Model model) throws Exception{
		System.out.println("Board Controller - Create GET이 호출되었다.");
		
	}
	
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public String createPost(BoardVO vo,Model model) throws Exception{
		System.out.println("Board Controller - Create POST가 호출되었다.");
		service.create(vo);
		model.addAttribute("msg","CREATE SUCCESS");
		return "/board/result";
	}
	
	@RequestMapping(value="/view",method = RequestMethod.GET)
	public void view(@RequestParam("bno")int bno, Model model) throws Exception{
		System.out.println("Board Controller - View GET이 호출되었다.");
		model.addAttribute("view",service.read(bno));
	}
	
	@RequestMapping(value="/delete",method = RequestMethod.POST)
	public String remove(@RequestParam("bno")Integer bno,Model model) throws Exception{
		System.out.println("Board Controller - Remove POST가 호출되었다.");
		service.delete(bno);
		model.addAttribute("msg","REMOVE SUCCESS");
		return "/board/result";
	}
	
	

	@RequestMapping(value="/modify",method=RequestMethod.GET)
	public void modifyGet(@RequestParam("bno")int bno,Model model) throws Exception{
		System.out.println("Board Controller - Update GET이 호출되었다.");
		BoardVO vo = service.read(bno);
		model.addAttribute("vo",vo);
	}
	
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modifyPost(BoardVO vo,Model model) throws Exception{
		System.out.println("Board Controller - Update POST가 호출되었다.");
		service.update(vo);
		model.addAttribute("msg","MODIFY SUCCESS");
		return "/board/result";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model) throws Exception{
		model.addAttribute("list",service.list());
	}
	
}
