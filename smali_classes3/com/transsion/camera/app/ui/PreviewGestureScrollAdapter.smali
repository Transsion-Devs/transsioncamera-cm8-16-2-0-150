.class public Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# instance fields
.field private final mScroll:Lcom/transsion/camera/app/ui/IScroll;

.field private mScrolling:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/IScroll;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScroll:Lcom/transsion/camera/app/ui/IScroll;

    return-void
.end method

.method private begin()V
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScrolling:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScrolling:Z

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScroll:Lcom/transsion/camera/app/ui/IScroll;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->startScroll()V

    :cond_c
    return-void
.end method

.method private end()V
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScrolling:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScrolling:Z

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScroll:Lcom/transsion/camera/app/ui/IScroll;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->stopScroll()V

    :cond_c
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScroll:Lcom/transsion/camera/app/ui/IScroll;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/ui/IScroll;->down(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->end()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_1f

    :cond_12
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1f

    return v0

    .line 31
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->begin()V

    .line 32
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScrolling:Z

    if-eqz p1, :cond_2b

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->mScroll:Lcom/transsion/camera/app/ui/IScroll;

    invoke-interface {p0, p3, p4}, Lcom/transsion/camera/app/ui/IScroll;->scroll(FF)V

    :cond_2b
    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->end()V

    const/4 p0, 0x0

    return p0
.end method
