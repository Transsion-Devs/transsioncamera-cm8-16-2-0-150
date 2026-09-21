.class public abstract Lorg/koin/androidx/scope/ScopeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lorg/koin/android/scope/AndroidScopeComponent;


# instance fields
.field private final scope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/koin/androidx/scope/ScopeFragment;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v1, p1, v0}, Lorg/koin/androidx/scope/FragmentExtKt;->fragmentScope$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/androidx/scope/ScopeFragment;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 33
    :cond_5
    invoke-direct {p0, p1}, Lorg/koin/androidx/scope/ScopeFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getScope()Lorg/koin/core/scope/Scope;
    .registers 1

    .line 37
    iget-object p0, p0, Lorg/koin/androidx/scope/ScopeFragment;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method public onCloseScope()V
    .registers 1

    .line 33
    invoke-static {p0}, Lorg/koin/android/scope/AndroidScopeComponent$DefaultImpls;->onCloseScope(Lorg/koin/android/scope/AndroidScopeComponent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lorg/koin/androidx/scope/ScopeFragment;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    if-eqz p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
