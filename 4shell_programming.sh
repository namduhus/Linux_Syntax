# 쉘 프로그래밍을 하기 위해서는 반드시 확장자 .sh로 파일 생성
touch myscript.sh
nano myscript.sh
chmod 764 myscript.sh

# 쉘 스크립트 실행
./myscript.sh

# if문
# if문의 []의 양 사이에는 반드시 띄어쓰기를 해야하고 , ]가 끝나는 부분에는 띄어쓰기 없이 ;를 붙인다.
# 숫자 비교할때는 -lt 또는 -gt를 사용
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# if문을 활용하여 파일(-f), 디렉토리(-d) 존재여부 확인가능
# 변수의 = 양사이에는 공백이 없어야 함에 유의
# 변수를 사용할때 ""와 $를 사용하는 것을 권장
file_name="test.txt"
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file not exists"
fi

# for문: 반복문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 변수활용
count=0
for a in {1..100}
do
    let count+=1
done
echo "count value is $count"

# for문과 파일/디렉토리 등 목록조회
for a in *
do
    echo "$a"
done

# for문, if문, 변수, 변수증가 등의 문법을 활용하여 현재 폴더에 파일/폴더/그외의 파일의 개수 출력
file_count=0
dir_count=0
other_count=0

for a in *
do
    if [ -f "$a" ]; then
        let file_count+=1
    elif [ -d "$a" ]; then
        let dir_count+=1
    else
        let other_count+=1
    fi
done

echo "file_count is $file_count"
echo "dir_count is $dir_count"
echo "other_count is $other_count"