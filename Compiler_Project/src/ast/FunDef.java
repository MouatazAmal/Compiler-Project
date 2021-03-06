package ast;


import type.Type;
import utils.Id;

import visitor.VisitorArgs;

import visitor.ObjVisitor;
import visitor.TypeCheckVisitor;
import visitor.Visitor;


import java.util.List;

public class FunDef{
    public final Id id;
    public final Type type;
    public final List<Id> args;
    public final Exp e;

    public FunDef(Id id, Type t, List<Id> args, Exp e) {
        this.id = id;
        this.type = t;
        this.args = args;
        this.e = e;
    }

}
