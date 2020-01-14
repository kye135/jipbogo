package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.InquiryDAO;
import com.jipbogo.dto.InquiryDTO;


public interface InquiryService {

  void inquiryWriteAction(InquiryDTO dto) throws Exception;

  List<InquiryDTO> inquiry(int page) throws Exception;

}


@Service("inquiryService")
class InquiryServiceImpl implements InquiryService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "inquiryDAO")
  private InquiryDAO inquiryDAO;

  @Override
  public List<InquiryDTO> inquiry(int page) throws Exception {
    return inquiryDAO.inquiry(page);
  }
  
  @Override
  public void inquiryWriteAction(InquiryDTO dto) throws Exception {
    inquiryDAO.inquiryWriteAction(dto);
  }
}

