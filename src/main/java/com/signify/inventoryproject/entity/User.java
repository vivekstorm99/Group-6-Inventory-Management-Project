package com.signify.inventoryproject.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.type.TrueFalseConverter;
import org.hibernate.validator.constraints.Length;

import java.time.Instant;

@Entity
@Data
@AllArgsConstructor //automatically generates getters and setters
@NoArgsConstructor //""
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Length(min = 0, max = 30)
	private String firstName;
	@Length(min = 0, max = 30)
	private String lastName;
	@Column(unique=true)
	@Length(min = 0, max = 30)
	private String emailId;
	@Length(min = 6, max = 128)
	private String password;
	@Length(min = 0, max = 10)
	private String phoneNumber;
	@Enumerated(EnumType.STRING)
	private Role role;
	@Length(min = 0, max = 255)
	private String profilePicture;
	@Convert(converter = TrueFalseConverter.class)
	private Boolean isActive = false;
	@CreationTimestamp
	private Instant createdAt;
	@UpdateTimestamp
	private Instant modifiedAt;
}


