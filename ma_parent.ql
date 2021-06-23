/**
 * @name MethodAccess with Parent
 * @comment 查找实现类父类为Parent的方法
 */

import java
import semmle.code.java.dataflow.DataFlow

from MethodAccess ma, Method m, ClassOrInterface ci
where
  ma.getMethod() = m and
  m.getDeclaringType().getASupertype*().getQualifiedName() = ci.getQualifiedName() and
  ci.getQualifiedName() = "java.sql.Statement"
select ma, m, ci.getQualifiedName()
