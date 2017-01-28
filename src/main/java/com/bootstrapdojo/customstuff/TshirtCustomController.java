package com.bootstrapdojo.customstuff;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bootstrapdojo.domain.Tshirt;
import com.bootstrapdojo.service.api.TshirtService;

@RestController
@RequestMapping("/api/tshirt/custom")
public class TshirtCustomController {

	@Autowired
	private TshirtService tshirtService;

	@RequestMapping(value = "/find-one", method = RequestMethod.GET)
	public ResponseEntity<Tshirt> findOne(@RequestParam Long id) {
		return new ResponseEntity<>(tshirtService.findOne(id), HttpStatus.OK);
	}

}
