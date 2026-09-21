.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmRecommendPopupTipsView(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_4c

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4c

    .line 226
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ai frame tips show"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmRecommendPopupTipsView(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$string;->ai_auto_zoom_try_hint:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->show(Landroid/view/View;Ljava/lang/String;I)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    const-string v0, "_global_scope"

    const/4 v1, 0x0

    const-string v2, "key_ai_frame_pop_up_on_thunmbnail_tips_showed"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4c
    :goto_4c
    return-void
.end method
