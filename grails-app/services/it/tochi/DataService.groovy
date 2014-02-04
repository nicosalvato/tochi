package it.tochi

class DataService {

    def fastResponse() {
        [description: 'Fast Data', value: 'This is loading fast.']
    }

    def slowResponse() {
        Thread.currentThread().sleep(2*1000)
        [description: 'Slow Data', value: 'This may take some time to load.']
    }
}
