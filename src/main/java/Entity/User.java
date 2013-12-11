package Entity;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.Entity;


@Entity
@Table(name="user")
public class User {

	@OneToMany(mappedBy="userId")
	private List<Comment> comments;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nickname;
	private String psw;
	private String firstname;
	private String lastname;
	private Date birthday;
	private String address;
	private String sex;
	private String mail;
	private String city;
	private String country;
	private String zip;
	private String phonenum;
	boolean valid;
	
	
	
	public User(){
		
	}
	User(int id, String name, String password)
	{
		this.id = id;
		this.nickname = name;
		this.psw = password;
	}
	
	public int getId()
	{
		return this.id;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public String getNickname()
	{
		return this.nickname;
	}
	
	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}
	
	public String getPsw()
	{
		return this.psw;
	}
	
	public void setPsw(String psw)
	{
		this.psw = psw;
	}
	
	public String getFirstname()
	{
		return this.firstname;
	}
	
	public void setFirstname(String firstName)
	{
		this.firstname = firstName;
	}
	
	public String getLastname()
	{
		return this.lastname;
	}
	
	public void setLastName(String lastName)
	{
		this.lastname = lastName;
	}
	
	public Date getBirthday()
	{
		return this.birthday;
	}
	
	public void setBirthday(Date birthday2)
	{
		this.birthday = birthday2;
	}
	
	public String getMail(){
		return this.mail;
	}
	
	public void setMail(String mail){
		this.mail=mail;
	}
	
	public String getAddress()
	{
		return this.address;
	}
	
	public void setAddress(String address)
	{
		this.address = address;
	}
	
	public String getSex()
	{
		return this.sex;
	}
	
	public void setSex(String sex){
		this.sex=sex;
	}
	
	public String getCity()
	{
		return this.city;
	}
	
	public void setCity(String city)
	{
		 this.city = city;
	}
	
	public String getCountry()
	{
		return this.country;
	}
	
	public void setCountry(String country)
	{
		this.country = country;
	}
	
	public String getZip()
	{
		return this.zip;
	}
	
	public void setZip(String zip)
	{
		this.zip = zip;
	}
	
	public String getPhonenum()
	{
		return this.phonenum;
	}
	
	public void setPhonenum(String phonenum)
	{
		this.phonenum = phonenum;
	}
	
	@Override
	public int hashCode(){
		return Objects.hash(this.id,this.nickname,this.psw) ;
	}
	
	@Override
	public boolean equals(Object obj)
	{
		if(obj == null)
		{
			return false;
		}
		
		if(getClass() != obj.getClass())
		{
			return false;
		}
		final User other = (User)obj;
		return Objects.equals(this.id, other.id)
				&& Objects.equals(this.nickname, other.nickname)
				&& Objects.equals(this.psw, other.psw); 
						
	}
	public boolean isValid() {
	       return valid;
		}

	    public void setValid(boolean newValid) {
	       valid = newValid;
		}	
}
