package com.bootcamp.ektha.rewardsprogram.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.bootcamp.ektha.rewardsprogram.dao.StoreDAOImpl;
import com.bootcamp.ektha.rewardsprogram.entity.Store;

/**
 * Testing Store Service Class
 * @author Boot Camp User 06
 *
 */
public class StoreServiceTest {
	StoreServiceImpl storeService;
	StoreDAOImpl mockStoreDAO;

	List<Store> testListOne;

	@Before
	public void setUp() throws Exception {
		storeService = new StoreServiceImpl();

		mockStoreDAO = mock(StoreDAOImpl.class);
		testListOne = new ArrayList<>();

		Store storeFirst = new Store();
		storeFirst.setStoreId("1001");
		storeFirst.setStoreName("CKHAWAII");
		storeFirst.setStoreStreet("xyz");
		storeFirst.setStoreSuite("abc");
		storeFirst.setStoreCity("BALTIMORE");

		Store storeSecond = new Store();
		storeSecond.setStoreId("1002");
		storeSecond.setStoreName("CK101");
		storeSecond.setStoreStreet("xyz");
		storeSecond.setStoreSuite("abc");
		storeSecond.setStoreCity("Kerug");

		testListOne.add(storeFirst);
		testListOne.add(storeSecond);

		storeService.setStoreDAO(mockStoreDAO);
		when(mockStoreDAO.getStoreList("1001")).thenReturn((ArrayList<Store>) testListOne);
	}

	@Test
	public void testGetStoreListByStateJSON() {
		String stateId = "1001";
		String expectedString = "[{\"1001\":\"CKHAWAII, xyz, abc, BALTIMORE\"}, {\"1002\":\"CK101, xyz, abc, Kerug\"} ]";
		assertEquals(expectedString, storeService.getStoreListByStateJSON(stateId));
	}


}
