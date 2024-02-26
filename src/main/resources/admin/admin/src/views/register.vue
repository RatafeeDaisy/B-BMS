<template>
	<div>
		<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20221201/760046d0cca14ba09053b57a5cd9d3af.jpg)","display":"flex","width":"100%","backgroundSize":"100% 100%","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
			<el-form v-if="pageFlag=='register'" :style='{"minHeight":"853px","padding":"40px 0px 60px 20px","margin":"40px auto 0 auto","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20221201/39914ca6890e4a7eb7035a0f85f78ca2.png) no-repeat center top","width":"850px","backgroundSize":"auto 100%","height":"auto"}' ref="rgsForm" class="rgs-form" :model="rgsForm">
				<div v-if="true" :style='{"width":"100%","margin":"80px 0px 10px 0px","lineHeight":"40px","fontSize":"24px","color":"#fff","textAlign":"center"}' class="title">基于spring boot的民宿预约管理系统的设计与实现注册</div>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">用户名</div>
					<el-input  v-model="ruleForm.yonghuming"  autocomplete="off" placeholder="用户名"  type="text"  />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">密码</div>
					<el-input  v-model="ruleForm.mima"  autocomplete="off" placeholder="密码"  type="password"  />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">确认密码</div>
					<el-input  v-model="ruleForm.mima2" autocomplete="off" placeholder="确认密码" type="password" />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">姓名</div>
					<el-input  v-model="ruleForm.xingming"  autocomplete="off" placeholder="姓名"  type="text"  />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">性别</div>
                    <el-select v-model="ruleForm.xingbie" placeholder="请选择性别" >
                        <el-option
                            v-for="(item,index) in huiyuanxingbieOptions"
                            v-bind:key="index"
                            :label="item"
                            :value="item">
                        </el-option>
                    </el-select>
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">头像</div>
                    <file-upload
                        tip="点击上传头像"
                        action="file/upload"
                        :limit="3"
                        :multiple="true"
                        :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
                        @change="huiyuantouxiangUploadChange"
                    ></file-upload>
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">手机</div>
					<el-input  v-model="ruleForm.shouji"  autocomplete="off" placeholder="手机"  type="text"  />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">身份证</div>
					<el-input  v-model="ruleForm.shenfenzheng"  autocomplete="off" placeholder="身份证"  type="text"  />
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">会员类型</div>
                    <el-select @change="huiyuanhuiyuanleixingChange" v-model="ruleForm.huiyuanleixing" placeholder="请选择会员类型" :disabled="true">
                        <el-option
                            v-for="(item,index) in huiyuanhuiyuanleixingOptions"
                            v-bind:key="index"
                            :label="item"
                            :value="item">
                        </el-option>
                    </el-select>
				</el-form-item>
				<el-form-item :style='{"width":"80%","padding":"0","margin":"0 auto 8px 220px","flexWrap":"wrap","display":"block","height":"auto"}' class="list-item" v-if="tableName=='huiyuan'">
					<div v-if="false" :style='{"width":"100%","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}' class="lable">会员折扣</div>
					<el-input  v-model="ruleForm.huiyuanzhekou" readonly autocomplete="off" placeholder="会员折扣"  type="text"  />
				</el-form-item>
				<button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"12px 220px 4px ","outline":"none","color":"#fff","borderRadius":"20px","background":"#17a5ff","display":"block","width":"40%","fontSize":"16px","height":"36px"}' type="button" class="r-btn" @click="login()">注册</button>
				<div :style='{"cursor":"pointer","padding":"0 10%","margin":"8px 0 0 220px","color":"rgba(159, 159, 159, 1)","display":"inline-block","lineHeight":"2","fontSize":"12px","textDecoration":"underline"}' class="r-login" @click="close()">已有账号，直接登录</div>
			</el-form>
			
		</div>
	</div>
</template>

<script>

export default {
	data() {
		return {
			ruleForm: {
                xingbie: '',
                huiyuanleixing: '无会员',
                huiyuanzhekou: '1',
			},

            pageFlag : '',
			tableName:"",
			rules: {},
            huiyuanxingbieOptions: [],
            huiyuanhuiyuanleixingOptions: [],
		};
	},
	mounted(){
        this.pageFlag = this.$storage.get("pageFlag");
		let table = this.$storage.get("loginTable");
		this.tableName = table;
        this.huiyuanxingbieOptions = "男,女".split(',')
        this.$http({
            url: `option/huiyuanleixing/huiyuanleixing`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code === 0) {
                this.huiyuanhuiyuanleixingOptions = data.data;
            } else {
                this.$message.error(data.msg);
            }
        });
	},
	created() {
    
	},
	destroyed() {
		  	},
	methods: {
		// 获取uuid
		getUUID () {
			return new Date().getTime();
		},
		close(){
			this.$router.push({ path: "/login" });
		},
        huiyuantouxiangUploadChange(fileUrls) {
            this.ruleForm.touxiang = fileUrls;
        },
        // 下二随
        huiyuanhuiyuanleixingChange () {
            this.$http({
                url: `follow/huiyuanleixing/huiyuanleixing?columnValue=`+ this.ruleForm.huiyuanleixing,
                method: "get"
            }).then(({ data }) => {
                if (data && data.code === 0) {
                    if(data.data.huiyuanzhekou){
                        this.ruleForm.huiyuanzhekou = data.data.huiyuanzhekou
                    }
                } else {
                    this.$message.error(data.msg);
                }
            });
        },

        // 多级联动参数


		// 注册
		login() {
			var url=this.tableName+"/register";
					if((!this.ruleForm.yonghuming) && `huiyuan` == this.tableName){
						this.$message.error(`用户名不能为空`);
						return
					}
					
					
					
					
					
					
					
					
					
					
					if((!this.ruleForm.mima) && `huiyuan` == this.tableName){
						this.$message.error(`密码不能为空`);
						return
					}
					
					
					
					
					
					
					
					
					
					
					if((this.ruleForm.mima!=this.ruleForm.mima2) && `huiyuan` == this.tableName){
						this.$message.error(`两次密码输入不一致`);
						return
					}
					if((!this.ruleForm.xingming) && `huiyuan` == this.tableName){
						this.$message.error(`姓名不能为空`);
						return
					}
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
            if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
            }
					
					
					
					
					
					
					
					
					
					
					if((!this.ruleForm.shouji) && `huiyuan` == this.tableName){
						this.$message.error(`手机不能为空`);
						return
					}
					
					
					
					
					
					
					if(`huiyuan` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
						this.$message.error(`手机应输入手机格式`);
						return
					}
					
					
					
					
					if((!this.ruleForm.shenfenzheng) && `huiyuan` == this.tableName){
						this.$message.error(`身份证不能为空`);
						return
					}
					
					
					
					
					
					
					
					
					if(`huiyuan` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
						this.$message.error(`身份证应输入身份证格式`);
						return
					}
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					if(`huiyuan` == this.tableName && this.ruleForm.huiyuanzhekou&&(!this.$validate.isNumber(this.ruleForm.huiyuanzhekou))){
						this.$message.error(`会员折扣应输入数字`);
						return
					}
					
					
					
					
					
					
				
			
			this.$http({
				url: url,
				method: "post",
				data:this.ruleForm
			}).then(({ data }) => {
				if (data && data.code === 0) {
					this.$message({
						message: "注册成功",
						type: "success",
						duration: 1500,
						onClose: () => {
							this.$router.replace({ path: "/login" });
						}
					});
				} else {
					this.$message.error(data.msg);
				}
			});
		}
	}
};
</script>

<style lang="scss" scoped>
	.container {
	  position: relative;
	  background: url(http://codegen.caihongy.cn/20221201/760046d0cca14ba09053b57a5cd9d3af.jpg);

		.el-date-editor.el-input {
		  width: 100%;
		}
		
		.rgs-form .el-input /deep/ .el-input__inner {
						border-radius: 20px;
						padding: 0 10px;
						margin: 0;
						color: #ccc;
						background: none;
						width: 360px;
						font-size: 14px;
						border-color: #d0cddb;
						border-width: 1px;
						border-style: solid;
						height: 36px;
					}
		
		.rgs-form .el-select /deep/ .el-input__inner {
						border: 0px solid #333;
						padding: 0 10px;
						color: #ccc;
						font-size: 14px;
						border-color: #d0cddb;
						border-radius: 20px;
						box-shadow: 0 0 0px rgba(64, 158, 255, .5);
						outline: none;
						background: none;
						width: 360px;
						border-width: 1px;
						border-style: solid;
						height: 36px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border-radius: 20px;
						padding: 0 10px 0 30px;
						box-shadow: 0 0 0px rgba(64, 158, 255, .5);
						outline: none;
						color: #ccc;
						background: none;
						width: 360px;
						font-size: 14px;
						border-color: #d0cddb;
						border-width: 1px;
						border-style: solid;
						height: 36px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border-radius: 20px;
						padding: 0 10px 0 30px;
						box-shadow: 0 0 0px rgba(64, 158, 255, .5);
						outline: none;
						color: #ccc;
						background: none;
						width: 360px;
						font-size: 14px;
						border-color: #d0cddb;
						border-width: 1px;
						border-style: solid;
						height: 36px;
					}
		
		.rgs-form /deep/ .el-upload--picture-card {
			background: transparent;
			border: 0;
			border-radius: 0;
			width: auto;
			height: auto;
			line-height: initial;
			vertical-align: middle;
		}
		
		.rgs-form /deep/ .upload .upload-img {
		  		  border: 1px solid #d0cddb;
		  		  cursor: pointer;
		  		  border-radius: 20px;
		  		  margin: 10px 0 0;
		  		  color: #ccc;
		  		  width: 160px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
		
		.rgs-form /deep/ .el-upload-list .el-upload-list__item {
		  		  border: 1px solid #d0cddb;
		  		  cursor: pointer;
		  		  border-radius: 20px;
		  		  margin: 10px 0 0;
		  		  color: #ccc;
		  		  width: 160px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
		
		.rgs-form /deep/ .el-upload .el-icon-plus {
		  		  border: 1px solid #d0cddb;
		  		  cursor: pointer;
		  		  border-radius: 20px;
		  		  margin: 10px 0 0;
		  		  color: #ccc;
		  		  width: 160px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
	}
</style>
