AppWorks School iOS Class Week1
-
### Assignment 1: Git & GitHub
#### 1. GitHub :
	Repository_Name : AWShw_Liam 
 	Link : https://github.com/smile176223/AWShw_Liam
#### 2. Ans:
 * ##### git status	
	查詢該目錄當前的狀態。		
	Case1 : 在這目錄中當前沒有可以提交的東西。	
	```
	% git status
	```

		On branch main
		Your branch is up to date with 'origin/main'.
		Lnothing to commit, working tree clean
	Case2 : 在這目錄中有一個.gitignore檔案尚未被提交給儲存庫，也尚未儲存至暫存區。	
	```
	% git status    
	```
 	
 		On branch main
		Your branch is up to date with 'origin/main'.
		Untracked files:
  		(use "git add <file>..." to include in what will be committed)
			.gitignore
		nothing added to commit but untracked files present (use "git add" to track)
	Case3 : 在這目錄中有新檔案在暫存區，但尚未被提交給儲存庫。	
	```
	% git status    
	```
	
		On branch main
		Your branch is up to date with 'origin/main'.
		Changes to be committed:
 		 (use "git restore --staged <file>..." to unstage) 
 		 	new file:   .gitignore	
 * ##### git add 	
	添加一個新的檔案至該目錄的暫存區。	
	Case 1 : git add .  添加新的檔案至暫存區(Staging Area)。	
	```
	% git add .
	```		
	```
	% git status
	```
	
		On branch main
		Your branch is up to date with 'origin/main'.
		Changes to be committed:
  		(use "git restore --staged <file>..." to unstage)
			new file:   .gitignore	
 * ##### git commit		
	提交一個檔案至該目錄的儲存庫(Repository)中。	
	Case 1 :  git commit -m “type something” ，直接在提交檔案時增加一個commit訊息。	
	```
	% git commit -m "Add .gitignore"
	```
	
		[main 23cfa45] Add .gitignore
 		1 file changed, 26 insertions(+)
	 	create mode 100644 .gitignore
	 	
	 Case 2 : git commit ，提交檔案之後會進入編輯器，編輯commit訊息。
 * ##### git log	
	查看該目錄過去的commit歷史。	
	Case 1 : git log ，查看該目錄過去的coomit紀錄。		
	```
	% git log
	```	
	
		commit 8243e9ba84f0bf783f020d79add1985e032f8051 (HEAD -> main, origin/main, origin/HEAD)
		Author: LiamHao <smile176223@gmail.com>
		Date:   Thu Jan 6 15:08:15 2022 +0800
			 Add Week1,2,3,4
		commit 23cfa4542322c0f4a1ece24f0b73a95af38eb702
		Author: LiamHao <smile176223@gmail.com>
		Date:   Thu Jan 6 15:05:38 2022 +0800
			 Add .gitignore
		commit 1c47a38c5f7b473a9ab83982f2751c383e9bc651
		Author: smile176223 <17423239+smile176223@users.noreply.github.com>
		Date:   Thu Jan 6 15:03:29 2022 +0800
	  		Initial commit
	Case 2 : git log —oneline ，顯示精簡為一行的過去commit紀錄。	
	```
	% git log --oneline
	```	
	
		8243e9b (HEAD -> main, origin/main, origin/HEAD) Add Week1,2,3,4
		23cfa45 Add .gitignore
		1c47a38 Initial commit
		
 * ##### git push [ Repo_name ] [ Branch_name ]	
	將本機端的分支儲存庫推送至遠端儲存庫中。	
	Case 1 : 將本機的分支儲存推送至遠端儲存庫。	
	```
	% git branch
	```
		
		 master
		*myBranch
		
	`
	% git push origin myBranch
	`
 * ##### git remote -v	
	檢視本機端的Git目錄的遠端資訊。	
	Case 1 : git remote -v ，查看遠端資訊。		
	```
	% git remote -v
	```	
	
		origin	https://github.com/smile176223/AWShw_Liam.git (fetch)
		origin	https://github.com/smile176223/AWShw_Liam.git (push)
 * ##### git branch		
	製作一個新的分支，為了讓多人一起分工協作而分支出去，完成之後再進行Merge。		
	Case 1 : git branch [ branch_name ] ，新增一個分支		
	```
	%  git branch myBranch
	```		
	```
	% git branch 
	```
	
		*master
 		myBranch
 * fork	
	在GitHub中複製一份專案的副本，讓使用者可以對著個副本有所有的權限，	
	並且可以透過Pull Request推送，讓這些變更可以貢獻到原本的專案中。

#### 3. Ans:		
1. 在GitHub中建立一個Repo。	
	![](https://i.imgur.com/1K4k8Rx.png)
2. 在已經建立好的Repo中找到HTTPS的網址。
	![](https://i.imgur.com/HOBklK3.png)
3. 在本機端使用 % git clone “https:xxx.git” ，將該儲存庫clone至本機端指定位置。
4. %git status 確認本機端目錄的狀態。
5. %git add . 將尚未確認的檔案新增至暫存區中。
6. %git commit -m “xxx” 添加commit於剛剛增加的檔案中。
7. %git push 將已儲存至暫存區且已添加commit的檔案推送至儲存庫。
	


