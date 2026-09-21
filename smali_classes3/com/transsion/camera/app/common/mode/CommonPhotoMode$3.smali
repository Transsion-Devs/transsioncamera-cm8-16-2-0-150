.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

.field final synthetic val$timestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 3

    .line 2184
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->val$timestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 2187
    const-string v0, "onFakePostViewData"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_173

    .line 2190
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_173

    .line 2191
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_173

    .line 2195
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFakePostViewData,mPostViewCallbackNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmPostViewCallbackNumber(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mIsSupportPostView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2205
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_62

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmThumbNailType(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-ne v1, v4, :cond_62

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz v1, :cond_62

    .line 2206
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fputmIsProcessingUriCreated(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V

    .line 2209
    :cond_62
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->getScreenShotThumbCropSize(Landroid/content/Context;)I

    move-result v1

    .line 2212
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget v5, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v6, 0x4

    if-eq v5, v4, :cond_86

    const/4 v7, 0x2

    if-eq v5, v7, :cond_86

    if-eq v5, v6, :cond_86

    const/4 v8, 0x5

    if-ne v5, v8, :cond_7a

    goto :goto_86

    .line 2218
    :cond_7a
    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    goto :goto_91

    .line 2216
    :cond_86
    :goto_86
    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v2, v6

    .line 2220
    :goto_91
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v5, v5, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v5

    .line 2221
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v6, v0

    .line 2220
    invoke-interface {v5, v2, v6, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2222
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CapturePerformance] snapshot for thumbnail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2224
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v5, v5, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 2225
    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v2

    if-ne v2, v4, :cond_db

    move v2, v4

    goto :goto_dc

    :cond_db
    move v2, v3

    .line 2226
    :goto_dc
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v5, v5, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_mirror"

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v0, :cond_16f

    .line 2227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_f6

    goto/16 :goto_16f

    .line 2231
    :cond_f6
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v6

    if-eqz v2, :cond_101

    if-nez v5, :cond_101

    move v3, v4

    :cond_101
    invoke-static {v0, v6, v3}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2232
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->val$timestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-static {v2, v4, v0, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$mprocessQCThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    move-result v2

    if-eqz v2, :cond_113

    .line 2234
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 2237
    :cond_113
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmCaptureAnimationByThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 2238
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeNeedNewCaptureAnimation()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 2239
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x187

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_136

    .line 2241
    :cond_12d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x96

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_136
    :goto_136
    const v2, 0x3e4ccccd    # 0.2f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 2244
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->scaleDownBitmapLinearAntiAlias(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2245
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v2

    if-eqz v2, :cond_157

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v2

    if-eqz v2, :cond_157

    .line 2246
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;)V

    goto :goto_15c

    .line 2248
    :cond_157
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    .line 2250
    :goto_15c
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->val$timestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isEnable()Z

    move-result v2

    invoke-static {v1, v0, v4, p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$mdoProcessingMedia(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;ILcom/transsion/camera/app/common/mode/TimestampInfo;Z)V

    .line 2251
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 2228
    :cond_16f
    :goto_16f
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 2192
    :cond_173
    :goto_173
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method
