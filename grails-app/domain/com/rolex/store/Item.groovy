package com.rolex.store

class Item {

    static constraints = {
    }
    static mapping = {
        table 's_item'
        version false
        goods lazy: false
    }

    static belongsTo = [cart:Cart]
    Product product
    int itemNum

}
