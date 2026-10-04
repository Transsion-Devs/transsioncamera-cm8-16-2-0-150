.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualVideoPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method public static synthetic $r8$lambda$FEYs6ELXLxtrerExCDQlax2Jjiw(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->lambda$surfaceChangedCallback$0(II)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method private synthetic lambda$surfaceChangedCallback$0(II)V
    .registers 4

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 630
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d2

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    if-gez v3, :cond_19

    goto/16 :goto_1d2

    .line 634
    :cond_19
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmLastPost(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)V

    .line 637
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move/from16 v7, p2

    invoke-static {v3, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmOesTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 638
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 640
    :try_start_31
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_5a

    :catch_3b
    move-exception v0

    .line 642
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTexImage exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    :cond_5a
    :goto_5a
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6e

    if-ne v2, v3, :cond_6e

    .line 647
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    .line 648
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    move v9, v5

    move v10, v6

    goto :goto_70

    :cond_6e
    move v9, v1

    move v10, v2

    .line 651
    :goto_70
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->requestTexturePair(II)[I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)V

    .line 652
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmFrameCount(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J

    move-result-wide v5

    const-wide/16 v11, 0x2

    rem-long/2addr v5, v11

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    const/16 v19, 0x1

    if-nez v5, :cond_98

    .line 653
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v5

    aget v5, v5, v4

    :goto_96
    move v8, v5

    goto :goto_a1

    .line 655
    :cond_98
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v5

    aget v5, v5, v19

    goto :goto_96

    .line 657
    :goto_a1
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_105

    .line 658
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v15

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v16

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v17

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v18

    move v11, v9

    const/4 v9, 0x1

    move v13, v10

    move v12, v11

    move v10, v6

    move v11, v8

    move-object v8, v5

    invoke-virtual/range {v8 .. v18}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    move v8, v11

    move v9, v12

    move v10, v13

    .line 661
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v12

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    const/4 v15, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    goto :goto_160

    .line 664
    :cond_105
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v12

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    const/4 v15, 0x1

    const/4 v6, 0x1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 666
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v7

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v15

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v16

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v17

    move v11, v8

    const/4 v8, 0x0

    move v12, v10

    move v10, v11

    move v11, v9

    move v9, v5

    invoke-virtual/range {v7 .. v17}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    move v8, v10

    move v9, v11

    move v10, v12

    .line 669
    :goto_160
    invoke-static {v4, v4, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 670
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v7

    move v11, v9

    move v12, v10

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->drawTexture(IIIII)V

    .line 671
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5, v9, v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mdrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 672
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoInPlatformMTK(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v5

    if-eqz v5, :cond_186

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmNeedGlFinish(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 673
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 676
    :cond_186
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object v5

    if-eqz v5, :cond_1a9

    if-lez v8, :cond_1a9

    if-eq v1, v3, :cond_1a9

    if-eq v2, v3, :cond_1a9

    .line 677
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetVERTEX_DEFAULT_MATRIX()[F

    move-result-object v2

    invoke-interface {v1, v2, v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoRecorderData([FI)V

    .line 680
    :cond_1a9
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmTakePictureFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 681
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmTakePictureFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 682
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mtakePicture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 685
    :cond_1c5
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmFrameCount(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmFrameCount(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)V

    return v19

    .line 631
    :cond_1d2
    :goto_1d2
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DualVideoPreviewCallback.draw] return mSlaveOESTextureId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v6, p4

    .line 691
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_18c

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    if-gez v1, :cond_19

    goto/16 :goto_18c

    :cond_19
    mul-int/lit8 v1, v6, 0x10

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 695
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 697
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v13, v3

    .line 698
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v14, v3

    .line 699
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v15, v3

    .line 700
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 701
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v4

    int-to-double v9, v4

    mul-double/2addr v9, v1

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v4, v9

    .line 702
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v9}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v1

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    .line 703
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v1

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 704
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    move-wide/from16 v16, v7

    int-to-double v7, v11

    mul-double/2addr v7, v1

    div-double v7, v7, v16

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 706
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->requestTexturePair(II)[I

    move-result-object v7

    invoke-static {v2, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)V

    .line 707
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_10a

    .line 708
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 709
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 711
    :cond_c4
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v2

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v7

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v8

    aget v8, v8, v12

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v11

    move/from16 v16, v3

    move v3, v7

    move v7, v4

    move v4, v8

    move v8, v9

    move v9, v10

    move v10, v1

    move-object v1, v2

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 714
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v2

    aget v4, v2, v12

    const/4 v11, 0x1

    const/4 v2, 0x0

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    goto :goto_164

    :cond_10a
    move/from16 v16, v1

    move v7, v13

    move v8, v14

    move v13, v4

    move v14, v9

    move v9, v15

    move v15, v10

    move v10, v3

    .line 717
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v2

    aget v4, v2, v12

    const/4 v11, 0x1

    const/4 v2, 0x1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 719
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_13d

    .line 720
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 722
    :cond_13d
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v2

    aget v4, v2, v12

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v11

    const/4 v2, 0x0

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    :goto_164
    const v1, 0x8d40

    move/from16 v2, p5

    .line 725
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 726
    invoke-static {v12, v12, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 727
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v0

    aget v0, v0, v12

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    move/from16 v2, p3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->drawTexture(IIIII)V

    const/4 v0, 0x1

    return v0

    .line 692
    :cond_18c
    :goto_18c
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DualVideoPreviewCallback.drawOffScreen] return mSlaveOESTextureId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v12
.end method

.method public loadGLResourceCallback(I)V
    .registers 5

    .line 790
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGLResourceCallback, resId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x67

    if-ne p1, v0, :cond_22

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmTakePictureFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    :cond_22
    return-void
.end method

.method public loadGLResourcesCallback([II)V
    .registers 12

    .line 798
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGLResourcesCallback, resIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 799
    aget v0, p1, p2

    const/16 v1, 0x65

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    const/16 v6, 0x3e8

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x66

    if-ne v0, v1, :cond_31

    goto/16 :goto_a6

    :cond_31
    const/16 v1, 0x64

    if-ne v0, v1, :cond_40

    .line 810
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v0, p1, v7

    aget p1, p1, v8

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mupdateRenderSurfaceSize(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    goto/16 :goto_e5

    :cond_40
    const/16 v1, 0x68

    if-ne v0, v1, :cond_97

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget p1, p1, v8

    if-ne p1, v8, :cond_4c

    move p1, v8

    goto :goto_4d

    :cond_4c
    move p1, p2

    :goto_4d
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    if-eq p1, v8, :cond_60

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    if-ne p1, v7, :cond_73

    .line 815
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, p2, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    goto :goto_73

    .line 818
    :cond_6e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, v8, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 821
    :cond_73
    :goto_73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    if-eqz p1, :cond_e5

    .line 822
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 823
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoStartRecorder()V

    goto :goto_e5

    .line 825
    :cond_8d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoStopRecorder()V

    goto :goto_e5

    :cond_97
    const/16 v1, 0x69

    if-ne v0, v1, :cond_e5

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget p1, p1, v8

    if-ne p1, v8, :cond_a2

    move p2, v8

    :cond_a2
    invoke-static {v0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    goto :goto_e5

    .line 800
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v1, p1, v8

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v1, p1, v7

    if-ne v1, v8, :cond_b5

    move v1, v8

    goto :goto_b6

    :cond_b5
    move v1, p2

    :goto_b6
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x3

    aget v7, p1, v1

    if-ne v7, v8, :cond_c2

    move v7, v8

    goto :goto_c3

    :cond_c2
    move v7, p2

    :goto_c3
    invoke-static {v0, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mupdateViewPortInfo(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    const/4 v0, 0x4

    .line 803
    aget v0, p1, v0

    if-nez v0, :cond_d8

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget p1, p1, v1

    if-ne p1, v8, :cond_d3

    const-wide/16 v2, 0x1f4

    :cond_d3
    const/16 p1, 0x3e9

    invoke-static {v0, p1, p2, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 806
    :cond_d8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, p2, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 831
    :cond_e5
    :goto_e5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowStyle(I)V

    return-void
.end method

.method public modeInitCallback()V
    .registers 3

    .line 733
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mcreateSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 3

    .line 739
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeUninitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroy()V

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;)V

    .line 744
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mdestroySurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 759
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChangedCallback, width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$misMainThread(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 761
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateSurfaceSize(II)V

    .line 762
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 763
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {p1, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_4c
    return-void

    .line 766
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mupdateRenderSurfaceSize(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 767
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 752
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceCreatedCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mcreateSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 777
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestoryCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 779
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroy()V

    .line 781
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mdestroySurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method
