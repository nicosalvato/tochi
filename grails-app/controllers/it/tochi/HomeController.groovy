package it.tochi

class HomeController {

    def dataService

    def home() {
        render view: 'home'
    }

    def section1() {
        def outData = dataService.fastResponse()
        render template: 'section1', model: outData
    }

    def section2() {
        def outData = dataService.slowResponse()
        render template: 'section2', model: outData
    }
}
