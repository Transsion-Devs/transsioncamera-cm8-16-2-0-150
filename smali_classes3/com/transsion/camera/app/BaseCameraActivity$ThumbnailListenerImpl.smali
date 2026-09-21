.class Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 1718
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Landroid/view/View;)V
    .registers 10

    .line 1721
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_1b

    .line 1722
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_1b

    .line 1723
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$misOneshotForMore(Lcom/transsion/camera/app/BaseCameraActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShot2ClickThumbnail(Z)V

    .line 1726
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->thumbnail_rounded_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 1727
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPhotosSupportProcessingApi:Z

    if-eqz v0, :cond_40

    .line 1729
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v3, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmThumbnailMimeType(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v5

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/BaseCameraActivity;->gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V

    goto :goto_5d

    :cond_40
    move-object v6, p1

    .line 1731
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 1733
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onThumbnailClicked,isProcessing is true,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1736
    :cond_51
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v3, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmThumbnailMimeType(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/BaseCameraActivity;->gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V

    .line 1738
    :goto_5d
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onThumbnailClicked()V

    return-void
.end method

.method public onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V
    .registers 4

    .line 1743
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    return-void
.end method
