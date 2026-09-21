.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewHoverAnimator(IIIIIIILcom/transsion/camera/app/common/IAppUI$AnimationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field final synthetic val$animationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V
    .registers 3

    .line 1414
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->val$animationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1424
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->val$animationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    if-ne p1, v0, :cond_c

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setDVModeCoverVisible(Z)V

    .line 1432
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    sget-object p1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1417
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->val$animationType:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    if-eq p1, v0, :cond_c

    .line 1418
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setDVModeCoverVisible(Z)V

    :cond_c
    return-void
.end method
