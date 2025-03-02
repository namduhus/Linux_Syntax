# 사용자 추가
sudo useradd namduhus2

# 비밀번호 지정
passwd namduhus2

# 사용자 변경
# sudo 키워드는 현재 사용자의 비밀번호 입력
su - namduhus2

# chmode는 권한 수정 명령어 : r(4), w(2), x(1)
chmod 644 파일명 
chmod u+x 파일명 : 소유자에게 실행 권한 추가
chmod u-w 파일명 : 소유자에게 쓰기 권한 제거
chmod g+x 파일명 : 그룹의 실행 권한 추가
chmod o+w 파일명 : 다른 사용자의 쓰기 권한 추가

# 소유자, 그룹변경
chown 소유자: 소유그룹 파일명