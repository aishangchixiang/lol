package com.test.controller;

import com.test.model.Hero;
import com.test.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import java.util.List;

@Controller
@RequestMapping(value = "/user",produces = "text/plain;charset=UTF-8")
public class HeroController {

    @Autowired
    private HeroService heroService;
//返回全部英雄信息以及数量
    @RequestMapping(value="/herolist",produces = "text/plain;charset=UTF-8")
    public String listHeroes(Model model){
        List<Hero> heroes = heroService.getList();
        model.addAttribute("list",heroes);
        return "herolist";
    }
    //插入英雄信息（两部分）
    //    to插入
    @RequestMapping(value="/toaddhero",produces = "text/plain;charset=UTF-8")
    public String toaddHero() {
        return "addhero";
    }
    //      插入
    @RequestMapping(value="/addhero",method=RequestMethod.POST)
    public String addHeroes(Hero hero){
        heroService.insertHero(hero);
        return "redirect:/user/herolist";
    }
    //    修改数据（两部分）
    //根据id查找数据再修改单条数据
    @RequestMapping(value="/toUpdateHero",produces = "text/plain;charset=UTF-8")
    public String toUpdatePaper(Model model, int id) {
        Hero hero=heroService.getHeroById(id);
        model.addAttribute("hero", hero);
        return "updateHero";
    }
    //修改数据后保存跳到首页列表
    @RequestMapping(value="/updateHero",method=RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String updateHero(Model model,Hero hero){
        heroService.updateHero(hero);
        return "redirect:herolist";
    }
    // 删除英雄数据
    @RequestMapping(value="/del",produces = "text/plain;charset=UTF-8")
    public String deleteHero(int id ){
        heroService.deleteHeroById(id);
        return  "redirect:herolist";
    }
}