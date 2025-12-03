# 현재 working directory, staging area 상태 확인 
git status

# .은 모든 수정/추가 사항 add 
git add .
# 특정파일만 add할 경우 (경로까지 포함)
git add test_folder/test1.txt
# commit을 통해 메시지타이틀과 메세지내용을 커밋이력으로 생성
git commit -m "메세지제목" -m "메세지내용"
# git commit만 이볅하고 엔터시 vi 모드 -> 첫줄:타이틀, 두번째줄부터 내용 -> :wq 저장후 종료시 커밋ID생성
git commit

# commit 이력 확인
git log
git log --oneline
# head하단의 로그만 보이는것이 아니라, 모든 commit이력을 조회
# head : 현재 사용(checkout)하고 있는 commitID를 의미 
git log --all 
# 원격저장소로 업로드 
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준의 코드를 원격에 덮어쓰기(절대 사용하지 말것)
git push origin 브랜치명 --force
# 특정 commit ID로의 전환
git checkout 커밋ID
# 특전 branch로의 전환
git checkout 브랜치명
# 가장 최신의 커밋을 취소
git reset head~1
git reset head^
# 이미 push commit사항을 되돌리는 새로운 commit생성(기존 commit 지워지지않음)
git revert 커밋ID

# 작업중인사항을 임시저장
git stash
# 임시저장한 작업사항을 다시 적용
git stash pop
# 저장한 작업목록 조회
git stash list
# 저장한목록 전체삭제
git stash clear