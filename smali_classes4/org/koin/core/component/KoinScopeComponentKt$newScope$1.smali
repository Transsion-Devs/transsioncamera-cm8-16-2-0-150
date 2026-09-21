.class final Lorg/koin/core/component/KoinScopeComponentKt$newScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/component/KoinScopeComponentKt;->newScope(Lorg/koin/core/component/KoinScopeComponent;)Lkotlin/Lazy;
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
.field final synthetic $this_newScope:Lorg/koin/core/component/KoinScopeComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/core/component/KoinScopeComponent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/component/KoinScopeComponentKt$newScope$1;->$this_newScope:Lorg/koin/core/component/KoinScopeComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 52
    invoke-virtual {p0}, Lorg/koin/core/component/KoinScopeComponentKt$newScope$1;->invoke()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/scope/Scope;
    .registers 3

    .line 52
    iget-object p0, p0, Lorg/koin/core/component/KoinScopeComponentKt$newScope$1;->$this_newScope:Lorg/koin/core/component/KoinScopeComponent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/koin/core/component/KoinScopeComponentKt;->createScope$default(Lorg/koin/core/component/KoinScopeComponent;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
