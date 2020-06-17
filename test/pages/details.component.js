export class Details {
    constructor(root) {
        this.root = root;
    }

    get header() {
        return $('div.detailHeader');
    }

    get footer() {
        return $('detailFooter');
    }

    get closeDetailsBtn() {
        return this.footer.$('div:nth-child(1)>div>button');
    }

    get bucketBtn() {
        return this.footer.$('div:nth-child(3) button');
    }

    get cancelDeleteBtn(){
        return $('button.button.gray');
    }

    get confirmDeleteBtn(){
        return $('button.button.red');
    }

}