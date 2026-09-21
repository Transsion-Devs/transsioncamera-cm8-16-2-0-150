.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->initSelectRecyclerViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$4;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$4;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_f
    return-void
.end method
