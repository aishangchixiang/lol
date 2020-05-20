package com.test.service.impl;

import com.test.dao.HeroDao;
import com.test.model.Hero;
import com.test.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroServiceImpl implements HeroService {

    @Autowired
    private HeroDao heroDao;


    @Override
    public List<Hero> getList() {
        return heroDao.getList();
    }

    @Override
    public Hero getHeroById(int id) {
        return heroDao.getHeroById(id);
    }

    @Override
    public int insertHero(Hero hero) {
        return heroDao.insertHero(hero);
    }

    @Override
    public int updateHero(Hero hero) {
        return heroDao.updateById(hero);
    }

    @Override
    public int deleteHeroById(int id) {
        return heroDao.deleteHeroById(id);
    }

    @Override
    public int getCount() {
        return heroDao.getCount();
    }

}