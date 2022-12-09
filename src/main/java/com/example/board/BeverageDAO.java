package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BeverageDAO {
    public SqlSession getSqlSession() {
        return sqlSession;
    }
    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Autowired
    SqlSession sqlSession;

    public int insertBeverage(BeverageVO vo){
        int result = sqlSession.insert("Beverage.insertBeverage", vo);
        return result;
    }

    public int updateBeverage(BeverageVO vo){
        int result = sqlSession.update("Beverage.updateBeverage", vo);
        return result;
    }
    public int deleteBeverage(Integer seq){
        int result = sqlSession.delete("Beverage.deleteBeverage", seq);
        return result;
    }
    public BeverageVO getBeverage(int seq) {
        BeverageVO one = sqlSession.selectOne("Beverage.getBeverage", seq);
        return one;
    }

    public List<BeverageVO> getBeverageList() {
        List<BeverageVO> list = sqlSession.selectList("Beverage.getBeverageList");
        return list;
    }


}
