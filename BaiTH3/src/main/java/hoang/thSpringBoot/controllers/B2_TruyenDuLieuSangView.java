package hoang.thSpringBoot.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import julian.thSpringBoot.models.SinhVien;

@Controller
public class B2_TruyenDuLieuSangView {
	@GetMapping("/vd2")
	public String hienThiSinhVien(ModelMap model) {
		SinhVien sv = new SinhVien("65131121", "Nguyễn Việt Hoàng", 2005, "Nam");

		model.addAttribute("student", sv);

		return "view-sinhvien";
	}
}
