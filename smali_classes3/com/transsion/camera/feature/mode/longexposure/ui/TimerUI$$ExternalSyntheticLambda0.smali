.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->$r8$lambda$CAdiuHiXkm81gf1OMrvRgzIM4E4(Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
