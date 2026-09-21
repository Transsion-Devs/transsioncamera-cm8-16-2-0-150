.class public interface abstract Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrepareCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFailed(Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSucceed(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;)V"
        }
    .end annotation
.end method
