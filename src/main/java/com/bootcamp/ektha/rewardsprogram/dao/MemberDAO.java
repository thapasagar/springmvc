package com.bootcamp.ektha.rewardsprogram.dao;

import com.bootcamp.ektha.rewardsprogram.entity.Member;

/**
 * DAO class for the MEMBER TABLE
 * @author Boot Camp User 06
 *
 */
public interface MemberDAO  {
	
	public boolean registerMember(Member member) ;
	public boolean checkUser(String username);
	
}
