.class Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appUI:Lcom/transsion/camera/app/common/IAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;->val$appUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_e

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;->val$appUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xc4

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    :cond_e
    if-nez p2, :cond_17

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;->val$appUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xc5

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_17
    return-void
.end method
