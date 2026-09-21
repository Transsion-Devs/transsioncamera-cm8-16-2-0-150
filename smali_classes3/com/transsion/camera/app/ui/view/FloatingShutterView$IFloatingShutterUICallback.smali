.class public interface abstract Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/FloatingShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFloatingShutterUICallback"
.end annotation


# virtual methods
.method public abstract onFloatingCameraButtonTouchDown()V
.end method

.method public abstract onFloatingCameraButtonTouchMoving(Landroid/graphics/Rect;)V
.end method

.method public abstract onFloatingShutterUIRemoved()V
.end method

.method public abstract onFloatingShutterUITouchUp(Landroid/graphics/Rect;)Z
.end method

.method public abstract onGotoDetailPage()V
.end method

.method public abstract onTriggerShutterClick()V
.end method
