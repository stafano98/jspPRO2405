package ch08;

public class MyMember {
	private String id;
	private String tel_or_email;
	private String pwd;
	private String pwdck;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTel_or_email() {
		return tel_or_email;
	}
	public void setTel_or_email(String tel_or_email) {
		this.tel_or_email = tel_or_email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwdck() {
		return pwdck;
	}
	public void setPwdck(String pwdck) {
		this.pwdck = pwdck;
	}
	@Override
	public String toString() {
		return "MyMember [id=" + id + ", tel_or_email=" + tel_or_email + ", pwd=" + pwd + ", pwdck=" + pwdck + "]";
	}
	
	
}
