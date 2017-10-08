package com.marinadamnjanovic.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name="ads")
public class AdModel {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    @NotEmpty
    public String title;

    @NotEmpty
    public String description;

    @NotEmpty
    public String deadline;

    @NotEmpty
    public String category;

    @NotEmpty
    public String city;

    @NotEmpty
    public String company;

    public AdModel() {

    }

    public AdModel(int id, String title, String description, String deadline, String category, String city,
                   String company) {
        this.title = title;
        this.description = description;
        this.deadline = deadline;
        this.category = category;
        this.city = city;
        this.company = company;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    @Override
    public String toString() {
        return "AdModel [title=" + title + ", description=" + description + ", deadline=" + deadline + ", category="
                + category + ", city=" + city + ", company=" + company + "]";
    }
}
