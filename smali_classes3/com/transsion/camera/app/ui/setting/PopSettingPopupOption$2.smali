.class Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x77

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 365
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x77

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 349
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$mclearContentListDrawable(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 356
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onDismiss()V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 373
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissStart()V

    :cond_1f
    return-void
.end method
