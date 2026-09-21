.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopupShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 2

    .line 1197
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1207
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$msetLeftTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1200
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1201
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$msetLeftTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    .line 1202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
