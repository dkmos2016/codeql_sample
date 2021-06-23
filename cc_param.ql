/**
 * @comment 查找 String s = "ss"+param+...形式的stmt
 */

import java
import semmle.code.java.dataflow.DataFlow


from ConstructorCall cc, DataFlow::Node node
where cc.getAnArgument() = node.asExpr()
select cc