.class Lcom/transsion/camera/app/ui/ModePickerUI$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerRootUI(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

.field final synthetic val$isNeedStartDelay:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V
    .registers 3

    .line 2429
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->val$isNeedStartDelay:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 2448
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$menableModePickerUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 2450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 2455
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2456
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$menableModePickerUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 2457
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 2432
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mode picker visibility: show, onAnimationStart: set modepicker visible"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2433
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    .line 2434
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->val$isNeedStartDelay:Z

    if-eqz p1, :cond_23

    .line 2435
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRootAnimatorStartAction(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    .line 2437
    :cond_23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_37

    .line 2438
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRootAnimatorStartAction(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_46

    .line 2440
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRootAnimatorStartAction(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2443
    :goto_46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$12;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void
.end method
