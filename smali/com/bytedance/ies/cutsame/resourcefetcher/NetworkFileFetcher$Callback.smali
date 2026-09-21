.class public interface abstract Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract notifyError(ILjava/lang/String;)V
.end method

.method public abstract notifyProgress(I)V
.end method

.method public abstract notifySuccess(Ljava/lang/String;)V
.end method
