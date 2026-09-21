.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRecorderCallback"
.end annotation


# virtual methods
.method public abstract onRecorderPrepareAbort()V
.end method

.method public abstract onRecorderPreparing()V
.end method

.method public abstract onRecorderStarted()V
.end method

.method public abstract onRecorderStopped(I)V
.end method

.method public abstract onRecorderStopping(I)V
.end method
