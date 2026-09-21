.class public interface abstract Lorg/koin/core/component/KoinScopeComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/component/KoinScopeComponent$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract closeScope()V
.end method

.method public abstract getScope()Lorg/koin/core/scope/Scope;
.end method
