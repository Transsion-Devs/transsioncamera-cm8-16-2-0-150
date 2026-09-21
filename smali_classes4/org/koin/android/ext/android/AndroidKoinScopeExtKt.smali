.class public final Lorg/koin/android/ext/android/AndroidKoinScopeExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;
    .registers 2
    .annotation build Lorg/koin/core/annotation/KoinInternalApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p0, Lorg/koin/android/scope/AndroidScopeComponent;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/koin/android/scope/AndroidScopeComponent;

    invoke-interface {p0}, Lorg/koin/android/scope/AndroidScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0

    .line 31
    :cond_10
    instance-of v0, p0, Lorg/koin/core/component/KoinScopeComponent;

    if-eqz v0, :cond_1b

    check-cast p0, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {p0}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0

    .line 32
    :cond_1b
    instance-of v0, p0, Lorg/koin/core/component/KoinComponent;

    if-eqz v0, :cond_2e

    check-cast p0, Lorg/koin/core/component/KoinComponent;

    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2e
    sget-object p0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {p0}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
