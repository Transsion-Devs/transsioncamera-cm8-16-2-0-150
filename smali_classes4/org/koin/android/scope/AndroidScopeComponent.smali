.class public interface abstract Lorg/koin/android/scope/AndroidScopeComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/android/scope/AndroidScopeComponent$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getScope()Lorg/koin/core/scope/Scope;
.end method

.method public abstract onCloseScope()V
.end method
