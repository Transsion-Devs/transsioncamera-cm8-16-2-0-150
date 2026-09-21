.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->runTopBarTranslateAnimator(I)V
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

    .line 1752
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1755
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1756
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1761
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1762
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1763
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_25

    .line 1764
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmCurPreviewValue(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 1765
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    :cond_25
    return-void
.end method
