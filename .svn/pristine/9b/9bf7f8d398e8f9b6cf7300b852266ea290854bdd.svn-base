package works.yermi.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import works.yermi.domain.CriteriaPension;
import works.yermi.domain.PensionVO;
import works.yermi.service.PensionService;

@Controller
@RequestMapping("pension/*")
@AllArgsConstructor
public class PensionController {
	private final PensionService service;
	
	@GetMapping("list")
	public String list(Model model, CriteriaPension cri) {
		model.addAttribute("pensions", service.getList(cri));
		return "/pension/list";
	}
	
	@GetMapping({"pages/{lastPensionid}", "pages/{lastPensionid}/{amount}"})
	public List<PensionVO> getList(
		@PathVariable(required=false) Optional<Long> lastPensionid,
		@PathVariable(required=false) Optional<Integer> amount) {
		CriteriaPension cri = new CriteriaPension();
		cri.setLastPensionid(lastPensionid.orElse(cri.getLastPensionid()));
		cri.setAmount(amount.orElse(cri.getAmount()));
		
		return service.getList(cri);
	}
	
	@GetMapping("detail")
	public String detail() {
		return "/pension/detail";
	}
}
