### 代码示例

#### **1**. Constructor with Parameter

匹配代码如下：

```java
FileOutputStream fos = new FileOutputStream(this.getClass().getResource("").getPath()+ File.separator + "output"+File.separator+ file.getOriginalFilename());
```

示例代码：[cc_param](cc_param.ql)

#### **2**. VarAssign with Parameter

匹配代码如下：

```java
String sql = "select * rom user where id='"+id+"'"; match here
```

示例代码：[vas_param](vas_param.ql)

#### **3**. MethodAccess with VarAccess with Parameter

匹配代码如下：

```java
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, id); // match here
```

示例代码：[ma_va_param](ma_va_param.ql)

#### **4**. MethodAccess with Parent

查找实现类的父类为 Parent 的方法

```java
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql); // match here
```

示例代码：[ma_parent](ma_parent.ql)

#### **5**. AssignExpr with Constructor with Parameter with MethodAccess

匹配代码示例

```java
ProcessBuilder p;
p = new ProcessBuilder(cmd).start(); // match here
```

示例代码：[ae_cc_ma_param](ae_cc_ma_param.ql)

#### **6**. VarAccess with MethodAccess

匹配代码示例

```java
ProcessBuilder processBuilder;
Process p;
processBuilder = new ProcessBuilder(cmd);
p = processBuilder.start(); // match here
```

示例代码：[va_ma](va_ma.ql)

#### **6**. VarAccess with MethodAccess with AssignExpr with ConstructorCall with Parameter

匹配代码示例

```java
ProcessBuilder processBuilder = new ProcessBuilder(cmd); // 关联匹配
Process p = processBuilder.start();
```

示例代码：[va_ma_ae_cc_param](va_ma_ae_cc_param.ql)
