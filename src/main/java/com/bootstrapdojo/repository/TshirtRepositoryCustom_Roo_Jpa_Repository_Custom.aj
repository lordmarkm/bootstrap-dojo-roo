// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bootstrapdojo.repository;

import com.bootstrapdojo.domain.Tshirt;
import com.bootstrapdojo.repository.TshirtRepositoryCustom;
import io.springlets.data.domain.GlobalSearch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect TshirtRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Tshirt> TshirtRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
}
