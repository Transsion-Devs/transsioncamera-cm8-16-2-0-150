.class Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->startExpandScrollerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)V
    .registers 2

    .line 617
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 627
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 628
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 620
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCanvasTranslateX(F)V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$3;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->setEnable(Z)V

    return-void
.end method
