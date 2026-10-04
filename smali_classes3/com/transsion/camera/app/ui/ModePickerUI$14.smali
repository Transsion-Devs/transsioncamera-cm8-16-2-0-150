.class Lcom/transsion/camera/app/ui/ModePickerUI$14;
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


# direct methods
.method public static synthetic $r8$lambda$Am3ZHex_7w8slGaM9hhxiqDwTDQ(Lcom/transsion/camera/app/ui/ModePickerUI$14;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$14;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLRDb4Jjg8ueBbxDi0jWAFFP0vI(Lcom/transsion/camera/app/ui/ModePickerUI$14;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$14;->lambda$onAnimationCancel$1()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 2300
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$1()V
    .registers 3

    .line 2332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_26

    .line 2333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2337
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 3

    .line 2314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_26

    .line 2315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRightRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2317
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2319
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 2328
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    .line 2330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$menableModePickerUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 2331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$14$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$14$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$14;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2340
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onAnimationCancel mIsAnimationCanceled is true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 2309
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd mIsAnimationCanceled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$menableModePickerUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 2311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 2312
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mode picker visibility: hide, onAnimationEnd: set mode picker GONE"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$14$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$14$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$14;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2323
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsAnimationCanceled(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 2303
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$14;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    return-void
.end method
