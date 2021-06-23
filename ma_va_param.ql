/**
 * @name MethodAccess with VarAccess with Parameter
 * @comment 查找 va.xx(param)形式的代码stm
 */

import java
import semmle.code.java.dataflow.DataFlow


from VarAccess va, MethodAccess ma, DataFlow::Node node
where
  va.getControlFlowNode().getAPredecessor() = ma.getControlFlowNode().getANormalSuccessor() and
  node.asExpr() = ma.getAnArgument()
select va
