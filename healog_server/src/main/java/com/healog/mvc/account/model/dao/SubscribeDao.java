package com.healog.mvc.account.model.dao;

import com.healog.mvc.account.model.dto.Gym;
import com.healog.mvc.account.model.dto.Trainer;

public interface SubscribeDao {

	int insertSubscribe(String trainerId, String userId, int subscribeMonth);

	Trainer selectTrainerByUserId(String userid);

	Gym selectGymById();

	int updateValid(String id);

}