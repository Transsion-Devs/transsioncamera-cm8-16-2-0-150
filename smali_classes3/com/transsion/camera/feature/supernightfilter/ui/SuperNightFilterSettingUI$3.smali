.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->inFlaterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 214
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_11

    .line 216
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmCameraOperate(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p2

    const/16 v0, 0x27

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1f

    :cond_11
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1f

    .line 218
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmCameraOperate(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p2

    const/16 v0, 0x26

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 220
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method
