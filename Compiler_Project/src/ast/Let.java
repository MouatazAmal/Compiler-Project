package ast;

import type.Type;
import utils.Id;
import visitor.ObjVisitor;
import visitor.TypeCheckVisitor;
import visitor.Visitor;
import visitor.VisitorArgs;

public class Let extends Exp {
    public final Id id;
    public final Type t;
    public final Exp e1;
    public final Exp e2;

    public Let(Id id, Type t, Exp e1, Exp e2) {
        this.id = id;
        this.t = t;
        this.e1 = e1;
        this.e2 = e2;
    }

    public <E> E accept(ObjVisitor<E> v) {
        return v.visit(this);
    }
    public void accept(Visitor v) {
        v.visit(this);
    }
    


    public void accept(VisitorArgs v, Exp e){
        v.visit(this, e);
    }


    public Type accept(TypeCheckVisitor typeCheckVisitor) {
        // TODO Auto-generated method stub
        return typeCheckVisitor.visit(this);
    }

}
