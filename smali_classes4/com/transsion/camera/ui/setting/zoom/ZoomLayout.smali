.class public Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsFakeDownEventNeeded:Z

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

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    if-nez v0, :cond_9

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 54
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    if-eqz v0, :cond_1f

    .line 55
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 57
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    .line 62
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_35

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_34

    goto :goto_35

    :cond_34
    return v0

    :cond_35
    :goto_35
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    return v0
.end method

.method public setTouchEventTarget(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 35
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setTouchEventTarget, target is not a child"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    if-ne v0, p1, :cond_15

    goto :goto_1c

    .line 42
    :cond_15
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mTouchEventTarget:Landroid/view/View;

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->mIsFakeDownEventNeeded:Z

    :cond_1c
    :goto_1c
    return-void
.end method
