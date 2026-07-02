package com.arthur.ecommerce_api.repository;

import com.arthur.ecommerce_api.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    // Pronto! Agora você tem métodos como .save(), .findAll(), .deleteById() automaticamente.
}
