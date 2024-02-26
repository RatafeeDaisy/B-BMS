<template>
	<div class="addEdit-block" style="width: 100%;">
		<el-form
			:style='{"padding":"35px 15px","boxShadow":"0 0px 0px #999","borderRadius":"0px","flexWrap":"wrap","background":"rgba(255,255,255,.3)","display":"flex","justifyContent":"space-between"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="120px"
		>
			<template >
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="预订单号" prop="yudingdanhao">
					<el-input v-model="ruleForm.yudingdanhao" placeholder="预订单号" clearable  :readonly="ro.yudingdanhao"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="预订单号" prop="yudingdanhao">
					<el-input v-model="ruleForm.yudingdanhao" placeholder="预订单号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="房间名称" prop="fangjianmingcheng">
					<el-input v-model="ruleForm.fangjianmingcheng" placeholder="房间名称" clearable  :readonly="ro.fangjianmingcheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="房间名称" prop="fangjianmingcheng">
					<el-input v-model="ruleForm.fangjianmingcheng" placeholder="房间名称" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="upload" v-if="type!='info' && !ro.fangjiantupian" label="房间图片" prop="fangjiantupian">
					<file-upload
						tip="点击上传房间图片"
						action="file/upload"
						:limit="3"
						:multiple="true"
						:fileUrls="ruleForm.fangjiantupian?ruleForm.fangjiantupian:''"
						@change="fangjiantupianUploadChange"
					></file-upload>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="upload" v-else-if="ruleForm.fangjiantupian" label="房间图片" prop="fangjiantupian">
					<img v-if="ruleForm.fangjiantupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.fangjiantupian.split(',')[0]" width="100" height="100">
					<img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.fangjiantupian.split(',')" :src="$base.url+item" width="100" height="100">
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="订单金额" prop="dingdanjine">
					<el-input v-model="ruleForm.dingdanjine" placeholder="订单金额" clearable  :readonly="ro.dingdanjine"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="订单金额" prop="dingdanjine">
					<el-input v-model="ruleForm.dingdanjine" placeholder="订单金额" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="入住人数" prop="ruzhurenshu">
					<el-input v-model="ruleForm.ruzhurenshu" placeholder="入住人数" clearable  :readonly="ro.ruzhurenshu"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="入住人数" prop="ruzhurenshu">
					<el-input v-model="ruleForm.ruzhurenshu" placeholder="入住人数" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="入住天数" prop="ruzhutianshu">
					<el-input v-model="ruleForm.ruzhutianshu" placeholder="入住天数" clearable  :readonly="ro.ruzhutianshu"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="入住天数" prop="ruzhutianshu">
					<el-input v-model="ruleForm.ruzhutianshu" placeholder="入住天数" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="date" v-if="type!='info'" label="办理日期" prop="banliriqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.banliriqi" 
						type="date"
						:readonly="ro.banliriqi"
						placeholder="办理日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-else-if="ruleForm.banliriqi" label="办理日期" prop="banliriqi">
					<el-input v-model="ruleForm.banliriqi" placeholder="办理日期" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="信息备注" prop="xinxibeizhu">
					<el-input v-model="ruleForm.xinxibeizhu" placeholder="信息备注" clearable  :readonly="ro.xinxibeizhu"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="信息备注" prop="xinxibeizhu">
					<el-input v-model="ruleForm.xinxibeizhu" placeholder="信息备注" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" clearable  :readonly="ro.yonghuming"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="手机" prop="shouji">
					<el-input v-model="ruleForm.shouji" placeholder="手机" clearable  :readonly="ro.shouji"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="手机" prop="shouji">
					<el-input v-model="ruleForm.shouji" placeholder="手机" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' class="input" v-if="type!='info'"  label="身份证" prop="shenfenzheng">
					<el-input v-model="ruleForm.shenfenzheng" placeholder="身份证" clearable  :readonly="ro.shenfenzheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 30px 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","float":"left","justifyContent":"flex-start"}' v-else class="input" label="身份证" prop="shenfenzheng">
					<el-input v-model="ruleForm.shenfenzheng" placeholder="身份证" readonly></el-input>
				</el-form-item>
			</template>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"20px 0"}' class="btn">
				<el-button :style='{"cursor":"pointer","padding":"0 34px","margin":"0 20px 0 0","borderColor":"#1fbfae","color":"#1fbfae","outline":"none","borderRadius":"20px","background":"#e9faf8","borderWidth":"4px","width":"auto","lineHeight":"40px","fontSize":"14px","borderStyle":"solid double solid double","height":"44px"}'  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
				<el-button :style='{"cursor":"pointer","padding":"0 34px","margin":"0","borderColor":"#dc333b","color":"#dc333b","outline":"none","borderRadius":"20px","background":"#fbeced","borderWidth":"4px","width":"auto","lineHeight":"40px","fontSize":"14px","borderStyle":"solid double solid double","height":"44px"}' v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
				<el-button :style='{"cursor":"pointer","padding":"0 34px","margin":"0","borderColor":"#dc333b","color":"#dc333b","outline":"none","borderRadius":"20px","background":"#fbeced","borderWidth":"4px","width":"auto","lineHeight":"40px","fontSize":"14px","borderStyle":"solid double solid double","height":"44px"}' v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				yudingdanhao : false,
				fangjianmingcheng : false,
				fangjiantupian : false,
				dingdanjine : false,
				ruzhurenshu : false,
				ruzhutianshu : false,
				banliriqi : false,
				xinxibeizhu : false,
				yonghuming : false,
				xingming : false,
				shouji : false,
				shenfenzheng : false,
				crossuserid : false,
				crossrefid : false,
			},
			
			
			ruleForm: {
				yudingdanhao: '',
				fangjianmingcheng: '',
				fangjiantupian: '',
				dingdanjine: '',
				ruzhurenshu: '',
				ruzhutianshu: '',
				banliriqi: '',
				xinxibeizhu: '',
				yonghuming: '',
				xingming: '',
				shouji: '',
				shenfenzheng: '',
				crossuserid: '',
				crossrefid: '',
			},
		
			
			rules: {
				yudingdanhao: [
				],
				fangjianmingcheng: [
				],
				fangjiantupian: [
				],
				dingdanjine: [
					{ validator: validateIntNumber, trigger: 'blur' },
				],
				ruzhurenshu: [
				],
				ruzhutianshu: [
				],
				banliriqi: [
				],
				xinxibeizhu: [
				],
				yonghuming: [
				],
				xingming: [
				],
				shouji: [
					{ validator: validateMobile, trigger: 'blur' },
				],
				shenfenzheng: [
					{ validator: validateIdCard, trigger: 'blur' },
				],
				crossuserid: [
				],
				crossrefid: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
	created() {
		this.ruleForm.banliriqi = this.getCurDate()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='yudingdanhao'){
							this.ruleForm.yudingdanhao = obj[o];
							this.ro.yudingdanhao = true;
							continue;
						}
						if(o=='fangjianmingcheng'){
							this.ruleForm.fangjianmingcheng = obj[o];
							this.ro.fangjianmingcheng = true;
							continue;
						}
						if(o=='fangjiantupian'){
							this.ruleForm.fangjiantupian = obj[o];
							this.ro.fangjiantupian = true;
							continue;
						}
						if(o=='dingdanjine'){
							this.ruleForm.dingdanjine = obj[o];
							this.ro.dingdanjine = true;
							continue;
						}
						if(o=='ruzhurenshu'){
							this.ruleForm.ruzhurenshu = obj[o];
							this.ro.ruzhurenshu = true;
							continue;
						}
						if(o=='ruzhutianshu'){
							this.ruleForm.ruzhutianshu = obj[o];
							this.ro.ruzhutianshu = true;
							continue;
						}
						if(o=='banliriqi'){
							this.ruleForm.banliriqi = obj[o];
							this.ro.banliriqi = true;
							continue;
						}
						if(o=='xinxibeizhu'){
							this.ruleForm.xinxibeizhu = obj[o];
							this.ro.xinxibeizhu = true;
							continue;
						}
						if(o=='yonghuming'){
							this.ruleForm.yonghuming = obj[o];
							this.ro.yonghuming = true;
							continue;
						}
						if(o=='xingming'){
							this.ruleForm.xingming = obj[o];
							this.ro.xingming = true;
							continue;
						}
						if(o=='shouji'){
							this.ruleForm.shouji = obj[o];
							this.ro.shouji = true;
							continue;
						}
						if(o=='shenfenzheng'){
							this.ruleForm.shenfenzheng = obj[o];
							this.ro.shenfenzheng = true;
							continue;
						}
						if(o=='crossuserid'){
							this.ruleForm.crossuserid = obj[o];
							this.ro.crossuserid = true;
							continue;
						}
						if(o=='crossrefid'){
							this.ruleForm.crossrefid = obj[o];
							this.ro.crossrefid = true;
							continue;
						}
				}
				














			}
			
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
					if(((json.yonghuming!=''&&json.yonghuming) || json.yonghuming==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.yonghuming = json.yonghuming
						this.ro.yonghuming = true;
					}
					if(((json.xingming!=''&&json.xingming) || json.xingming==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.xingming = json.xingming
						this.ro.xingming = true;
					}
					if(((json.shouji!=''&&json.shouji) || json.shouji==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.shouji = json.shouji
						this.ro.shouji = true;
					}
					if(((json.shenfenzheng!=''&&json.shenfenzheng) || json.shenfenzheng==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.shenfenzheng = json.shenfenzheng
						this.ro.shenfenzheng = true;
					}
				} else {
					this.$message.error(data.msg);
				}
			});
			
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `ruzhujilu/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {






	if(this.ruleForm.fangjiantupian!=null) {
		this.ruleForm.fangjiantupian = this.ruleForm.fangjiantupian.replace(new RegExp(this.$base.url,"g"),"");
	}























var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "ruzhujilu/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `ruzhujilu/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.ruzhujiluCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `ruzhujilu/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.ruzhujiluCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.ruzhujiluCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    fangjiantupianUploadChange(fileUrls) {
	    this.ruleForm.fangjiantupian = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  overflow: hidden;
	  	  text-shadow: 0 0px 0px #fff;
	  	  color: #fff;
	  	  background: none;
	  	  font-weight: 500;
	  	  display: block;
	  	  width: 120px;
	  	  clear: both;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 120px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  padding: 0 12px;
	  	  color: #666;
	  	  clear: both;
	  	  font-size: 14px;
	  	  border-color: #366280;
	  	  border-radius: 20px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  overflow: hidden;
	  	  background: rgba(255,255,255,.9);
	  	  width: 360px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  min-width: 300px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  padding: 0 10px;
	  	  color: #666;
	  	  font-size: 14px;
	  	  border-color: #366280;
	  	  border-radius: 20px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  background: rgba(255,255,255,.9);
	  	  width: 360px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  min-width: 200px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 0px solid #333;
	  	  padding: 0 10px 0 30px;
	  	  color: #666;
	  	  font-size: 14px;
	  	  border-color: #366280;
	  	  border-radius: 20px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  background: rgba(255,255,255,.9);
	  	  width: 360px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  min-width: 200px;
	  	  height: 40px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  	  border: 2px solid #ddd;
	  	  cursor: pointer;
	  	  color: #366280;
	  	  font-size: 32px;
	  	  border-color: #366280;
	  	  line-height: 90px;
	  	  border-radius: 20px;
	  	  background: rgba(255,255,255,.9);
	  	  width: 200px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  text-align: center;
	  	  height: 100px;
	  	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 2px solid #ddd;
	  	  cursor: pointer;
	  	  color: #366280;
	  	  font-size: 32px;
	  	  border-color: #366280;
	  	  line-height: 90px;
	  	  border-radius: 20px;
	  	  background: rgba(255,255,255,.9);
	  	  width: 200px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  text-align: center;
	  	  height: 100px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 2px solid #ddd;
	  	  cursor: pointer;
	  	  color: #366280;
	  	  font-size: 32px;
	  	  border-color: #366280;
	  	  line-height: 90px;
	  	  border-radius: 20px;
	  	  background: rgba(255,255,255,.9);
	  	  width: 200px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  text-align: center;
	  	  height: 100px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  padding: 12px;
	  	  color: #666;
	  	  font-size: 14px;
	  	  border-color: #366280;
	  	  min-height: 150px;
	  	  border-radius: 20px;
	  	  box-shadow: 0 0 0px #4b681d;
	  	  outline: none;
	  	  background: rgba(255,255,255,.9);
	  	  width: 450px;
	  	  border-width: 4px;
	  	  border-style: solid double solid double;
	  	  min-width: 200px;
	  	  height: auto;
	  	}
</style>
