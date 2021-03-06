package com.software.dao;


import com.software.entity.BedEntity;
import org.junit.Test;

import java.util.List;

/**
 * @author 李欣然
 *
 * */

public class BedDaoTest {
    BedDao bedDao=new BedDao();
    @Test
    public void testAdd(){
        BedEntity bedEntity = new BedEntity();

        bedEntity.setBedNumber(12024);
        bedEntity.setState(1);
        bedEntity.setRoomID(5);
        bedEntity.setRoomClean("2022/6/8");
        bedEntity.setPatientID(1);


        int count = bedDao.addWork(bedEntity);
        if(count >0){
            System.out.println("success");
        }else{
            System.out.println("failure");
        }
    }

    @Test
    public void testUpdate(){
        BedEntity bedEntity = new BedEntity();
        bedEntity.setID(4);
        bedEntity.setRoomID(2);
        bedEntity.setState(1);
        bedEntity.setState(1);
        bedEntity.setBedNumber(66666);
        bedEntity.setDelmark(1);
        bedEntity.setPatientID(1);

        int count=bedDao.updateWork(bedEntity);
        if(count >0){
            System.out.println("success");
        }else{
            System.out.println("failure");
        }
    }

    @Test
    public void testDelete(){
        BedEntity bedEntity = new BedEntity();
        bedEntity.setDelmark(0);
        bedEntity.setID(4);

        int result = bedDao.deleteWork(bedEntity);
        if(result >0){
            System.out.println("success");
        }else{
            System.out.println("failure");
        }
    }

    @Test
    public void testFindAllWork(){
        List<BedEntity> works = bedDao.findWork();
        for(BedEntity work:works){

            System.out.println(work.getID()+","+
                    work.getBedNumber()+","+
                    work.getState());
        }


    }
}
