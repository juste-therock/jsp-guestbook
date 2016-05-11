/*
 * Copyright 2012-2015 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package sample.tomcat.jsp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@RestController
final class MessageController extends WebMvcConfigurerAdapter {
	/*
	 * @Override public void addViewControllers(ViewControllerRegistry registry)
	 * { registry.addViewController(" /").setViewName("home"); }
	 */
	private final MessageService messageService;
	@Autowired
	public MessageController(MessageService messageService) {
        this.messageService = messageService;
    }
	public static final int DEFAULT_PAGE_SIZE = 10;
	static final Logger logger = LoggerFactory.getLogger(MessageController.class);

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	@ModelAttribute
	public String HomeSweetHome(@ModelAttribute("research") Research research) {
		return "home";
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	@ModelAttribute
	public String showForm(@ModelAttribute("message") Message message, Research research, HttpServletRequest request) {
		return "showForm";
	}

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	@ModelAttribute
	public String create(@Valid @ModelAttribute("message") Message message, BindingResult bindingResult, Model model,
			Research research, HttpServletRequest request) {
		if (bindingResult.hasErrors()) {
			logger.info("Validation errors:" + bindingResult.getAllErrors());
			return "showForm";
		}
		try {
			messageService.save(message);
		} catch (Exception e) {
			System.out.println("Failed to send message ....:" + e.getMessage());
		}
		model.addAttribute(message);
		return "result";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam(required = false) Integer page,
			@RequestParam(required = false) Integer maxItems, @ModelAttribute("research") Research research) {
		ModelAndView modelAndView = new ModelAndView("list");
		List<Message> messageList = messageService.findAll();
		PagedListHolder<Message> pagedListHolder = new PagedListHolder<>(messageList);
		modelAndView.addObject("maxItems", pagedListHolder.getPageSize());
		modelAndView.addObject("maxPages", pagedListHolder.getPageCount());
		if (maxItems == null || maxItems < 1 || maxItems > pagedListHolder.getPageSize()) {
			pagedListHolder.setPageSize(DEFAULT_PAGE_SIZE);
		} else {
			pagedListHolder.setPageSize(maxItems);
		}
		if (page == null || page < 1 || page > pagedListHolder.getPageCount())
			page = 1;
		modelAndView.addObject("page", page);
		if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(0);
			modelAndView.addObject("messageList", pagedListHolder.getPageList());
		} else if (page <= pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(page - 1);
			modelAndView.addObject("messageList", pagedListHolder.getPageList());
		}

		return modelAndView;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView showSearch(HttpServletRequest request,
			@RequestParam(value = "name", required = true) String name, @RequestParam(required = false) Integer page,
			@RequestParam(required = false) Integer maxItems, @ModelAttribute("research") Research research) {
		ModelAndView modelAndView = new ModelAndView("search");
		name = request.getParameter("name");
		List<Message> messageSearch = messageService.findByFirstNameContainsOrLastNameContainsAllIgnoreCase(name, name);
		PagedListHolder<Message> pagedListHolder = new PagedListHolder<>(messageSearch);
		// pagedListHolder.setPageSize(maxItems);
		modelAndView.addObject("maxItems", pagedListHolder.getPageSize());
		modelAndView.addObject("maxPages", pagedListHolder.getPageCount());
		if (maxItems == null || maxItems < 1 || maxItems > pagedListHolder.getPageSize()) {
			pagedListHolder.setPageSize(DEFAULT_PAGE_SIZE);
		} else {
			pagedListHolder.setPageSize(maxItems);
		}
				
		if (page == null || page < 1 || page > pagedListHolder.getPageCount())
			page = 1;
		modelAndView.addObject("page", page);
		if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(0);
			modelAndView.addObject("messageSearch", pagedListHolder.getPageList());
		} else if (page <= pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(page - 1);
			modelAndView.addObject("messageSearch", pagedListHolder.getPageList());
		}

		return modelAndView;
	}

}
