.class Lcom/transsion/camera/app/ui/ModePickerUI$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->playMoreModeGuideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentTime:J

.field mLastFrameTime:J

.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 4

    .line 2047
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2049
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->mCurrentTime:J

    .line 2050
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->mLastFrameTime:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 2053
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->mCurrentTime:J

    .line 2054
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->mLastFrameTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2e

    .line 2055
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->mLastFrameTime:J

    .line 2056
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2057
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2058
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$11;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeRightGuide(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_2e
    return-void
.end method
