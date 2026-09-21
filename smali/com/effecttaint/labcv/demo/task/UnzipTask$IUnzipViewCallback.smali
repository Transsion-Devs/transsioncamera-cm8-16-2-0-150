.class public interface abstract Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/demo/task/UnzipTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUnzipViewCallback"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract onEndTask(Z)V
.end method

.method public abstract onStartTask()V
.end method
