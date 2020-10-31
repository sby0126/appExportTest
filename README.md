# Introduction

# To-do list

![IMG](./docs/images/to-do-list.png)


# 주의 사항

- 파일 분할
    - css/common.css    -> 공통 속성
    - css/header.css    -> 헤더
    - css/contents.css  -> 본문 그리드
    - css/aside.css     -> 우측 로그인 
    - css/style.css     -> 이 파일은 로더 역할을 하오니 수정을 하지 마십시오.

- CSS 작성 규칙
    - CSS ```class``` 와 ```id``` 명은 소문자로 남겨주세요. 
    - CSS는 각 명사를 하이픈(-)으로 구분합니다.
    - 주석을 철저하게 작성해주시기 바랍니다.
    - 자바스크립트 변수는 ```카멜 표기법```을 사용해주시기 바랍니다.
    - 파일 작성 시 상단에 작성자 명을 반드시 추가해주시기 바랍니다.

- 깃허브 컨트리뷰터/커미터가 되는 법
    - 커밋 이전에 ```pull```하여 새로운 업데이트가 있는 지 확인해주시기 바랍니다.
    - 공통된 파일을 작업하는 경우, ```commit```과 ```push```는 4-6시간에 한 번씩 해주시기 바랍니다.
    - 소스 코드를 직접 ```push```하여 원격지의 소스 코드를 변경할 수 있는 권한을 가진 사람을 ```커미터```라고 부르고, 커미터의 리뷰를 거쳐 소스 코드에 기여를 한 사람을 ```컨트리뷰터```라고 합니다.
    - 커미터가 아니면 소스 코드 변경 권한이 원래 없습니다. 정석적인 방법은 우측 상단의 ```Fork``` 버튼을 누르는 것입니다. 이렇게 하면 자신의 저장소에 새롭게 포크된 나만의 저장소가 보이게 됩니다. 소스 코드를 푸쉬하게 되면 자신의 저장소에 있는 소스 코드만 변경됩니다.
    원격지, 메인 저장소에 소스 코드를 반영하려면 커미터의 리뷰가 필요합니다. 자신의 저장소(자신의 계정에 복제된 저장소)를 보면 녹색의 Pull Request 버튼이 보이게 됩니다. 이 버튼을 누르면 커미터들에게 PR 요청을 보낼 수 있습니다. 커미터들은 요청된 PR를 확인하고 메인 저장소에 병합시킬 수 있는 권한을 가집니다. 리뷰가 끝나면 코드가 메인 저장소에 병합(Merge)될 것입니다. 병합이 끝나면 다시 메인 저장소의 소스 코드를 pull하여 업데이트를 해줍니다.
    - 코드 리뷰(검토) 또는 협의가 필요할 경우, ```Issues``` 를 적극 활용해주세요.
    - 기능 단위로 파일을 분할하면 협업에 도움이 됩니다. 
    

# 소스 코드 기여 방법

- 커미터가 되어 직접 원격지의 소스 코드를 변경하는 방법 [코드 필요 없음]

    - 우선 소스 코드를 복제합니다.
            
        ```sh
            git clone https://github.com/biud436/project_one.git
            cd project_one
        ```
    
    - 소스 코드가 이미 복제되어있다면 해당 저장소 폴더의 파일 메뉴에서 ```파워셀```을 열고 다음 명령어를 입력합니다. 

        ```sh
            git pull
        ```

    - 소스 코드를 수정합니다. 그 후 add 명령을 실행합니다. 다음 명령은 수정된 모든 파일을 추가하는 와일드 카드 명령어입니다. 하나의 파일만 추가하고 싶을 떈, 파일명을 정확히 적어주셔야 합니다.

        ```sh
            git add .
        ```

    - commit 명령을 호출합니다.

        ```sh
            git commit -m "버그를 수정했습니다"
        ```

    - push 명령을 호출합니다 (2020년 10월부터 기본 브랜치 이름이 master에서 main으로 변경되었습니다)

        ```sh
            git push origin main
        ```

- 컨트리뷰터가 되어, 소스 코드 변경 요청을 하는 방법 [코드 리뷰 필요]

    - 컨트리뷰터가 되려면 먼저 원격 저장소를 Fork 해야 합니다. 우측 상단에 있는 Fork 버튼을 누르면 현재 저장소의 복제본인 Fork 저장소가 생성됩니다. 

    - Fork된 저장소를 복제합니다.

        ```sh
            git clone https://github.com/<자신의_아이디_기입>/project_one.git
            cd project_one
        ```

    - 소스 코드를 수정한 후, 해당 폴더에서 파워쉘을 열고 다음과 같이 커밋을 합니다.

        ```sh
            git add .
            git commit -m "버그를 수정했습니다"
        ```

    - Fork된 저장소의 소스 코드를 변경합니다.

        ```sh
            git push origin main
        ```

    - 깃허브 프로필로 이동하면 메인 장소의 복제본인 Fork 저장소가 보입니다. 변경된 소스 코드가 반영되었다는 걸 알 수 있습니다. 좌측에 보이는 Pull Request 버튼을 누르고 병합 요청을 합니다.

    - 메인 저장소의 커미터의 코드 리뷰를 거친 후, 승락이 떨어지면 메인 저장소에 자신의 소스 코드가 성공적으로 병합됩니다.

    - 축하합니다. 이제 이 프로젝트의 컨트리뷰터가 된 것입니다.

    - 소스 코드가 반영되었다면 아래 명령어를 호출하여 메인 저장소의 소스 코드를 받아옵니다.

        ```sh
            git pull
        ```