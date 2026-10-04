.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 2

    .line 1797
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkinColorChanged(I)V
    .registers 2

    .line 1800
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;I)V

    return-void
.end method

.method public onSkinColorMenuHide()V
    .registers 3

    .line 1810
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSkinColorMenuHide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1811
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1812
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mshowRecyclerViewAnim(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2b

    .line 1814
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1815
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1819
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3c
    return-void
.end method

.method public onSkinColorMenuShow()V
    .registers 2

    .line 1805
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onSkinColorMenuShow"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSkinColorTouchEnd()V
    .registers 2

    .line 1832
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1833
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x18a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onSkinColorTouching()V
    .registers 2

    .line 1825
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1826
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$10;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x189

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
