package edu.autocar.setting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.autocar.setting.service.SettingService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class SettingController {
	@Autowired
	SettingService service;

	@GetMapping("/setting")
	public String view(Model model) throws Exception {

		return "setting/setting";
	}

}
