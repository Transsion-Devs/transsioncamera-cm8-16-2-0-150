.class Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ThermalThrottleUI;->fadeIn(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

.field final synthetic val$temperature:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;ILandroid/view/View;)V
    .registers 4

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->val$temperature:I

    iput-object p3, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->hide(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 246
    iget p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->val$temperature:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iput-boolean v0, p1, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShow:Z

    goto :goto_11

    :cond_a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_11

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iput-boolean v0, p1, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShowVideo:Z

    .line 251
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
