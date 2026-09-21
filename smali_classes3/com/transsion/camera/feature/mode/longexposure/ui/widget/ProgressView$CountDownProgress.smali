.class Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;


# direct methods
.method public static synthetic $r8$lambda$3TrAg05FWYNhnZu8GTBSP39Iais(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->lambda$startProgress$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdVtT-yFIHgSLEnaHcCGIGeNWck(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->lambda$correctAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V

    return-void
.end method

.method private synthetic lambda$correctAnimation$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;F)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic lambda$startProgress$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;F)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method protected correctAnimation(Ljava/lang/Long;)V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmTotalDuration(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->INTERVAL_TIME:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-lez v0, :cond_a1

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 172
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/animation/ValueAnimator;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 181
    :cond_a1
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correctAnimation duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " animRemainderTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmRectF(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmCurrentAngle(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)F

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmPaint(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected startProgress(J)V
    .registers 5

    .line 152
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->startProgress(J)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_42

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fputmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Landroid/animation/ValueAnimator;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$CountDownProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_42
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method
