.class Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/LaserFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointView"
.end annotation


# instance fields
.field point:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Landroid/content/Context;)V
    .registers 3

    .line 326
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 327
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 328
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    sget p1, Lcom/transsion/camera/R$drawable;->ic_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public createAlphaAnima()Landroid/animation/Animator;
    .registers 3

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 362
    new-array v0, v0, [F

    fill-array-data v0, :array_18

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createSoonAlphaAnima()Landroid/animation/Animator;
    .registers 3

    const/4 v0, 0x3

    .line 366
    new-array v0, v0, [F

    fill-array-data v0, :array_14

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->point:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 350
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->point:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p3

    .line 353
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->focus_view_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 343
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->-$$Nest$sfgetmSmallRectW()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPoint(Landroid/graphics/Point;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->point:Landroid/graphics/Point;

    return-void
.end method
