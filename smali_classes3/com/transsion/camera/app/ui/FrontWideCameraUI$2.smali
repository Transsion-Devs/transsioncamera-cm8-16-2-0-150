.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_14

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 812
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    return-void
.end method
