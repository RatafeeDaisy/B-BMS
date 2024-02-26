const base = {
    get() {
        return {
            url : "http://localhost:8080/B_BMS/",
            name: "B_BMS",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/B_BMS/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于spring boot的民宿预约管理系统的设计与实现"
        } 
    }
}
export default base
