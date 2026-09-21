.class public Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentAngle:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mProcessingDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private final mRectF:Landroid/graphics/RectF;

.field private final mStrokeWidth:F

.field private mTotalDuration:Ljava/lang/Long;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mCurrentAngle:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaint(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectF(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/RectF;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalDuration(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Ljava/lang/Long;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mTotalDuration:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mCurrentAngle:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mRectF:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_capture_progress_stroke_width:I

    .line 65
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mStrokeWidth:F

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_shutter_processing:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProcessingDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mPaint:Landroid/graphics/Paint;

    .line 69
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p0, -0x1

    .line 71
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    if-eqz p0, :cond_a

    .line 112
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->onDraw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 81
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mRectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mStrokeWidth:F

    int-to-float p1, p1

    sub-float/2addr p1, p0

    int-to-float p2, p2

    sub-float/2addr p2, p0

    invoke-virtual {p3, p0, p0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public startProgress()V
    .registers 4

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startProgress"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProcessingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$ProcessingProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    const-wide/16 v1, 0x0

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->startProgress(J)V

    return-void
.end method

.method public startProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 5

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProgress duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getTimerStyle()Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    goto :goto_2e

    .line 89
    :cond_27
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    .line 91
    :goto_2e
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mTotalDuration:Ljava/lang/Long;

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->startProgress(J)V

    return-void
.end method

.method public stopProgress()V
    .registers 3

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopProgress"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    if-eqz p0, :cond_e

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->stopProgress()V

    :cond_e
    return-void
.end method

.method public updateTime(J)V
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->mProgress:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;

    if-eqz p0, :cond_b

    .line 118
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->correctAnimation(Ljava/lang/Long;)V

    :cond_b
    return-void
.end method
