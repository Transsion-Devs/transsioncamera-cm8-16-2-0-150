.class public Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mDuration:J

.field private mMinRecordingTime:J

.field private mProgress:J

.field private mProgressBackPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x3a98

    .line 27
    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mDuration:J

    const-wide/16 p2, 0x0

    .line 28
    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgress:J

    .line 31
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private angle()I
    .registers 5

    .line 90
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgress:J

    const-wide/16 v2, 0x168

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mDuration:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 7

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 57
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_record_progress_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRedPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRedPaint:Landroid/graphics/Paint;

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_limit_recorder_progress_red_color:I

    invoke-virtual {v0, v4, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mWhitePaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mWhitePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mWhitePaint:Landroid/graphics/Paint;

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_recorder_progress_white_color:I

    invoke-virtual {v0, v4, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgressBackPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgressBackPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgressBackPaint:Landroid/graphics/Paint;

    sget v1, Lcom/transsion/camera/feature/vlog/R$color;->vlog_recorder_segment_color:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private mStoryboardAngle()I
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mMinRecordingTime:J

    const-wide/16 v2, 0x168

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mDuration:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgressBackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v6, v0

    .line 85
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->angle()I

    move-result p1

    int-to-float v9, p1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStoryboardAngle()I

    move-result p1

    add-int/lit8 p1, p1, -0x5a

    int-to-float v8, p1

    iget-object v11, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRedPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    int-to-float p0, v2

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateMinRecordingTime(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mMinRecordingTime:J

    return-void
.end method

.method public updateProgress(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mProgress:J

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateTotalDuration(J)V
    .registers 3

    .line 102
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->mDuration:J

    return-void
.end method
