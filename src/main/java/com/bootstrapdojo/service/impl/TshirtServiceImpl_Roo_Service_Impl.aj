// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bootstrapdojo.service.impl;

import com.bootstrapdojo.domain.Tshirt;
import com.bootstrapdojo.repository.TshirtRepository;
import com.bootstrapdojo.service.api.TshirtService;
import com.bootstrapdojo.service.impl.TshirtServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TshirtServiceImpl_Roo_Service_Impl {
    
    declare parents: TshirtServiceImpl implements TshirtService;
    
    declare @type: TshirtServiceImpl: @Service;
    
    declare @type: TshirtServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private TshirtRepository TshirtServiceImpl.tshirtRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param tshirtRepository
     */
    @Autowired
    public TshirtServiceImpl.new(TshirtRepository tshirtRepository) {
        this.tshirtRepository = tshirtRepository;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param tshirt
     */
    @Transactional
    public void TshirtServiceImpl.delete(Tshirt tshirt) {
        tshirtRepository.delete(tshirt);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Tshirt> TshirtServiceImpl.save(Iterable<Tshirt> entities) {
        return tshirtRepository.save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void TshirtServiceImpl.delete(Iterable<Long> ids) {
        List<Tshirt> toDelete = tshirtRepository.findAll(ids);
        tshirtRepository.deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Tshirt
     */
    @Transactional
    public Tshirt TshirtServiceImpl.save(Tshirt entity) {
        return tshirtRepository.save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Tshirt
     */
    public Tshirt TshirtServiceImpl.findOne(Long id) {
        return tshirtRepository.findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Tshirt> TshirtServiceImpl.findAll(Iterable<Long> ids) {
        return tshirtRepository.findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Tshirt> TshirtServiceImpl.findAll() {
        return tshirtRepository.findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long TshirtServiceImpl.count() {
        return tshirtRepository.count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Tshirt> TshirtServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return tshirtRepository.findAll(globalSearch, pageable);
    }
    
}
