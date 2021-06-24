/**
 * 
 * @name AssignExpr with Constructor with Parameter with MethodAccess
 */

import java
import semmle.code.java.dataflow.DataFlow

from AssignExpr ae, MethodAccess ma, DataFlow::Node node1, DataFlow::Node node2, Expr expr
where
  ae.getSource() = ma and
  exists(ConstructorCall cc |
    ae.getSource().getAChildExpr() = cc and
    cc.getAnArgument() = node1.asExpr()
  ) and
  ae.getDest() = node2.asExpr()
select ae, ma
