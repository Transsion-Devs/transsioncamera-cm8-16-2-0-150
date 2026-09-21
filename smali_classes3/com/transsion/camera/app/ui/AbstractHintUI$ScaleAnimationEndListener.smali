.class Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleAnimationEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 2

    .line 1443
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1446
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    if-eqz v0, :cond_e

    .line 1447
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    .line 1448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    :cond_e
    return-void
.end method
