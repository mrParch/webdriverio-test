export class Sidebar {
    get root() {
        return $('div.sidebar');
    }

    get header() {
        return this.root.$('div.sidebar-header');
    }

    get menuBtn() {
        return this.header.$('button.menu');
    }

    get content() {
        return this.root.$('div.sidebar-content');
    }

    get myDay() {
        return this.content.$('li.todayToolbar');
    }

    get important() {
        return this.content.$('div#important');
    }

    get planned() {
        return this.content.$('div#planned');
    }

    get assignedToYou() {
        return this.content.$('div#assigned_to_me');
    }

    get flagggedEmail() {
        return this.content.$('div#flagged');
    }

    get tasks() {
        return this.content.$('div#inbox');
    }

    get newListSidebar() {
        return this.root.$('div.sidebar-addList');
    }

    get addListInput() {
        return this.newListSidebar.$('div.baseAdd.addList');
    }

    get addListBtn() {
        return this.newListSidebar.$('button.baseAdd-icon');
    }

    get addGroupIcon() {
        return this.newListSidebar.$('button.addGroup-icon');
    }
}
