/**
 * @author: cxt-zhouxinggang
 * @date: 13-5-10
 * @time: 上午10:07
 */
seajs.config({

    vars : {
        "local" : getLocal(),
        "version" : "1.1.0-RELEASE"
    },

    plugins : ["shim", "text", "style","nocache"],


    preload : [
        
    ],

    charset : "utf-8"
});

function getLocal() {
	var language = (navigator.language || navigator.browserLanuage || navigator.systemLanguage);
    return language.toLowerCase();
};