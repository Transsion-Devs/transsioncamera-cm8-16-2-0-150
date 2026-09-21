.class public Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBottomLine1Length:F

.field private mBottomLine1VertexX:F

.field private mBottomLine1VertexY:F

.field private mBottomLine2Length:F

.field private mBottomLine2VertexX:F

.field private mBottomLine2VertexY:F

.field private mCircleOriginalRadius:F

.field private mCirclePointX:F

.field private mCirclePointY:F

.field private mCircleTotalChangeRadius:F

.field private mLightLine1OriginalLength:F

.field private mLightLine1TotalChangeLength:F

.field private mLightLine1VertexX:F

.field private mLightLine1VertexY:F

.field private mLightLine2OriginalLength:F

.field private mLightLine2TotalChangeLength:F

.field private mLightLine2VertexX:F

.field private mLightLine2VertexY:F

.field private mLightLine3OriginalLength:F

.field private mLightLine3TotalChangeLength:F

.field private mLightLine3VertexX:F

.field private mLightLine3VertexY:F

.field private mLightLine4OriginalLength:F

.field private mLightLine4TotalChangeLength:F

.field private mLightLine4VertexX:F

.field private mLightLine4VertexY:F

.field private mLightLine5OriginalLength:F

.field private mLightLine5TotalChangeLength:F

.field private mLightLine5VertexX:F

.field private mLightLine5VertexY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->initPaint()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->initDimenResource()V

    return-void
.end method

.method private drawBottomLines(Landroid/graphics/Path;)V
    .registers 4

    .line 154
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1Length:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2Length:F

    add-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexY:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private drawCenterCircle(FLandroid/graphics/Path;)V
    .registers 6

    .line 188
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCirclePointX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCirclePointY:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCircleOriginalRadius:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCircleTotalChangeRadius:F

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private drawLightLines(FLandroid/graphics/Path;)V
    .registers 10

    .line 161
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1OriginalLength:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1TotalChangeLength:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2OriginalLength:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2TotalChangeLength:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const-wide v2, 0x4046800000000000L    # 45.0

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexY:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2OriginalLength:F

    iget v5, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2TotalChangeLength:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 166
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexY:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3OriginalLength:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3TotalChangeLength:F

    mul-float/2addr v4, p1

    sub-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4OriginalLength:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4TotalChangeLength:F

    mul-float/2addr v4, p1

    add-float/2addr v1, v4

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexY:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4OriginalLength:F

    iget v5, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4TotalChangeLength:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 176
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5OriginalLength:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5TotalChangeLength:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexY:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;F)V
    .registers 4

    .line 88
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 89
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->drawBottomLines(Landroid/graphics/Path;)V

    .line 90
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->drawLightLines(FLandroid/graphics/Path;)V

    .line 91
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->drawCenterCircle(FLandroid/graphics/Path;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getBottomLinesParameters()V
    .registers 3

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_1_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexX:F

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_1_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1VertexY:F

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_1_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine1Length:F

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_2_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexX:F

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_2_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2VertexY:F

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_line_2_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mBottomLine2Length:F

    return-void
.end method

.method private getCenterCircleParameters()V
    .registers 3

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_circle_point_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCirclePointX:F

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_circle_point_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCirclePointY:F

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_circle_original_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCircleOriginalRadius:F

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_circle_total_change_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mCircleTotalChangeRadius:F

    return-void
.end method

.method private getLightLinesParameters()V
    .registers 3

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_1_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexX:F

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_1_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1VertexY:F

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_1_original_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1OriginalLength:F

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_1_total_change_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine1TotalChangeLength:F

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_2_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexX:F

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_2_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2VertexY:F

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_2_original_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2OriginalLength:F

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_2_total_change_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine2TotalChangeLength:F

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_3_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexX:F

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_3_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3VertexY:F

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_3_original_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3OriginalLength:F

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_3_total_change_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine3TotalChangeLength:F

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_4_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexX:F

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_4_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4VertexY:F

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_4_original_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4OriginalLength:F

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_4_total_change_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine4TotalChangeLength:F

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_5_vertex_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexX:F

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_5_vertex_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5VertexY:F

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_5_original_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5OriginalLength:F

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->light_line_5_total_change_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mLightLine5TotalChangeLength:F

    return-void
.end method

.method private initDimenResource()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->getBottomLinesParameters()V

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->getLightLinesParameters()V

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->getCenterCircleParameters()V

    return-void
.end method

.method private initPaint()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->flash_line_paint_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$dimen;->line_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 83
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPercentage:F

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->drawView(Landroid/graphics/Canvas;F)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setPercentage(F)V
    .registers 6

    .line 72
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPercentage:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_12

    return-void

    .line 75
    :cond_12
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->mPercentage:F

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
