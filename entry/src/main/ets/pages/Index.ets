import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = ''
  onPageShow() {
    const params = router.getParams() || {}
    this.message = params['message'] || 'Hello World'
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Second',
              params: {
                a: 'data from page Index'
              }
            },
              data => {
                this.message = data.message
              }
            )
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}