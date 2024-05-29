# 현재 working directory, staging area 만 상태 확인
git status

# git add : 모든 수정/추가사항 add
git add .

# git add 특정파일: 특정 파일 add
git add 특정파일(위치포함)

# local repository에 반영 및 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi모드에서 작성 : git commit 후 엔터

# add와 commit 동시에
git commit -am "add와 commit 동시에" 

# commit 이력 확인(local repository의 이력)
git log
# git log 간결하게
git log --oneline
# 전체 이력 조회
git log --all
# 로그를 그래프 형태로 조회
git log --graph

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌무시하고 강제 push // pull하지 않음
git push origin master --force

# 특정 commit ID로의 전환(과거로 가보자)
git checkout 커밋ID

# 다시 현재의 master(브랜치)의 commit으로 return //원래 있던 위치로 
git checkout master

# git pull은 원격의 변경사항을 local로 다운로드(working directory까지 변경)
git pull origin 브랜치명

# git 작업 취소
# working directory에서 수정사항만 취소
git checkout .
# working directory에서 추가파일 취소
git clean --fdx
# 수정취소 동시에
git checkour . | git clean --fdx
# staging area에서의 취소
git reset
# commit 이후의 취소
git reset head~1
git reset head^
# push 이후의 취소
git revert 커밋ID
