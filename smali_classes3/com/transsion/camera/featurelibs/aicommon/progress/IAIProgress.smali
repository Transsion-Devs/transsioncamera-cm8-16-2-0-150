.class public interface abstract Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;
    }
.end annotation


# virtual methods
.method public abstract finishProgress()V
.end method

.method public abstract setProgressListener(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;)V
.end method

.method public abstract startProgress()V
.end method

.method public abstract terminateProgress()V
.end method
