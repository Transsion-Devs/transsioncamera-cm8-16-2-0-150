.class Lcom/transsion/camera/app/ui/widget/BreathingView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/BreathingView;->resetAnimationListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/BreathingView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/BreathingView;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BreathingView$2;->this$0:Lcom/transsion/camera/app/ui/widget/BreathingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BreathingView$2;->this$0:Lcom/transsion/camera/app/ui/widget/BreathingView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/BreathingView;->-$$Nest$fgetmHadler(Lcom/transsion/camera/app/ui/widget/BreathingView;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
