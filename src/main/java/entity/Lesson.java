package entity;
// Generated Feb 13, 2020, 1:16:39 AM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Lesson generated by hbm2java
 */
@Entity (name = "lesson")
@Table(name = "lesson", catalog = "jwat")
public class Lesson implements java.io.Serializable {

	private int id;
	private Chapter chapter;
	private String name;
	private Integer time;

	public Lesson() {
	}

	public Lesson(int id) {
		this.id = id;
	}

	public Lesson(int id, Chapter chapter, String name, Integer time) {
		this.id = id;
		this.chapter = chapter;
		this.name = name;
		this.time = time;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_chapter")
	public Chapter getChapter() {
		return this.chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "time")
	public Integer getTime() {
		return this.time;
	}

	public void setTime(Integer time) {
		this.time = time;
	}

}