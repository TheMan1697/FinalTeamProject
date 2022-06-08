package works.yermi.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import works.yermi.domain.PensionVO;
import works.yermi.service.PensionService;

@Controller
@RequestMapping("map")
@AllArgsConstructor
public class MapController {
	private final PensionService service;

	@GetMapping("")
	public void map(String startDate, String endDate, Model model) {
//		model.addAttribute("pension", service.get(pensionid));
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
	}
	
	@GetMapping("place") @ResponseBody
    public List<PensionVO> getList() {
		return service.getList();
	}
	@GetMapping("place/{pensionid}/{name}")
	public String detail(@PathVariable String  name, @PathVariable Long pensionid, String startDate, String endDate, Model model) throws UnsupportedEncodingException {
		URLDecoder.decode((URLDecoder.decode(name, "8859_1")), "UTF-8");
		new String(name.getBytes("8859_1"), "utf-8");

		model.addAttribute("pension", service.get(pensionid));
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
		
		return "/place/getMap";
	}
	
	
}
