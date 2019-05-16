package edu.autocar.car.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.autocar.car.service.CarService;
import edu.autocar.dashboard.model.TodayParkInfoVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CarController {
	@Autowired
	CarService service;
	
	@GetMapping("/car")
	public String view(Model model) throws Exception {
		
		return "car/car";
	}
	
	
	@ResponseBody
	@PostMapping("/car")
	public ResponseEntity<Map<String,Object>> get() throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		List<TodayParkInfoVO> rs = service.selectDashboard();
		
		map.put("rs", rs);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "application/json; charset=utf-8");
		return new ResponseEntity<Map<String, Object>>(
		map, headers, HttpStatus.OK);
	}
	
}
