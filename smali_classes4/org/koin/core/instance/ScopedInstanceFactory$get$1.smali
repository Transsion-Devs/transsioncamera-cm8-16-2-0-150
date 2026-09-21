.class final Lorg/koin/core/instance/ScopedInstanceFactory$get$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/instance/ScopedInstanceFactory;->get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Lorg/koin/core/instance/InstanceContext;

.field final synthetic this$0:Lorg/koin/core/instance/ScopedInstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/instance/ScopedInstanceFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/core/instance/ScopedInstanceFactory;Lorg/koin/core/instance/InstanceContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/ScopedInstanceFactory<",
            "TT;>;",
            "Lorg/koin/core/instance/InstanceContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->this$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    iput-object p2, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->$context:Lorg/koin/core/instance/InstanceContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    .line 54
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->this$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    iget-object v1, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->$context:Lorg/koin/core/instance/InstanceContext;

    invoke-virtual {v0, v1}, Lorg/koin/core/instance/ScopedInstanceFactory;->isCreated(Lorg/koin/core/instance/InstanceContext;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 55
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->this$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    # getter for: Lorg/koin/core/instance/ScopedInstanceFactory;->values:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/koin/core/instance/ScopedInstanceFactory;->access$getValues$p(Lorg/koin/core/instance/ScopedInstanceFactory;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->$context:Lorg/koin/core/instance/InstanceContext;

    invoke-virtual {v1}, Lorg/koin/core/instance/InstanceContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->this$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    iget-object p0, p0, Lorg/koin/core/instance/ScopedInstanceFactory$get$1;->$context:Lorg/koin/core/instance/InstanceContext;

    invoke-virtual {v2, p0}, Lorg/koin/core/instance/ScopedInstanceFactory;->create(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method
