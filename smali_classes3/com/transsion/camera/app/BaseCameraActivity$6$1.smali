.class Lcom/transsion/camera/app/BaseCameraActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/BaseCameraActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/BaseCameraActivity$6;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity$6;)V
    .registers 2

    .line 1858
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$6$1;->this$1:Lcom/transsion/camera/app/BaseCameraActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1861
    const-string v0, "setThumbnailTransition gotoGallery"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1862
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6$1;->this$1:Lcom/transsion/camera/app/BaseCameraActivity$6;

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v1, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$6;->val$thumbnailView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmThumbnailTransitionSuccess(Lcom/transsion/camera/app/BaseCameraActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->gotoGallery(Landroid/view/View;IZ)Landroid/graphics/Bitmap;

    .line 1863
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method
