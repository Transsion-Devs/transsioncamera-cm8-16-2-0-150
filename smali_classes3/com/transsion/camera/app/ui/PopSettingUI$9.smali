.class Lcom/transsion/camera/app/ui/PopSettingUI$9;
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

.field final synthetic val$animationVersion:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V
    .registers 3

    .line 1453
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->val$animationVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 1474
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->val$animationVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v0

    if-eq p1, v0, :cond_33

    .line 1475
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createShowPopSettingAnimation onAnimationCancel intercepted! animVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->val$animationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1479
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0xfa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1480
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1481
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1482
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1463
    iget p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->val$animationVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result v0

    if-eq p1, v0, :cond_33

    .line 1464
    invoke-static {}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createShowPopSettingAnimation onAnimationEnd intercepted! animVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->val$animationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingAnimationVersion(Lcom/transsion/camera/app/ui/PopSettingUI;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1468
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0xfa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

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

    .line 1456
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopSettingContainer(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v1, 0xf9

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$9;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void
.end method
