// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bootstrapdojo.web;

import com.bootstrapdojo.domain.Tshirt;
import com.bootstrapdojo.service.api.TshirtService;
import com.bootstrapdojo.web.TshirtsItemThymeleafController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect TshirtsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: TshirtsItemThymeleafController: @Controller;
    
    declare @type: TshirtsItemThymeleafController: @RequestMapping(value = "/tshirts/{tshirt}", name = "TshirtsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public MessageSource TshirtsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param tshirtService
     * @param messageSource
     */
    @Autowired
    public TshirtsItemThymeleafController.new(TshirtService tshirtService, MessageSource messageSource) {
        this.tshirtService = tshirtService;
        this.messageSource = messageSource;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Tshirt
     */
    @ModelAttribute
    public Tshirt TshirtsItemThymeleafController.getTshirt(@PathVariable("tshirt") Long id) {
        Tshirt tshirt = tshirtService.findOne(id);
        if (tshirt == null) {
            throw new NotFoundException(String.format("Tshirt with identifier '%s' not found",id));
        }
        return tshirt;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView TshirtsItemThymeleafController.show(@ModelAttribute Tshirt tshirt, Model model) {
        return new ModelAndView("tshirts/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     * @return UriComponents
     */
    public static UriComponents TshirtsItemThymeleafController.showURI(Tshirt tshirt) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TshirtsItemThymeleafController.class).show(tshirt, null))
            .buildAndExpand(tshirt.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("tshirt")
    public void TshirtsItemThymeleafController.initTshirtBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TshirtsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TshirtsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView TshirtsItemThymeleafController.editForm(@ModelAttribute Tshirt tshirt, Model model) {
        populateForm(model);
        
        return new ModelAndView("tshirts/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView TshirtsItemThymeleafController.update(@Valid @ModelAttribute Tshirt tshirt, BindingResult result, Model model) {
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("tshirts/edit");
        }
        Tshirt savedTshirt = tshirtService.save(tshirt);
        UriComponents showURI = TshirtsItemThymeleafController.showURI(savedTshirt);
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> TshirtsItemThymeleafController.delete(@ModelAttribute Tshirt tshirt) {
        tshirtService.delete(tshirt);
        return ResponseEntity.ok().build();
    }
    
}
