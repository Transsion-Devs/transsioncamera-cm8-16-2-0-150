.class public Lcom/transsion/camera/app/ui/DVModePreviewCover;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final blackArea:Landroid/graphics/RectF;

.field private roundSize:F

.field private final viewFullPath:Landroid/graphics/Path;

.field private final visiblePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->viewFullPath:Landroid/graphics/Path;

    .line 33
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->visiblePath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->roundSize:F

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->blackArea:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->viewFullPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->visiblePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->visiblePath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->blackArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->blackArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->blackArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->roundSize:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 50
    iget-object v7, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->viewFullPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v11, v0

    move-object v12, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->viewFullPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->visiblePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->viewFullPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 p0, -0x1000000

    .line 53
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public updateParams(FLandroid/graphics/RectF;)V
    .registers 3

    .line 39
    iput p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->roundSize:F

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/app/ui/DVModePreviewCover;->blackArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
