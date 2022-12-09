package com.example.board;

import java.util.List;

public interface BeverageService {
    public int insertBeverage(BeverageVO vo);
    public int deleteBeverage(int id);
    public int updateBeverage(BeverageVO vo);
    public BeverageVO getBeverage(int seq);
    public List<BeverageVO> getBeverageList();

}
