package com.test.dao;
import com.test.model.Hero;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface HeroDao {

    List<Hero> getList();
    Hero getHeroById(int id);
    int insertHero(Hero hero);
    int updateById(Hero hero);
    int deleteHeroById(int id);
    int getCount();

}