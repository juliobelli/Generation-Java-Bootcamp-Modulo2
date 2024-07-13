package com.generation.lojagames.repository;

import java.util.List;

import com.generation.lojagames.model.Categoria;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
    List<Categoria> findAllByDescricaoContainingIgnoreCase(@Param("descricao") String descricao);
}
