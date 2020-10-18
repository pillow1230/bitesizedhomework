// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pillow.bitesizedhomework.web.thymeleaf;

import com.pillow.bitesizedhomework.model.Homework;
import com.pillow.bitesizedhomework.service.api.HomeworkService;
import com.pillow.bitesizedhomework.web.thymeleaf.HomeworksCollectionThymeleafController;
import com.pillow.bitesizedhomework.web.thymeleaf.HomeworksItemThymeleafController;
import com.pillow.bitesizedhomework.web.thymeleaf.HomeworksItemThymeleafLinkFactory;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect HomeworksItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: HomeworksItemThymeleafController: @Controller;
    
    declare @type: HomeworksItemThymeleafController: @RequestMapping(value = "/homeworks/{homework}", name = "HomeworksItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private HomeworkService HomeworksItemThymeleafController.homeworkService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource HomeworksItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<HomeworksItemThymeleafController> HomeworksItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<HomeworksCollectionThymeleafController> HomeworksItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Homework> HomeworksItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Homework>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param homeworkService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public HomeworksItemThymeleafController.new(HomeworkService homeworkService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setHomeworkService(homeworkService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(HomeworksItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(HomeworksCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return HomeworkService
     */
    public HomeworkService HomeworksItemThymeleafController.getHomeworkService() {
        return homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homeworkService
     */
    public void HomeworksItemThymeleafController.setHomeworkService(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource HomeworksItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void HomeworksItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<HomeworksItemThymeleafController> HomeworksItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void HomeworksItemThymeleafController.setItemLink(MethodLinkBuilderFactory<HomeworksItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<HomeworksCollectionThymeleafController> HomeworksItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void HomeworksItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<HomeworksCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Homework
     */
    @ModelAttribute
    public Homework HomeworksItemThymeleafController.getHomework(@PathVariable("homework") Long id, Locale locale, HttpMethod method) {
        Homework homework = null;
        if (HttpMethod.PUT.equals(method)) {
            homework = homeworkService.findOneForUpdate(id);
        } else {
            homework = homeworkService.findOne(id);
        }
        
        if (homework == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Homework", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return homework;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView HomeworksItemThymeleafController.show(@ModelAttribute Homework homework, Model model) {
        model.addAttribute("homework", homework);
        return new ModelAndView("homeworks/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView HomeworksItemThymeleafController.showInline(@ModelAttribute Homework homework, Model model) {
        model.addAttribute("homework", homework);
        return new ModelAndView("homeworks/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void HomeworksItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void HomeworksItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Homework> HomeworksItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String HomeworksItemThymeleafController.getModelName() {
        return "homework";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String HomeworksItemThymeleafController.getEditViewPath() {
        return "homeworks/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer HomeworksItemThymeleafController.getLastVersion(Homework record) {
        return getHomeworkService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView HomeworksItemThymeleafController.populateAndGetFormView(Homework entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("homework")
    public void HomeworksItemThymeleafController.initHomeworkBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Homework.class, getHomeworkService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView HomeworksItemThymeleafController.editForm(@ModelAttribute Homework homework, Model model) {
        populateForm(model);
        
        model.addAttribute("homework", homework);
        return new ModelAndView("homeworks/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView HomeworksItemThymeleafController.update(@Valid @ModelAttribute Homework homework, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Homework savedHomework = getConcurrencyTemplate().execute(homework, model, new ConcurrencyCallback<Homework>() {
            @Override
            public Homework doInConcurrency(Homework homework) throws Exception {
                return getHomeworkService().save(homework);
            }
        });
        UriComponents showURI = getItemLink().to(HomeworksItemThymeleafLinkFactory.SHOW).with("homework", savedHomework.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param homework
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> HomeworksItemThymeleafController.delete(@ModelAttribute Homework homework) {
        getHomeworkService().delete(homework);
        return ResponseEntity.ok().build();
    }
    
}