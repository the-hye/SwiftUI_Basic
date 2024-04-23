# SwiftUI_Basic
study for swiftui

## 1. CarList
## 2. SwiftData
## 3. SwiftUI-CookBook
[24.04.23]
- TheTasks : VStack, HStack, ZStack
  VStack : y축  
  HStack : x축  
  ZStack : z축  
  Spacer() : 컴포넌트들 간의 공간 생성  
  Divider() : 구분선  

- FormattedText : Text, SecureField, TextField  
  Text : 일반 텍스트  
  SecureField : 비밀번호 텍스트  
  TextField : 텍스트 입력창  

  .fontWeight : 텍스트 굵기  
  .italic : 이태리체  
  .bold : 텍스트 굵게  
  .underline : 밑줄  
  .kerning : char 사이의 간격  
  .strikethrough : 텍스트 중간 줄  
  .multilineTextAlignment : 텍스트 배치  
  .lineSpacing : 줄간 간격  

- UsingImages  
	.resizable : 화면 크기에 맞게 이미지 사이즈 변경  
	.aspectRatio : 이미지의 비울에 맞게 화면에 표시  
	.frame : 이미지 크기 조절  
	.clipShape : 이미지 모양 변경  
	.overlay : 이미지 테두리  
	.shadow : 그림자  

	UIImage : UIKit에서 그리는 이미지  

- Buttons : NavigationStack, Menu, List, PasteButton   
	NavigationStack : 부모 view에서 자식 view를 제공   
	NavigationLink : 자식 view로 이동  
	Menu : menu 버튼 생성  
	PasteButton : 붙여넣기 버튼 생성  
	.toolbar { EditButton() } : Edit 버튼 생성  
	.navigationTitle : view의 상단 제목  
	.onDelete : Delete 버튼이 나오게 하는 액션 

- UsingContent : Form, Section, Picker, Toggle, Slider  
	Form : 하나의 입력 형태를 나타냄  
	Section : UI 내 공간 차지(?)  
	Picker : 여러가지 선택지 출력  
	Toggle : on/off 기능  
	Slider : slider 모양 출력  

- UsingModifier  
	.modifier : 임의로 만든 ViewModifier 이용 가능   

- ViewBuilder  
	@ViewBuilder : view 템플릿의 역할의 함(미리 만들어 둔 후 활용 가능)  

- UsingSFSymbol  
	symbolVariant : .default, .fill, .circle, .circle.fill  
	symbolRenderingMode : symbol mode   
