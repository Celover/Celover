package com.fan.celover.domain.mypage.dto;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Data;

@Data
public class UpdateUserReq {

	/*
	 * @Null // (o):Null 
	 * @NotNull // (o) : "", " ", (X) : Null
	 * @NotEmpty // (o) : " " (X) : Null, ""
	 * @NotBlank // (X) : null, "", " "
	 * @Email // 이메일 형식 검사, "" 가능
	 * @Pattern(regexp = ) // 정규식 검사
	 * @Size(min=, max=) // 길이 제한
	 * @Max(value = )
	 * @Min(value = )
	 * @Positive // 양수만
	 * @PositiveOrZero // 양수와 0만
	 * @Negative // 음수만
	 * @NegativeOrZero // 음수와 0만
	 * Reference : https://kiki-100.tistory.com/238
	 */

	
	@Pattern(regexp="^[a-zA-Z0-9_]{3,16}$", message = "3~16자의 영문 대소문자, 숫자, 밑줄(_)만 사용가능합니다.")
	private String nickname;

	@Pattern(regexp="^\\\\d{2,3}-\\\\d{3,4}-\\\\d{4}$", message="유효한 전화번호 형식이 아닙니다. ex)010-XXXX-XXXX")
	private String phone;

	@Pattern(regexp="^[mfn]$", message="유효한 성별이 아닙니다.")
	private String gender;

	@Pattern(regexp="^\\\\d{4}-\\\\d{2}-\\\\d{2}$", message="유효한 날짜 형식으로 입력하세요. ex) 1999-02-10")
	private String birth;

	@NotBlank(message = "이메일은 필수 입력사항입니다.")
	@Email(message = "올바른 이메일 형식이 아닙니다.")
	private String email;

}
