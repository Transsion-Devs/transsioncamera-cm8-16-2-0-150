.class Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->updateTabSwitchLayout(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

.field final synthetic val$tabInternalMarginResId:I

.field final synthetic val$tabMenuContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$tabTargetLeftMargin:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;ILandroid/widget/FrameLayout$LayoutParams;I)V
    .registers 5

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    iput p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabInternalMarginResId:I

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabMenuContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabTargetLeftMargin:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 403
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmTabMenu(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabInternalMarginResId:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMarginByResId(I)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabMenuContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabTargetLeftMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmTabMenuContainer(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$1;->val$tabMenuContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
