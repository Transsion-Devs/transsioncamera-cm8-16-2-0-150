.class Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->-$$Nest$msetOptionRootViewEnable(Lcom/transsion/camera/app/ui/manager/option/OptionUI;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->-$$Nest$msetOptionRootViewEnable(Lcom/transsion/camera/app/ui/manager/option/OptionUI;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$2;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->-$$Nest$msetOptionRootViewEnable(Lcom/transsion/camera/app/ui/manager/option/OptionUI;Z)V

    return-void
.end method
