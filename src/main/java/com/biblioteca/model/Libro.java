package com.biblioteca.model;

import jakarta.persistence.*;

@Entity
public class Libro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;

    private String autor;

    private boolean prestado;

    public Libro() {
    }

    public Libro(String titulo, String autor) {
        this.titulo = titulo;
        this.autor = autor;
        this.prestado = false;
    }

    // --- GETTERS ---

    public Long getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public boolean isPrestado() {
        return prestado;
    }

    // --- SETTERS ---

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setPrestado(boolean prestado) {
        this.prestado = prestado;
    }

    public String prestar() {

        final result_negative = "No se puede prestar ahora"

        if (titulo == null) {
            return result_negative;
        }

        if (titulo.isEmpty()) {
            return result_negative;
        }

        if (autor == null) {
            return result_negative;
        }

        if (autor.isEmpty()) {
            return result_negative;
        }

        if (prestado) {
            return "El libro ya está prestado";
        }

        prestado = true;

        return "Libro prestado correctamente";
    }

}

