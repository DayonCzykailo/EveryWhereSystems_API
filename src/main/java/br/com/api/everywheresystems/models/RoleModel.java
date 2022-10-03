package br.com.api.everywheresystems.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.security.core.GrantedAuthority;

import br.com.api.everywheresystems.models.enums.Role;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Entity(name = "tb_role")
@Getter
@Setter
@NoArgsConstructor // construtor vazio
@ToString
public class RoleModel implements GrantedAuthority {

    @Id
    @GenericGenerator(name = "generator", strategy = "uuid2")
    @GeneratedValue(generator = "generator")
    private String id;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, unique = true)
    private Role role;

    public RoleModel(Role role) {
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return this.role.toString();
    }

}
