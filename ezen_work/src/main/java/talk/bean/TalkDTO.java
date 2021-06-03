package talk.bean;

public class TalkDTO {
	private int talk_seq;        
    private String id;
    private String talk_subject;   
    private String talk_date;   
    private int talk_reply_count;
    
	public int getTalk_seq() {
		return talk_seq;
	}
	public void setTalk_seq(int talk_seq) {
		this.talk_seq = talk_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTalk_subject() {
		return talk_subject;
	}
	public void setTalk_subject(String talk_subject) {
		this.talk_subject = talk_subject;
	}
	public String getTalk_date() {
		return talk_date;
	}
	public void setTalk_date(String talk_date) {
		this.talk_date = talk_date;
	}
	public int getTalk_reply_count() {
		return talk_reply_count;
	}
	public void setTalk_reply_count(int talk_reply_count) {
		this.talk_reply_count = talk_reply_count;
	}
    
	
    
    
    
}
