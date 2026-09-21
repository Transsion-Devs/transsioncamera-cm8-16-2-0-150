.class Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;


# direct methods
.method public static synthetic $r8$lambda$Jl1jCWH0eoMJFuB_6hSCExU2Pq0(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;[[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->lambda$draw$0([[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method private synthetic lambda$draw$0([[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V
    .registers 6

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mgetJpegData(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;[[III)[[B

    move-result-object p0

    const/4 p1, 0x1

    .line 120
    aget-object p0, p0, p1

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->isFlashFired()Z

    move-result p1

    const/4 p2, 0x0

    invoke-interface {p4, p2, p0, p1, p5}, Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;->onCapture([B[BZI)V

    .line 122
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "captureTriggled end, Thread = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move/from16 v4, p4

    .line 76
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$misInVideoSightShockState(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_19c

    const/4 v15, 0x1

    if-eqz v3, :cond_192

    .line 77
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_192

    .line 81
    :cond_1c
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-nez v0, :cond_47

    .line 82
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 83
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    .line 85
    :cond_3d
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " Not inited yet!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v14

    .line 89
    :cond_47
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-ne v0, v6, :cond_57

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-eq v0, v4, :cond_d4

    .line 91
    :cond_57
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFBO, surfaceWidth:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , surfaceHeight:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mSurfaceWidth:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mSurfaceHeight:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mOrientation:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0, v6}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V

    .line 93
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0, v4}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V

    .line 94
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterInited(Z)V

    .line 95
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v2

    iget-object v5, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$minitCameraFrameBuffer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;II)V

    .line 97
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v2, "key_mirror"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2, v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Ljava/lang/String;)V

    .line 101
    :cond_d4
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I

    move-result-object v0

    aget v0, v0, v14

    .line 102
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v16

    .line 103
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsCaptureTriggled(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v17

    .line 104
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    if-eqz v2, :cond_18c

    if-lez v0, :cond_18c

    .line 105
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 106
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I

    move-result-object v7

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I

    move-result-object v8

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[F

    move-result-object v9

    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v12

    const/4 v11, 0x0

    move/from16 v10, p4

    move/from16 v13, p3

    move v5, v4

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v13}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawLiveHDR(Landroid/graphics/SurfaceTexture;III[I[I[FIIZI)V

    move v4, v5

    .line 107
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    move-result-object v5

    if-eqz v5, :cond_191

    .line 109
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mshowFps(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    .line 110
    iget-object v0, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v0

    if-eqz v0, :cond_191

    const/4 v0, 0x2

    if-eqz v17, :cond_17c

    .line 112
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2, v14}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmIsCaptureTriggled(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Z)V

    .line 113
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureTriggled start, Thread = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v2, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameBuffers(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I

    move-result-object v3

    aget v0, v3, v0

    move/from16 v3, p2

    invoke-static {v2, v3, v0, v6, v4}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mgetTextureBuffer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;IIII)[[I

    move-result-object v2

    .line 115
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;

    move v3, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;[[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    goto :goto_191

    .line 125
    :cond_17c
    iget-object v1, v1, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameBufferTextures(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)[I

    move-result-object v1

    aget v0, v1, v0

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetDEFAULT_MATRIX()[F

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;->onRecording(I[F)V

    goto :goto_191

    :cond_18c
    const/16 v0, 0x4000

    .line 130
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_191
    :goto_191
    return v15

    .line 78
    :cond_192
    :goto_192
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " surfaceTexture isReleased! "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v15

    :cond_19c
    return v14
.end method

.method public modeInitCallback()V
    .registers 4

    .line 158
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [modeInitCallback] , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSurfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-nez v0, :cond_55

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    :cond_55
    return-void
.end method

.method public modeResumeCallback()V
    .registers 4

    .line 174
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [modeResumeCallback]- , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsSurfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mDrawer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-nez v0, :cond_75

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    :cond_75
    return-void
.end method

.method public modeUninitCallback()V
    .registers 4

    .line 166
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [modeUninitCallback] , mIsFilterInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mDrawer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mdestroyFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    :cond_41
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 140
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [surfaceCreatedCallback], mIsFilterInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , sInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Z)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->isInit()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result p1

    if-nez p1, :cond_57

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$minitFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    :cond_57
    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 149
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [surfaceDestroyCallback]- , mIsFilterInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mDrawer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmIsSurfaceCreated(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Z)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmIsFilterInit(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mdestroyFilter(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    :cond_47
    return-void
.end method
