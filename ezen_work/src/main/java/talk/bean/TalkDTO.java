package talk.bean;

public class TalkDTO {
	private int talk_seq;        
    private String id;
    private String talk_subject;   
    private String talk_date;   
    private int talk_good_count;
    private int talk_bad_count;
    
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
	public int getTalk_good_count() {
		return talk_good_count;
	}
	public void setTalk_good_count(int talk_good_count) {
		this.talk_good_count = talk_good_count;
	}
	public int getTalk_bad_count() {
		return talk_bad_count;
	}
	public void setTalk_bad_count(int talk_bad_count) {
		this.talk_bad_count = talk_bad_count;
	}    
    
}
