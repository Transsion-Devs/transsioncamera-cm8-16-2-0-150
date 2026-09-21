.class public interface abstract Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/RecordInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLensResultCallback"
.end annotation


# virtual methods
.method public abstract onError(IILjava/lang/String;)V
.end method

.method public abstract onInfo(IIILjava/lang/String;)V
.end method

.method public abstract onSuccess(IFI)V
.end method
