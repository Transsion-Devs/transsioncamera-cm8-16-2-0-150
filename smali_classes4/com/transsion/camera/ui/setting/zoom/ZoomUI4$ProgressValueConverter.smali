.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressValueConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method static bridge synthetic -$$Nest$msetupConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->setupConverterState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->updateConverterState(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 2

    .line 2361
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    return-void
.end method

.method private releaseConverterStates()V
    .registers 3

    .line 2370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2371
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2372
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2373
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void
.end method

.method private setupConverterState()V
    .registers 8

    .line 2387
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->releaseConverterStates()V

    .line 2388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$msatSupport(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result v0

    .line 2389
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_13

    move v2, v4

    goto :goto_14

    :cond_13
    move v2, v3

    .line 2390
    :goto_14
    iget-object v5, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    if-eqz v5, :cond_19

    move v3, v4

    .line 2391
    :cond_19
    iget-boolean v4, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    const v5, 0x927c0

    if-eqz v4, :cond_35

    .line 2394
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;

    const v2, 0xc350

    invoke-direct {v0, v1, v2, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2396
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    :cond_35
    const/16 v4, 0x1770

    if-eqz v0, :cond_4f

    .line 2400
    iget-boolean v6, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-eqz v6, :cond_4f

    .line 2401
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;

    invoke-direct {v0, v1, v4, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2403
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    :cond_4f
    const/16 v6, 0x2710

    if-eqz v2, :cond_5b

    .line 2408
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;

    invoke-direct {v2, v1, v4, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    :cond_5b
    if-eqz v0, :cond_87

    .line 2412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v1, :cond_87

    .line 2413
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;

    invoke-direct {v1, v0, v6, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2415
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2416
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    .line 2418
    :cond_7d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    :cond_87
    if-eqz v3, :cond_c0

    .line 2426
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    .line 2427
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit30xForSuperDefinition:Z

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_super_definition"

    .line 2428
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    const v1, 0x493e0

    goto :goto_b5

    .line 2431
    :cond_af
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getUpperTeleZoom()I

    move-result v1

    .line 2433
    :goto_b5
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    new-instance v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;

    invoke-direct {v3, v2, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    goto :goto_c6

    .line 2436
    :cond_c0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getUpperMainZoom()I

    move-result v0

    .line 2438
    :goto_c6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;

    invoke-direct {v2, v1, v6, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2440
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 2441
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    .line 2442
    :cond_e2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2443
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    .line 2445
    :cond_f4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void
.end method

.method private updateConverterState(I)Z
    .registers 7

    .line 2450
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2451
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return v1

    .line 2454
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedIntentMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 2457
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_b3

    .line 2462
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2463
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_b3

    .line 2465
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2467
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_video_preisp"

    .line 2468
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2467
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_b3

    .line 2469
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2470
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2471
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_b3

    .line 2473
    :cond_a0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 2476
    :goto_b3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    if-eqz v0, :cond_c6

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    move-result p0

    return p0

    :cond_c6
    return v1
.end method


# virtual methods
.method public resetupConverterState(Z)V
    .registers 5

    const/16 v0, 0x1770

    if-eqz p1, :cond_22

    .line 2377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2378
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;

    const/16 v2, 0x4e20

    invoke-direct {v1, p1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2379
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    return-void

    .line 2380
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 2381
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;

    const/16 v2, 0x2710

    invoke-direct {v1, p1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2382
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    :cond_3f
    return-void
.end method
