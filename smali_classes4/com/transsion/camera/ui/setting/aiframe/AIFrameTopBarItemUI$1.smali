.class Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->-$$Nest$fgetmRecommendPopupTipsView(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->ai_frame_try_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x800055

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->show(Landroid/view/View;Ljava/lang/String;I)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    const-string v0, "_global_scope"

    const/4 v1, 0x0

    const-string v2, "key_ai_frame_pop_up_tips_showed"

    const-string v3, "true"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
