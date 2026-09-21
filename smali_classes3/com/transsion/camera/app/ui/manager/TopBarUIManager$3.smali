.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 1670
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    .line 1687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1688
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationEnd()V

    :cond_11
    return-void
.end method

.method public onAnimationStart()V
    .registers 2

    .line 1673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1674
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationStart()V

    :cond_11
    return-void
.end method

.method public onAnimationUpdate(F)V
    .registers 3

    .line 1680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationUpdate(F)V

    :cond_11
    return-void
.end method
