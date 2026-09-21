.class Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->initSelectRecyclerViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$6;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 393
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$6;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->-$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_f
    return-void
.end method
