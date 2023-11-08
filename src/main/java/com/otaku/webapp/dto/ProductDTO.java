package com.otaku.webapp.dto;

public class ProductDTO {

    private Long id;
    private String name;

    private String description;
    private Double price;
    private Integer category_id;
    private Integer color_id;
    private Integer size_id;
    private Integer qty_id;

    public ProductDTO() {
    }

    public ProductDTO(Long id, String name, String description, Double price, Integer qty_id) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.qty_id = qty_id;
    }

    public ProductDTO(Long id, String name, String description, Double price, Integer category_id, Integer color_id, Integer size_id) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.category_id = category_id;
        this.color_id = color_id;
        this.size_id = size_id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public Integer getColor_id() {
        return color_id;
    }

    public void setColor_id(Integer color_id) {
        this.color_id = color_id;
    }

    public Integer getSize_id() {
        return size_id;
    }

    public void setSize_id(Integer size_id) {
        this.size_id = size_id;
    }

    public Integer getQty_id() {
        return qty_id;
    }

    public void setQty_id(Integer qty_id) {
        this.qty_id = qty_id;
    }
}
