import router from '@ohos.router'
@Component
@Entry
struct PageSecond {
  private routeParams = router.getParams()
  build() {
    Row() {
      Text(this.routeParams['a'])
        .fontSize(50)
        .fontColor('red')
        .onClick(() => {
          router.back({
            url: 'pages/Index',
            params: {
              message: 'data from page Second',
            }
          })
        })
    }
  }
}