.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVolumeKeyRepeatCount:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 2

    .line 1278
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getClickZoomStride()I
    .registers 14

    .line 1316
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 1317
    :goto_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v3, :cond_19

    const/16 v3, 0x1900

    goto :goto_1b

    :cond_19
    const/16 v3, 0x40

    .line 1318
    :goto_1b
    div-int/lit8 v4, v3, 0x2

    .line 1319
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 1320
    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-lt v5, v3, :cond_7a

    .line 1322
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v4

    div-int/lit8 v10, v5, 0x40

    mul-int/2addr v10, v0

    add-int/2addr v4, v10

    iget-object v10, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v10}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v10

    div-int/lit8 v11, v5, 0x8

    mul-int/2addr v11, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v11}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v11

    div-int/lit8 v12, v5, 0x4

    mul-int/2addr v12, v0

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v12}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v12

    div-int/2addr v5, v9

    mul-int/2addr v0, v5

    add-int/2addr v12, v0

    filled-new-array {v3, v4, v10, v11, v12}, [I

    move-result-object v0

    .line 1327
    filled-new-array {v2, v9, v8, v7, v1}, [I

    move-result-object v1

    .line 1328
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->getPiecewiseValue(I[I[I)I

    move-result p0

    :goto_78
    mul-int/2addr p0, v6

    return p0

    :cond_7a
    if-lt v5, v4, :cond_be

    .line 1333
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    div-int/lit8 v4, v5, 0x20

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v4

    div-int/lit8 v10, v5, 0x8

    mul-int/2addr v10, v0

    add-int/2addr v4, v10

    iget-object v10, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v10}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v10

    div-int/lit8 v11, v5, 0x4

    mul-int/2addr v11, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v11}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v11

    div-int/2addr v5, v9

    mul-int/2addr v0, v5

    add-int/2addr v11, v0

    filled-new-array {v1, v3, v4, v10, v11}, [I

    move-result-object v0

    const/16 v1, 0x8

    .line 1338
    filled-new-array {v2, v9, v8, v7, v1}, [I

    move-result-object v1

    .line 1339
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->getPiecewiseValue(I[I[I)I

    move-result p0

    goto :goto_78

    .line 1343
    :cond_be
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    div-int/lit8 v4, v5, 0xa

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v4

    div-int/lit8 v7, v5, 0x4

    mul-int/2addr v7, v0

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v7

    div-int/2addr v5, v9

    mul-int/2addr v0, v5

    add-int/2addr v7, v0

    filled-new-array {v1, v3, v4, v7}, [I

    move-result-object v0

    const/4 v1, 0x4

    .line 1347
    filled-new-array {v2, v9, v8, v1}, [I

    move-result-object v1

    .line 1348
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->getPiecewiseValue(I[I[I)I

    move-result p0

    goto :goto_78
.end method

.method private getPiecewiseValue(I[I[I)I
    .registers 6

    .line 1353
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_16

    .line 1355
    aget v1, p2, v0

    if-lt p1, v1, :cond_13

    add-int/lit8 v1, v0, 0x1

    aget v1, p2, v1

    if-ge p1, v1, :cond_13

    .line 1356
    aget p0, p3, v0

    return p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1359
    :cond_16
    aget p0, p3, p0

    return p0
.end method

.method private isNearByDefaultZoomRatio()Z
    .registers 3

    .line 1363
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p0

    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetDEFAULT_ZOOM_RATIO()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ge p0, v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onContinuousZoomSwiping(ZI)V
    .registers 6

    .line 1451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1452
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onContinuousZoomSwiping, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1455
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1456
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onContinuousZoomSwiping, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1459
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1460
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onContinuousZoomSwiping, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1463
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4b

    .line 1464
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onContinuousZoomSwiping zoom ui not show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1467
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->access$000(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v2, 0x195

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_5a

    move v1, v0

    :cond_5a
    mul-int/2addr v1, p2

    .line 1471
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p2, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1473
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_cd

    .line 1474
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShowFromShoulderButton(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1475
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    if-eqz p1, :cond_7e

    const/16 p1, 0x7c

    goto :goto_80

    :cond_7e
    const/16 p1, 0x7d

    :goto_80
    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1476
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1477
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1478
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getScrollState()I

    move-result p1

    if-nez p1, :cond_b3

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setStickyInDegreeThreshold(F)V

    .line 1480
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1482
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getScrollState()I

    move-result p1

    if-ne p1, v0, :cond_10e

    .line 1483
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p0

    int-to-float p1, v1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollByDistance(F)F

    return-void

    .line 1488
    :cond_cd
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p2

    if-nez p2, :cond_10f

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v1, 0x14

    if-ge p2, v1, :cond_e4

    goto :goto_10f

    .line 1494
    :cond_e4
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1495
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p2, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result p2

    if-eqz p2, :cond_fb

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->switchSelectedItem(Z)V

    return-void

    .line 1497
    :cond_fb
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x20

    invoke-static {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 1498
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->switchSelectedItem(Z)V

    :cond_10e
    return-void

    .line 1489
    :cond_10f
    :goto_10f
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onContinuousZoomSwiping return, mTotalSwipeDistance = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsShoulderButtonSwiped = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCriticalZoomSwitchSwiping(Z)V
    .registers 6

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1525
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onCriticalZoomSwitchSwiping, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1528
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1529
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onCriticalZoomSwitchSwiping, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1532
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1533
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onCriticalZoomSwitchSwiping, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1536
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4b

    .line 1537
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onCriticalZoomSwitchSwiping zoom ui not show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1540
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    .line 1544
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->access$200(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v2, 0x195

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1547
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_fe

    .line 1548
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShowFromShoulderButton(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    if-eqz p1, :cond_7e

    const/16 v2, 0x7c

    goto :goto_80

    :cond_7e
    const/16 v2, 0x7d

    :goto_80
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getScrollState()I

    move-result v0

    if-nez v0, :cond_f3

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getCriticalZoomRatio()[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getMergedZoomRatios([I[Ljava/lang/String;)[I

    move-result-object v0

    .line 1554
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getTargetZoomRatio([IIZ)I

    move-result p1

    .line 1555
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCriticalZoomSwitchSwiping , mCurrentRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetZoomRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq p1, v1, :cond_123

    .line 1557
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollToRatio(I)V

    goto :goto_123

    .line 1560
    :cond_f3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    goto :goto_123

    .line 1562
    :cond_fe
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1563
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->switchSelectedItem(Z)V

    goto :goto_123

    .line 1564
    :cond_110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->switchSelectedItem(Z)V

    .line 1568
    :cond_123
    :goto_123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mreportZoomRatioBySwipe(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void
.end method

.method public onZoomClick(Z)V
    .registers 8

    .line 1283
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1284
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomClick, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1287
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1288
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomClick, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1291
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_f6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_f6

    .line 1295
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    if-eqz p1, :cond_3f

    const/16 v2, 0x7c

    goto :goto_41

    :cond_3f
    const/16 v2, 0x7d

    :goto_41
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmDefaultViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    if-eqz p1, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, -0x1

    .line 1298
    :goto_52
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->getClickZoomStride()I

    move-result v2

    .line 1299
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->isNearByDefaultZoomRatio()Z

    move-result v3

    if-eqz v3, :cond_64

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1300
    :cond_64
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    mul-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 1301
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onZoomClick, increase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", stride: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ratio: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentRatio: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1303
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result p1

    if-eqz p1, :cond_b5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmLimitedMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    goto :goto_bb

    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    .line 1304
    :goto_bb
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmLimitedMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    goto :goto_d4

    :cond_ce
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    .line 1305
    :goto_d4
    invoke-static {v3, p1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    .line 1306
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    if-eq p1, v0, :cond_f5

    .line 1307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    .line 1308
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->updateZoomRatio(IZ)V

    :cond_f5
    return-void

    .line 1292
    :cond_f6
    :goto_f6
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomClick, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .registers 6

    .line 1424
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1425
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleEnd, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1428
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmConflictUIShowingFlags(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_83

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmConflictUIShowingFlags(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result p1

    const/high16 v0, 0x80000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2a

    goto :goto_83

    .line 1433
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_79

    .line 1437
    :cond_3b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1438
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 1439
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1441
    :cond_55
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->mVolumeKeyRepeatCount:I

    .line 1442
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1443
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1444
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0xe3

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mclearConflictUIFlag(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mhideZoomRatioHint(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    .line 1434
    :cond_79
    :goto_79
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleEnd, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1430
    :cond_83
    :goto_83
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleEnd, not enable in self capture or super night lite anim"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 5

    .line 1368
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1369
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleStart, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1372
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 1373
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleStart, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1376
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_70

    .line 1381
    :cond_3d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_52

    .line 1382
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_52
    const/4 p1, 0x0

    .line 1384
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->mVolumeKeyRepeatCount:I

    .line 1385
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x17

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1386
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x192

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1387
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x80

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$maddConflictUIFlag(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1388
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void

    .line 1378
    :cond_70
    :goto_70
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaleStart, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .registers 8

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1394
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaling, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1397
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1398
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaling, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1401
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_c1

    .line 1405
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5e

    .line 1406
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v4, 0x80

    invoke-static {v0, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$maddConflictUIFlag(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1408
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1410
    :cond_5e
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->mVolumeKeyRepeatCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->mVolumeKeyRepeatCount:I

    if-eqz p1, :cond_66

    move v2, v3

    .line 1412
    :cond_66
    sget p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float p1, p1

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, v2

    .line 1413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmLimitedMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    goto :goto_8a

    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    .line 1414
    :goto_8a
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmLimitedMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    goto :goto_a3

    :cond_9d
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    .line 1415
    :goto_a3
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    if-eq p1, v0, :cond_bb

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    .line 1419
    :cond_bb
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mshowZoomRatioHint(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void

    .line 1402
    :cond_c1
    :goto_c1
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onZoomScaling, ui not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomSwipeEnd()V
    .registers 4

    .line 1504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1505
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onZoomSwipeEnd, not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1508
    :cond_14
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomSwipeEnd mTotalSwipeDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1511
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->access$100(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v2, 0x196

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mreportZoomRatioBySwipe(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    .line 1513
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1515
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->resetStickyInDegreeThreshold()V

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsShowFromShoulderButton(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1517
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mhideTickRingDelayed(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    .line 1518
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$5;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomRootView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->setTouchEventTarget(Landroid/view/View;)V

    :cond_7f
    return-void
.end method
