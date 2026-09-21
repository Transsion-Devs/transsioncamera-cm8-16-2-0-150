.class Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSelectRecyclerViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 120
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->-$$Nest$fgetmVssItemAdapter(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 121
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->-$$Nest$fgetmVssItemAdapter(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 123
    :cond_1a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_29
    return-void
.end method
