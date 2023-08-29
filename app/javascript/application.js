// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import "flowbite/dist/flowbite.turbo.js";
import jQuery from 'jquery'
window.jQuery = jQuery
window.$ = jQuery
import 'datatables.net-dt'
import TomSelect from "tom-select";


document.addEventListener("DOMContentLoaded", function(event) {
    var settings = {};
    if(TomSelect){
        new TomSelect('#category_ids',settings);
    }

});