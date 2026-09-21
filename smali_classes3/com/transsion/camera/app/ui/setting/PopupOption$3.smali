.class Lcom/transsion/camera/app/ui/setting/PopupOption$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 328
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissCancel()V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 316
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 323
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 336
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissStart()V

    :cond_14
    return-void
.end method
