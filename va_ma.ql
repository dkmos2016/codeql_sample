/**
 * @name VarAccess with MethodAccess
 * @comment 类方法调用
 */

import java
import semmle.code.java.dataflow.DataFlow

from VarAccess va, MethodAccess ma
where ma.getMethod().hasName("start") and ma.getAChildExpr() = va
select ma.getAChildExpr(), va
