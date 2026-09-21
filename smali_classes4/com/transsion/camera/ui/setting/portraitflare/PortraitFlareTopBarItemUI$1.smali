.class Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->startLottieAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 204
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z
    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->access$002(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;Z)Z

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->access$200(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->-$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->-$$Nest$fgetmAnimFrameLayout(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 214
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->access$300(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;->access$400(Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlareTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method
