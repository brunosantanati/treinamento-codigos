package com.capgemini.casamento.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capgemini.casamento.model.Convidado;

public interface ConvidadoRepository extends JpaRepository<Convidado, Long> {

}
