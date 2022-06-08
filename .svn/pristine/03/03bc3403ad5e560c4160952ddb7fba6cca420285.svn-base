package works.yermi.controller;

import java.security.Principal;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import works.yermi.domain.AuthVO;
import works.yermi.domain.MemberVO;
import works.yermi.mapper.MemberMapper;
import works.yermi.service.MemberService;

@Controller
@RequestMapping("member")
@AllArgsConstructor
@Log4j
public class MemberController {
	private MemberService memberService; 
	
	@GetMapping("login")
	public void login(){
	}

	@GetMapping("join")
	public void join(){
	}
	
	@PostMapping("join")
	public String join(MemberVO vo){
		log.info(vo);
		memberService.join(vo);
		return "redirect:/member/login";
	}
	
	@GetMapping({"get", "modify"})
	@PreAuthorize("isAuthenticated()")
	public void get(Principal principal, Model model){
		log.info(principal);
		MemberVO vo = memberService.get(principal.getName());
		log.info(vo);
		model.addAttribute("member", vo);
	}
	
	@PreAuthorize("isAuthenticated() and principal.username == #memberVO.userId")
	@PostMapping("modify")
	public String modify(MemberVO memberVO, RedirectAttributes rttr){
		log.info("modify : " + " " + memberVO);
		
		if(memberService.modify(memberVO)){
			rttr.addFlashAttribute("result", "수정");
		}
		return "redirect:/member/mypage";
	}
	
	
	@PreAuthorize("isFullyAuthenticated()")
	@GetMapping("mypage")
	public void mypage(){
		
	}
	
	@PostMapping("mypage")
	public void mypage(MemberVO vo){
		
	}
	
	@RequestMapping(value="juso", method={RequestMethod.GET, RequestMethod.POST})
	public void jusoPopup(){
		
	}
	
	@GetMapping("idcheck") @ResponseBody
	public String idCheck(MemberVO memberVO){
		log.info(memberVO.getUserId());  // 존재할때 0 인지 확인 
		log.info(memberVO.getNickName());   
		log.info(memberVO.getEmail());  
		// 0 null , 1 exist 
		return memberService.hasMember(memberVO) == null ? "0" : "1";
	}
}
