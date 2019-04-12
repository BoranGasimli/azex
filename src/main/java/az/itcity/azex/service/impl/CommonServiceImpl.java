package az.itcity.azex.service.impl;

import az.itcity.azex.repository.CommonRepository;
import az.itcity.azex.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService {

    @Autowired
    private CommonRepository commonRepository;

    @Override
    public boolean checkEmail(String email) {
        return commonRepository.checkEmail(email);
    }
}
