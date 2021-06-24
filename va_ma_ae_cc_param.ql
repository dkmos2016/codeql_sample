/**
 * 
 * @name VarAccess with MethodAccess with AssignExpr with ConstructorCall with Parameter
 * @comment 关联查询
 */


import java
import semmle.code.java.dataflow.DataFlow

from DataFlow::Node node, AssignExpr ae, MethodAccess ma
where exists( DataFlow::Node node2, ConstructorCall cc |
  cc.getAnArgument() = node.asExpr() and
  ae.getSource() = cc and
  exists(Method m, VarAccess va |
    ma.getMethod() = m and
    m.getDeclaringType().hasQualifiedName("java.lang", "ProcessBuilder") and
    m.getName() = "start" and
    va = ma.getAChildExpr() and
    ae.getDest().toString() = va.toString()
  )
)
select ma, ae

