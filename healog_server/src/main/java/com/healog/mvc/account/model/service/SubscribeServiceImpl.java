package com.healog.mvc.account.model.service;

import org.springframework.stereotype.Service;

import com.healog.mvc.account.model.dao.SubscribeDao;
import com.healog.mvc.account.model.dto.Gym;
import com.healog.mvc.account.model.dto.Trainer;

@Service
public class SubscribeServiceImpl implements SubscribeService {
	
	private SubscribeDao subscribeDao;
	public SubscribeServiceImpl(SubscribeDao subscribeDao) {
		this.subscribeDao = subscribeDao;
	}

	@Override
	public boolean subscribe(String trainerId, String userId, int subscribeMonth) {
		int result = subscribeDao.insertSubscribe(trainerId, userId, subscribeMonth);
		if(result>0) return true;
		return false;
	}

	@Override
	public Trainer getTrainerInfo(String userid) {
		Trainer trainer = subscribeDao.selectTrainerByUserId(userid);
		if(trainer!=null) {
			trainer.setPassword(null);
			trainer.setCreatedAtDatetime(null);
			trainer.setSalt(null);
		}
		return trainer;
	}

	@Override
	public Gym getGymById(int id) {
		return subscribeDao.selectGymById();
	}

	@Override
	public int checkValid(String id) {
		return subscribeDao.updateValid(id);
	}

}