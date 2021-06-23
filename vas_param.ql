/**
 * @name VarAssign with Parameter
 * @comment 查找 String s = "ss"+param+...形式的stmt
 */

import java
import semmle.code.java.dataflow.DataFlow

from VariableAssign va, AddExpr ae, DataFlow::Node node
where va.getAChildExpr() = ae and ae.getAChildExpr() = node.asExpr()
select va, ae
