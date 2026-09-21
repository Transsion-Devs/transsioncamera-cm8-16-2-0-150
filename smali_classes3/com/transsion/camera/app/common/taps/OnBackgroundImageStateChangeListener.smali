.class public interface abstract Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onBackgroundImageFailed(J)V
    .registers 3

    return-void
.end method

.method public varargs abstract onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V
.end method

.method public varargs abstract onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V
.end method

.method public abstract onBackgroundImageSaveStarted(J)V
.end method
