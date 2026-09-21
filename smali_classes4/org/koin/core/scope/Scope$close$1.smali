.class final Lorg/koin/core/scope/Scope$close$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->close()V
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
.field final synthetic this$0:Lorg/koin/core/scope/Scope;


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;)V
    .registers 2

    iput-object p1, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 392
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$close$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 6

    .line 393
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|- (-) Scope - id:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    # getter for: Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/koin/core/scope/Scope;->access$get_callbacks$p(Lorg/koin/core/scope/Scope;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    .line 1855
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/koin/core/scope/ScopeCallback;

    .line 394
    invoke-interface {v4, v1}, Lorg/koin/core/scope/ScopeCallback;->onScopeClose(Lorg/koin/core/scope/Scope;)V

    goto :goto_36

    .line 395
    :cond_44
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    # getter for: Lorg/koin/core/scope/Scope;->_callbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/koin/core/scope/Scope;->access$get_callbacks$p(Lorg/koin/core/scope/Scope;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 396
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/koin/core/scope/Scope;->set_source(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/koin/core/scope/Scope;->access$set_closed$p(Lorg/koin/core/scope/Scope;Z)V

    .line 398
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    iget-object p0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0, p0}, Lorg/koin/core/registry/ScopeRegistry;->deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V

    return-void
.end method
