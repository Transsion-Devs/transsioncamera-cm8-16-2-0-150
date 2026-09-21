.class public interface abstract Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;
.implements Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onGestureTouchEvent(Landroid/view/MotionEvent;)V
.end method
