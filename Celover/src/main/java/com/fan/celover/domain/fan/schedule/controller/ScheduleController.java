package com.fan.celover.domain.fan.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ScheduleController {
	@GetMapping("/fanpage/schedule")
	public String fanSchedule() {
		return "main/fanpage/calendar/calendar";
	}

}
