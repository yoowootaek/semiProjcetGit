package com.javaclass.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.javaclass.domain.AccountVO;

public interface AccountDAO {

	// 회원가입 기능 구현
	public void insertAccount(AccountVO vo);

	public AccountVO loginCheck(AccountVO vo);

	// 관리자 로그인
	public AccountVO adminLogin(AccountVO vo);

	public void updateAccount(AccountVO vo);

	public AccountVO myHomePageView(String account_Id);

	public AccountVO myHomePageUpdate(String account_Id);

	public List<AccountVO> accountList(AccountVO vo);

	public AccountVO idCheck(AccountVO vo);

	public boolean checkPassword(String account_Id, String account_Password);

	public void deleteAccount(AccountVO vo);
	
	//아이디 찾기
	public String idConfirm(@Param("account_Name")String account_Name, @Param("account_Tel")String account_Tel);
	
	//비밀번호 찾기
	public String userFindPw(AccountVO vo) throws Exception;

	

}
