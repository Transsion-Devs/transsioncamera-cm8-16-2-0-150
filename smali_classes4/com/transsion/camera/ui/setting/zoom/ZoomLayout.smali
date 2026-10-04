.class public Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsFakeDownEventNeeded:Z

.field private mIsTouchInProgress:Z

.field private mTouchEventTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsTouchInProgress:Z

    .line 61
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2e

    .line 64
    :cond_13
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    if-eqz v0, :cond_28

    .line 65
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 67
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 69
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    .line 72
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 75
    :goto_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3c

    goto :goto_3d

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    .line 78
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsTouchInProgress:Z

    .line 79
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    return v0
.end method

.method public setTouchEventTarget(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 36
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setTouchEventTarget, target is not a child"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_10
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsTouchInProgress:Z

    if-nez v0, :cond_1c

    .line 41
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setTouchEventTarget, mIsTouchInProgress is false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    if-ne v0, p1, :cond_21

    goto :goto_28

    .line 48
    :cond_21
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    :cond_28
    :goto_28
    return-void
.end method
