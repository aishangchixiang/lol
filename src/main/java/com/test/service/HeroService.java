package com.test.service;

import com.test.model.Hero;
import java.util.List;

public interface HeroService {
    List<Hero> getList();
    Hero getHeroById(int id);
    int insertHero(Hero hero);
    int updateHero(Hero hero);
    int deleteHeroById(int id);
    int getCount();
}