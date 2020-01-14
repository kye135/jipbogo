package com.jipbogo.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jipbogo.dto.InquiryDTO;

@Repository("inquiryDAO")
public class InquiryDAO extends AbstractDAO {
  
  @SuppressWarnings("unchecked")
  public List<InquiryDTO> inquiry(int page) {
    return selectList("inquiry.inquiry", page);
  }

  public void inquiryWriteAction(InquiryDTO dto) {
    insert("inquiry.inquiryWriteAction", dto);
  }
}
