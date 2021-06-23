

### 代码示例

#### **1**. Constructor with  Parameter
匹配代码如下：
``` java
FileOutputStream fos = new FileOutputStream(this.getClass().getResource("").getPath()+ File.separator + "output"+File.separator+ file.getOriginalFilename());
```

示例代码：[cc_param](cc_param.ql)

#### **2**. VarAssign with Parameter

匹配代码如下：
``` java
String sql = "select * rom user where id='"+id+"'"; match here
```

示例代码：[vas_param](vas_param.ql)

#### **3**. MethodAccess with VarAccess with Parameter

匹配代码如下：
``` java
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, id); // match here
```

示例代码：[ma_va_param](ma_va_param.ql)


#### **4**. MethodAccess with Parent
查找实现类的父类为Parent的方法
``` java
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql); // match here 
```

示例代码：[ma_parent](ma_parent.ql)


