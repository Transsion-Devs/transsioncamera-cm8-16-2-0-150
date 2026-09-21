.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopupDismissStart()V
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

    .line 1358
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1369
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1370
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmPopSettingSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1371
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1361
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1362
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmPopSettingSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmPopSettingEnable(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1363
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void
.end method
