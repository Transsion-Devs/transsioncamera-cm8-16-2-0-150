.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 2298
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkinColorChanged(I)V
    .registers 3

    .line 2301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2302
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSkinColorChanged mSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2305
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V

    return-void
.end method

.method public onSkinColorMenuHide()V
    .registers 3

    .line 2315
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSkinColorMenuHide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2316
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2317
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mshowRecyclerViewAnim(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2b

    .line 2319
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2323
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2324
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3c
    return-void
.end method

.method public onSkinColorMenuShow()V
    .registers 2

    .line 2310
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onSkinColorMenuShow"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSkinColorTouchEnd()V
    .registers 2

    .line 2337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2338
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x18a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onSkinColorTouching()V
    .registers 2

    .line 2330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2331
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$11;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x189

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
