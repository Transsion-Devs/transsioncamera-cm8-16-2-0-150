.class Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->collapseScrollerView(Z)V
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

    .line 865
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 874
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 868
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 869
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5$10;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerStatus(Z)V

    return-void
.end method
