.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 926
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 930
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_11

    .line 931
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->mScrolled:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 932
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->mScrolled:Z

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->-$$Nest$msaveScrollPosition(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 936
    :cond_11
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->-$$Nest$fgetmSkyItemAdapter(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 937
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->-$$Nest$fgetmSkyItemAdapter(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2b
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_6

    :cond_5
    return-void

    :cond_6
    :goto_6
    const/4 p1, 0x1

    .line 944
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->mScrolled:Z

    return-void
.end method
