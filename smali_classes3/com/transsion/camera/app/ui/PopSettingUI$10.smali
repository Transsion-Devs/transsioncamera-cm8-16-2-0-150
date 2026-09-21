.class Lcom/transsion/camera/app/ui/PopSettingUI$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->createShowPopSettingAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 2

    .line 1962
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1978
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0xfa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1979
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1980
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1981
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1972
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0xfa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1973
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1965
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1966
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v1, 0xf9

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1967
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$10;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void
.end method
