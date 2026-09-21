.class abstract Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseProgress"
.end annotation


# instance fields
.field protected final INTERVAL_TIME:Ljava/lang/Long;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V
    .registers 4

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->INTERVAL_TIME:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)V

    return-void
.end method


# virtual methods
.method protected abstract correctAnimation(Ljava/lang/Long;)V
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected startProgress(J)V
    .registers 3

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_23
    return-void
.end method

.method protected stopProgress()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView$BaseProgress;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->-$$Nest$fgetmProgressAnimator(Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_35
    return-void
.end method
