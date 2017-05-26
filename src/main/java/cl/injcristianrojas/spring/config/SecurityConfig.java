package cl.injcristianrojas.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("jperez").password("123").roles("USER");
		auth.inMemoryAuthentication().withUser("pdelospalotes").password("abc").roles("USER");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.headers().cacheControl().frameOptions().contentTypeOptions(); // X-XSS-Protection disabled
	}
}