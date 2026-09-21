.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private mIsDragging:Z

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_41

    goto :goto_57

    .line 34
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->startX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->startY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 36
    iget-boolean v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    if-nez v4, :cond_57

    cmpl-float v0, v0, v3

    if-lez v0, :cond_39

    .line 38
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 41
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 47
    :cond_41
    iput-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->mIsDragging:Z

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 30
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->startX:F

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/HorizontalRecyclerView;->startY:F

    .line 54
    :cond_57
    :goto_57
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
