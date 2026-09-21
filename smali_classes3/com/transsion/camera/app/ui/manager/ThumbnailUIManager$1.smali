.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IThumbnailController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;


# direct methods
.method public static synthetic $r8$lambda$XzMn69Ac9z01PvZlbBZ-Yn-aURQ(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->lambda$updateThumbnailUIEnable$0(Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateThumbnailUIEnable$0(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$monThumbnailUIEnable(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    return-void

    .line 76
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method public isPendingClick()Z
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->isPendingClick()Z

    move-result p0

    return p0
.end method

.method public updateThumbnailUIEnable(Z)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 72
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method
