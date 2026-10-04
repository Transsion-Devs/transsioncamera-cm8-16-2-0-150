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

.field final synthetic val$dismissVersion:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;I)V
    .registers 3

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->val$dismissVersion:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 335
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 336
    iget p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->val$dismissVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupOperationVersion(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v0

    if-eq p1, v0, :cond_36

    .line 337
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissPopup onAnimationCancel intercepted! dismissVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->val$dismissVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupOperationVersion(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissCancel()V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 318
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 319
    iget p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->val$dismissVersion:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupOperationVersion(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v0

    if-eq p1, v0, :cond_36

    .line 320
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissPopup onAnimationEnd intercepted! dismissVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->val$dismissVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupOperationVersion(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 330
    :cond_71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x16f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 348
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissStart()V

    :cond_14
    return-void
.end method
