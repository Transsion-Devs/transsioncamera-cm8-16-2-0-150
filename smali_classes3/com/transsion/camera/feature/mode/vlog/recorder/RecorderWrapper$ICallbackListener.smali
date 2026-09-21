.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallbackListener"
.end annotation


# virtual methods
.method public abstract onRecorderFail(I)V
.end method

.method public abstract onRecorderPrepareAbort()V
.end method

.method public abstract onRecorderPreparing()V
.end method

.method public abstract onRecorderStarted()V
.end method

.method public onRecorderStopped(Ljava/lang/String;JLjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRecorderStopped(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 8

    .line 0
    return-void
.end method

.method public abstract onRecorderStopping()V
.end method

.method public abstract onStartRecognize()V
.end method
