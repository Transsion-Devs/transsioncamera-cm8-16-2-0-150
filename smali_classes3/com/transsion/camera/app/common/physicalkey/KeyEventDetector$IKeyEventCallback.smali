.class public interface abstract Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKeyEventCallback"
.end annotation


# virtual methods
.method public abstract onClick(I)V
.end method

.method public abstract onClickImpl(I)V
.end method

.method public abstract onLongPress(I)V
.end method

.method public abstract onLongPressCancel(I)V
.end method

.method public abstract onLongPressStart(I)V
.end method

.method public abstract onShoulderButtonSwipeEnd()V
.end method

.method public abstract onShoulderButtonSwiping(ZI)V
.end method
