//
//  CodeData.swift
//  Demo
//
//  Created by apple on 2019/8/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift

class CodeData: NSObject {
    
    func getCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"app\">"))
        array.append(CodeCellModel("    {{ message }}"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel("var app = new Vue({"))
        array.append(CodeCellModel("    el: '#app',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        message: 'Hello Vue!'"))
        array.append(CodeCellModel("    }"))
        array.append(CodeCellModel(" })"))
       
        return array;
    }
    
    func getVueTextCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"app\">"))
        array.append(CodeCellModel("    {{ message }}"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel("var app = new Vue({"))
        array.append(CodeCellModel("    el: '#app',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        message: 'Hello Vue!'"))
        array.append(CodeCellModel("    }"))
        array.append(CodeCellModel(" })"))
        
        return array;
    }
    
    func getVueIfCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"app-3\">"))
        array.append(CodeCellModel("<p v-if=\"seen\">现在你看到我了</p>"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel("var app3 = new Vue({"))
        array.append(CodeCellModel("    el: '#app-3',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        seen: true"))
        array.append(CodeCellModel("    }"))
        array.append(CodeCellModel(" })"))
        
        return array;
    }
    
    
    func getVueOnCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"example-2\">"))
        array.append(CodeCellModel("   <!-- `greet` 是在下面定义的方法名 -->"))
        array.append(CodeCellModel("     <button v-on:click=\"greet\">Greet</button>"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel("var example2 = new Vue({"))
        array.append(CodeCellModel("    el: '#example-2',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        name: 'Vue.js'"))
        array.append(CodeCellModel("    },"))
        array.append(CodeCellModel("    methods: {"))
        array.append(CodeCellModel("        greet: function (event) {"))
        array.append(CodeCellModel("             alert('Hello ' + this.name + '!')"))
        array.append(CodeCellModel("        }"))
        array.append(CodeCellModel("    }"))
        array.append(CodeCellModel(" })"))
        
        
        return array;
    }
    func getVueBindCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"app-2\">"))
        array.append(CodeCellModel("<span v-bind:title=\"message\">"))
        array.append(CodeCellModel("鼠标悬停几秒钟查看此处动态绑定的提示信息！"))
        array.append(CodeCellModel("</span>"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel(""))
        array.append(CodeCellModel("var app2 = new Vue({"))
        array.append(CodeCellModel("    el: '#app-2',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        message: '页面加载于 ' + new Date().toLocaleString()"))
        array.append(CodeCellModel("    }"))
        array.append(CodeCellModel("})"))
        
        
        return array;
    }
    
    func getVueForCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("<div id=\"app-4\">"))
        array.append(CodeCellModel("<ol>"))
        array.append(CodeCellModel("<li v-for=\"todo in todos\">"))
        array.append(CodeCellModel("{{ todo.text }}"))
        array.append(CodeCellModel("</li>"))
        array.append(CodeCellModel("</ol>"))
        array.append(CodeCellModel("</div>"))
        array.append(CodeCellModel("var app4 = new Vue({"))
        array.append(CodeCellModel("    el: '#app-4',"))
        array.append(CodeCellModel("    data: {"))
        array.append(CodeCellModel("        todos: ["))
        array.append(CodeCellModel("        { text: '学习 JavaScript' },"))
        array.append(CodeCellModel("        { text: '学习 Vue' },"))
        array.append(CodeCellModel("        { text: '整个牛项目' }"))
        array.append(CodeCellModel("        ]"))
        array.append(CodeCellModel("      }"))
        array.append(CodeCellModel("})"))

        
        return array;
    }
    
    //ios
    func getIosTextCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        
        array.append(CodeCellModel("let label:UILabel = {"))
        array.append(CodeCellModel("    let a = UILabel()"))
        array.append(CodeCellModel("    a.textColor = UIColor.black"))
        array.append(CodeCellModel("    a.textAlignment = .center"))
        array.append(CodeCellModel("    return a"))
        array.append(CodeCellModel("}()"))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("label.v_text(vId: testIfId, vue: av)"))
        array.append(CodeCellModel("av.v_text(vId: testIfId) { () -> String? in"))
        array.append(CodeCellModel("   return \"label\""))
        array.append(CodeCellModel("}"))

        
        return array;
    }
    
    func getIosIfCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        
        array.append(CodeCellModel("let label:UILabel = {"))
        array.append(CodeCellModel("    let a = UILabel()"))
        array.append(CodeCellModel("    a.textColor = UIColor.black"))
        array.append(CodeCellModel("    a.textAlignment = .center"))
        array.append(CodeCellModel("    return a"))
        array.append(CodeCellModel("}()"))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("label.text = \"123\""))
        array.append(CodeCellModel("label.v_if(vId: testIfId, vue: av)"))
        array.append(CodeCellModel("av.v_if(vId: testIfId) { () -> Bool? in"))
        array.append(CodeCellModel("   return true"))
        array.append(CodeCellModel("}"))
        

        return array;
    }
    func getIosImageCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        
        array.append(CodeCellModel("let imageView:UIImageView = {"))
        array.append(CodeCellModel("    let a = UIImageView()"))
        array.append(CodeCellModel("    return a"))
        array.append(CodeCellModel("}()"))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("imageView.v_image(vId: testImageId, vue: av)"))
        array.append(CodeCellModel("av.v_image(vId: testImageId) { () -> UIImage? in"))
        array.append(CodeCellModel("   return UIImage.init(named: \"icon\")"))
        array.append(CodeCellModel("}"))
        
        return array;
    }
    func getIosOnCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        
        array.append(CodeCellModel("let button:UIButton = {"))
        array.append(CodeCellModel("    let a = UIButton()"))
        array.append(CodeCellModel("    a.setTitle(\"button\", for: .normal)"))
        array.append(CodeCellModel("    a.setTitleColor(UIColor.red, for: .normal)"))
        array.append(CodeCellModel("    return a"))
        array.append(CodeCellModel("}()"))
        array.append(CodeCellModel("self.view.addSubview(button)"))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("button.v_on(vId: testOnId, vue: av)"))
        array.append(CodeCellModel("av.v_on(vId: testOnId) {"))
        array.append(CodeCellModel("   print(\"button\")"))
        array.append(CodeCellModel("}"))
        
       
        
        return array;
    }
    
    func getIosInputCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        
        array.append(CodeCellModel("let field:UITextField = {"))
        array.append(CodeCellModel("    let a = UITextField()"))
        array.append(CodeCellModel("    a.borderStyle = .roundedRect"))
        array.append(CodeCellModel("    return a"))
        array.append(CodeCellModel("}()"))
        array.append(CodeCellModel("self.view.addSubview(field)"))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("field.v_input(vId: testInputId, vue: av)"))
        array.append(CodeCellModel("av.v_input(vId: testInputId) { (text) in"))
        array.append(CodeCellModel("   print(text)"))
        array.append(CodeCellModel("}"))
        
        
        return array;
    }
    
    func getIosArrayCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("Vue.register(aClass: TestCellModel.classForCoder(), toClass:  TestCell.classForCoder())"))
        array.append(CodeCellModel("let table = CTable()"))
        array.append(CodeCellModel("self.view.addSubview(table)"))
        array.append(CodeCellModel(""))
        array.append(CodeCellModel("let av = Vue()"))
        array.append(CodeCellModel("table.v_array(vId: testArrayId, vue: av)"))
        array.append(CodeCellModel("table.v_index(vId: testIndexId, vue: av)"))
        array.append(CodeCellModel("var array = Array<VueData>()"))
        array.append(CodeCellModel("for i in 1...12{"))
        array.append(CodeCellModel("   let m = TestCellModel(\"test\")"))
        array.append(CodeCellModel("   array.append(m)"))
        array.append(CodeCellModel("}"))
        array.append(CodeCellModel("av.v_array(vId: testArrayId) { () -> Array<VueData>? in"))
        array.append(CodeCellModel("   return array"))
        array.append(CodeCellModel("}"))
        array.append(CodeCellModel("av.v_index(vId: testIndexId) { (index) in"))
        array.append(CodeCellModel("   print(index)"))
        array.append(CodeCellModel("}"))
    
        
        return array;
    }
    
    
    //android
    func getAndroidTextCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("var av = Vue()"))
        array.append(CodeCellModel("textView.v_text(textId,av)"))
        array.append(CodeCellModel("av.v_text(textId,{"))
        array.append(CodeCellModel("    return@v_text \"text\""))
        array.append(CodeCellModel("})"))
       
        
        return array;
    }
    
    func getAndroidIfCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeCellModel("var av = Vue()"))
        array.append(CodeCellModel("textView.v_if(testId,av)"))
        array.append(CodeCellModel("av.v_if(testId,{"))
        array.append(CodeCellModel("    return@v_if true"))
        array.append(CodeCellModel("})"))
        
        
        return array;
    }
    func getAndroidImageCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeCellModel("var av = Vue()"))
        array.append(CodeCellModel("imageView.v_image(testId,av)"))
        array.append(CodeCellModel("av.v_image(testId,{"))
        array.append(CodeCellModel("    return@v_image BitmapFactory.decodeResource(resources,R.drawable.test)"))
        array.append(CodeCellModel("})"))
        
    
        return array;
    }
    func getAndroidOnCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeCellModel("var av = Vue()"))
        array.append(CodeCellModel("button.v_on(testId,av)"))
        array.append(CodeCellModel("av.v_on(testId,{"))
        array.append(CodeCellModel("    print(\"test\")"))
        array.append(CodeCellModel("})"))
        
        return array;
    }
    
    func getAndroidInputCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeCellModel("var av = Vue()"))
        array.append(CodeCellModel("editText.v_input(testId,av)"))
        array.append(CodeCellModel("av.v_input(testId,{ it:String ->"))
        array.append(CodeCellModel("    print(it)"))
        array.append(CodeCellModel("})"))
        
        
        return array;
    }
    
    func getAndroidArrayCode() -> Array<VueData>{
        
        var array = Array<VueData>()
        array.append(CodeTitleCellModel("cddo"))
        array.append(CodeCellModel("recycler.layoutManager = LinearLayoutManager(this)"))
        array.append(CodeCellModel("var ad =  RAdapter()"))
        array.append(CodeCellModel("var av = Vue"))
        array.append(CodeCellModel("ad.v_array(vID,av)"))
        array.append(CodeCellModel("recycler.adapter = ad"))
        array.append(CodeCellModel(""))
        array.append(CodeCellModel("var items = mutableListOf<VueData>()"))
        array.append(CodeCellModel("var array = Array<VueData>()"))
        array.append(CodeCellModel("for (i in 1..12) {"))
        array.append(CodeCellModel("   items.add(UserData(\"test\"))"))
        array.append(CodeCellModel("})"))
        array.append(CodeCellModel("v.v_array(testId,{"))
        array.append(CodeCellModel("   return@v_array items"))
        array.append(CodeCellModel("})"))
        array.append(CodeCellModel("v.v_index(testId,{ it:Int ->"))
        array.append(CodeCellModel("   print(it)"))
        array.append(CodeCellModel("})"))
        
        
        return array;
    }
    
  
}
