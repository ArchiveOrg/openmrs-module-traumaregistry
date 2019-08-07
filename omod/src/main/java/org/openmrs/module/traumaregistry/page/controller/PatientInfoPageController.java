package org.openmrs.module.traumaregistry.page.controller;

import org.openmrs.Patient;
import org.openmrs.ui.framework.page.PageModel;
import org.springframework.web.bind.annotation.RequestParam;

public class PatientInfoPageController {
	
	public void get(@RequestParam("patientId") Patient patient, PageModel model) {
		
		model.addAttribute("patient", patient);
		
	}
}
