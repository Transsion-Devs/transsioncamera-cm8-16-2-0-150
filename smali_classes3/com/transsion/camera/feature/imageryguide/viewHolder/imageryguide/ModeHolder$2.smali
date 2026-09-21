.class Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDragging:Z

.field private startX:F

.field private startY:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 p2, 0x3

    if-eq v0, p2, :cond_41

    goto :goto_57

    .line 112
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->startX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->startY:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 114
    iget-boolean v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->mIsDragging:Z

    if-nez v3, :cond_57

    cmpl-float p2, v0, p2

    if-lez p2, :cond_39

    .line 116
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->mIsDragging:Z

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 119
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 125
    :cond_41
    iput-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->mIsDragging:Z

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    .line 108
    :cond_4b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->startX:F

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;->startY:F

    :cond_57
    :goto_57
    return v1
.end method
