package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BeverageServicelmpl implements BeverageService {
    @Autowired
    BeverageDAO beverageDAO;

    public int insertBeverage(BeverageVO vo) {
        return beverageDAO.insertBeverage(vo);
    }

    public int deleteBeverage(int id) {return beverageDAO.deleteBeverage(id);}

    public int updateBeverage(BeverageVO vo) {
        return beverageDAO.updateBeverage(vo);
    }

    public BeverageVO getBeverage(int seq) {
        return beverageDAO.getBeverage(seq);
    }

    public List<BeverageVO> getBeverageList(){
        return beverageDAO.getBeverageList();
    }
}
