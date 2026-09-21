.class public abstract Lorg/koin/android/scope/ScopeService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lorg/koin/android/scope/AndroidScopeComponent;


# instance fields
.field private final scope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    invoke-static {p0}, Lorg/koin/android/scope/ServiceExtKt;->serviceScope(Landroid/app/Service;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/android/scope/ScopeService;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public getScope()Lorg/koin/core/scope/Scope;
    .registers 1

    .line 31
    iget-object p0, p0, Lorg/koin/android/scope/ScopeService;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method public onCloseScope()V
    .registers 1

    .line 29
    invoke-static {p0}, Lorg/koin/android/scope/AndroidScopeComponent$DefaultImpls;->onCloseScope(Lorg/koin/android/scope/AndroidScopeComponent;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    if-eqz p0, :cond_a

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .registers 1

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    invoke-static {p0}, Lorg/koin/android/scope/ServiceExtKt;->destroyServiceScope(Landroid/app/Service;)V

    return-void
.end method
