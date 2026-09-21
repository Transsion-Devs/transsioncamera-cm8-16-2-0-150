.class Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountUpProgress"
.end annotation


# static fields
.field private static final DURATION:J = 0x1f40L


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;


# direct methods
.method public static synthetic $r8$lambda$MmlUTCGyBiYDCRZIhztXO1zFVaE(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->lambda$startProgress$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V

    return-void
.end method

.method private synthetic lambda$startProgress$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;F)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method protected correctAnimation(Ljava/lang/Long;)V
    .registers 2

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmRectF(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmPaint(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/Paint;

    move-result-object v6

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected startProgress(J)V
    .registers 5

    .line 197
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->startProgress(J)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_58

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/animation/ValueAnimator;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountUpProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_58
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
