.class Lcom/transsion/camera/app/BaseCameraActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/BaseCameraActivity;->setThumbnailTransition(Landroid/view/View;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;

.field final synthetic val$baseRect:Landroid/graphics/Rect;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$thumbnailView:Landroid/view/View;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6

    .line 1850
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$baseRect:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$thumbnailView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v0, -0x14

    .line 1853
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1854
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$misSupportThumbnailTransition(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 1855
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "setThumbnailTransition"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->getJpegHasProWaterMark()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v2, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$baseRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->processBitmap(Landroid/graphics/Rect;ILandroid/net/Uri;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmThumbnailTransitionSuccess(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 1858
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$thumbnailView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$6$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/BaseCameraActivity$6$1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity$6;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1868
    :cond_3e
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
