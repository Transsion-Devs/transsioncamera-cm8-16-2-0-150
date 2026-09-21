.class public interface abstract Lcom/transsion/camera/app/ui/IHintUIHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# virtual methods
.method public abstract getGuideTwinkleDuration()J
.end method

.method public abstract getPreviewRect()Landroid/graphics/Rect;
.end method

.method public abstract init(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public abstract isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z
.end method

.method public abstract notifyCameraOperateActionToUI(I)V
.end method

.method public abstract setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateAnalytics(ZZLjava/util/function/BiConsumer;)V
.end method

.method public abstract updateHintRootLayout(Ljava/util/function/Supplier;)Landroid/graphics/Rect;
.end method

.method public abstract updateProgressBarLayout(IZI)V
.end method

.method public abstract updateTwinkleGuideInfo(Ljava/lang/String;)Z
.end method
