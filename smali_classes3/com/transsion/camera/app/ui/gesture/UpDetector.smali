.class public Lcom/transsion/camera/app/ui/gesture/UpDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/UpDetector;->mListener:Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;

    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .registers 4

    .line 30
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/UpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_5

    goto :goto_e

    .line 33
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/gesture/UpDetector;->mStillDown:Z

    if-nez p1, :cond_e

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/UpDetector;->mListener:Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;->onUpEvent(Landroid/view/MotionEvent;)V

    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    const/4 v2, 0x5

    if-eq v0, v2, :cond_17

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/UpDetector;->setState(ZLandroid/view/MotionEvent;)V

    return-void

    .line 43
    :cond_17
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/gesture/UpDetector;->setState(ZLandroid/view/MotionEvent;)V

    return-void
.end method
