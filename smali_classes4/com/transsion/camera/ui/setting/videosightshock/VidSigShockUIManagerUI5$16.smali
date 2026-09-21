.class Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandToDefaultAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

.field final synthetic val$targetTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;Landroid/widget/TextView;)V
    .registers 3

    .line 1053
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->val$targetTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1065
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1066
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->val$targetTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmHoverCollapsedTabContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmCollapsedTabExpandArrow(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmCollapsedTabTextView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->val$targetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmCollapsedTabExpandArrow(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$16;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmHoverCollapsedTabContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
