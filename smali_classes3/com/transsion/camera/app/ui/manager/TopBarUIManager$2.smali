.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

.field final synthetic val$livePhotoOn:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)V
    .registers 3

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->val$livePhotoOn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/4 p1, 0x0

    # setter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$202(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 331
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->val$livePhotoOn:Z

    if-eqz p1, :cond_e

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmTopBarUI(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playLivePhotoLottieAnimation(I)V

    :cond_e
    return-void
.end method
