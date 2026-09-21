.class Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p3

    move/from16 v5, p4

    .line 82
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misIn360VideoHDRState(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_28d

    .line 83
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2, v4, v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misQualityValidate(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;II)Z

    move-result v2

    if-nez v2, :cond_23

    .line 84
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "VideoQuality is not validate, return!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v13

    :cond_23
    const/4 v14, 0x1

    if-eqz v0, :cond_283

    .line 88
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto/16 :goto_283

    .line 92
    :cond_2e
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 93
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " mIsSurfaceCreated is false, return!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v13

    .line 96
    :cond_40
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    if-nez v2, :cond_6b

    .line 97
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 98
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    .line 100
    :cond_61
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " Not inited yet!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v13

    .line 104
    :cond_6b
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    const/16 v15, 0x10e

    const/16 v16, 0x5a

    if-eq v2, v4, :cond_14f

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    if-eq v2, v5, :cond_14f

    .line 106
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lucy  createFBO, surfaceWidth:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , surfaceHeight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mSurfaceWidth:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mSurfaceHeight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mOrientation:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2, v4}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fputmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;I)V

    .line 108
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2, v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fputmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;I)V

    .line 109
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v3

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$minitCameraFrameBuffer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;II)V

    .line 110
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->initWaterMark(I)V

    .line 112
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_auto_watermark"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setWaterMarkOn(Z)V

    .line 114
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 115
    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v7

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v8

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v9

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v2

    if-eqz v2, :cond_123

    move/from16 v10, v16

    goto :goto_124

    :cond_123
    move v10, v15

    :goto_124
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v11

    invoke-static/range {v6 .. v11}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateWaterMarkPosition(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIIIZ)V

    .line 118
    :cond_12d
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_mirror"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Ljava/lang/String;)V

    .line 121
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setCameraId(I)V

    .line 125
    :cond_14f
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I

    move-result-object v2

    aget v2, v2, v13

    .line 126
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v6

    .line 127
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsCaptureTriggled(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v17

    .line 128
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v3

    if-eqz v3, :cond_198

    if-eqz v17, :cond_198

    .line 129
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result v3

    if-eqz v3, :cond_198

    move v9, v6

    .line 130
    iget-object v6, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v7

    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v8

    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v3

    if-eqz v3, :cond_18b

    move/from16 v10, v16

    goto :goto_18c

    :cond_18b
    move v10, v15

    :goto_18c
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v11

    invoke-static/range {v6 .. v11}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateWaterMarkPosition(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIIIZ)V

    move/from16 v18, v9

    goto :goto_19a

    :cond_198
    move/from16 v18, v6

    .line 133
    :goto_19a
    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v3

    if-eqz v3, :cond_27d

    if-lez v2, :cond_27d

    .line 134
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 135
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v2

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I

    move-result-object v6

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I

    move-result-object v7

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[F

    move-result-object v8

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v12

    const/4 v11, 0x0

    move/from16 v9, p3

    move/from16 v10, p4

    move v3, v5

    move v5, v4

    move v4, v3

    move/from16 v3, p2

    invoke-interface/range {v2 .. v12}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->drawLiveHDR(III[I[I[FIIIZ)V

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    .line 136
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_282

    .line 137
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mshowFps(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    .line 138
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v0

    if-eqz v0, :cond_282

    if-eqz v17, :cond_266

    .line 140
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0, v13}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fputmIsCaptureTriggled(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Z)V

    .line 141
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureTriggled start, Thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I

    move-result-object v2

    aget v2, v2, v14

    move/from16 v3, p2

    invoke-static {v0, v3, v2, v4, v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mgetTextureBuffer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIII)[[B

    move-result-object v3

    .line 143
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v7

    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;

    const-string v2, "VideoHDR_Snapshot"

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;-><init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;Ljava/lang/String;[[BIII)V

    invoke-virtual {v7, v0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 155
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result v0

    if-eqz v0, :cond_282

    .line 156
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v3

    iget-object v4, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmTempOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v4

    iget-object v5, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v5

    if-eqz v5, :cond_25a

    move/from16 v5, v16

    goto :goto_25b

    :cond_25a
    move v5, v15

    :goto_25b
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v6

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateWaterMarkPosition(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIIIZ)V

    goto :goto_282

    .line 159
    :cond_266
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetDEFAULT_MATRIX()[F

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;->onRecording(I[F)V

    goto :goto_282

    :cond_27d
    const/16 v0, 0x4000

    .line 164
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_282
    :goto_282
    return v14

    .line 89
    :cond_283
    :goto_283
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "surfaceTexture isReleased! "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v14

    :cond_28d
    return v13
.end method

.method public modeInitCallback()V
    .registers 4

    .line 192
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[modeInitCallback] , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSurfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v0

    if-nez v0, :cond_55

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    :cond_55
    return-void
.end method

.method public modeResumeCallback()V
    .registers 4

    .line 208
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[modeResumeCallback]- , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsSurfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mDrawer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v0

    if-nez v0, :cond_75

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    :cond_75
    return-void
.end method

.method public modeUninitCallback()V
    .registers 4

    .line 200
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[modeUninitCallback] , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mDrawer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mdestroyFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    :cond_41
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 174
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[surfaceCreatedCallback], mIsFilterInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , sInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Z)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;->isInit()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result p1

    if-nez p1, :cond_57

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    :cond_57
    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 183
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[surfaceDestroyCallback]- , mIsFilterInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mDrawer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Z)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mdestroyFilter(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    :cond_47
    return-void
.end method
