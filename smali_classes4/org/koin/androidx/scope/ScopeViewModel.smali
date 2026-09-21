.class public abstract Lorg/koin/androidx/scope/ScopeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lorg/koin/core/component/KoinScopeComponent;


# annotations
.annotation runtime Lorg/koin/core/annotation/KoinExperimentalAPI;
.end annotation


# instance fields
.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    invoke-static {p0, p0}, Lorg/koin/core/component/KoinScopeComponentKt;->createScope(Lorg/koin/core/component/KoinScopeComponent;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/androidx/scope/ScopeViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-void
.end method


# virtual methods
.method public closeScope()V
    .registers 1

    .line 19
    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponent$DefaultImpls;->closeScope(Lorg/koin/core/component/KoinScopeComponent;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .registers 1

    .line 19
    invoke-static {p0}, Lorg/koin/core/component/KoinScopeComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinScopeComponent;)Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method

.method public getScope()Lorg/koin/core/scope/Scope;
    .registers 1

    .line 22
    iget-object p0, p0, Lorg/koin/androidx/scope/ScopeViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method protected onCleared()V
    .registers 1

    .line 30
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 31
    invoke-virtual {p0}, Lorg/koin/androidx/scope/ScopeViewModel;->onCloseScope()V

    .line 32
    invoke-virtual {p0}, Lorg/koin/androidx/scope/ScopeViewModel;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->close()V

    return-void
.end method

.method public onCloseScope()V
    .registers 1

    return-void
.end method
