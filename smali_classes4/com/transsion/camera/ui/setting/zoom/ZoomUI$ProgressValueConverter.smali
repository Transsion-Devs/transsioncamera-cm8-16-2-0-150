.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressValueConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method static bridge synthetic -$$Nest$msetupConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->setupConverterState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->updateConverterState(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 2

    .line 1707
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    return-void
.end method

.method private releaseConverterStates()V
    .registers 3

    .line 1716
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1717
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1718
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1719
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void
.end method

.method private satSupport()Z
    .registers 4

    .line 1793
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1794
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2b

    .line 1797
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-nez v0, :cond_21

    return v2

    .line 1800
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    if-nez p0, :cond_26

    return v2

    .line 1803
    :cond_26
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;->supportSat()Z

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    return v2
.end method

.method private setupConverterState()V
    .registers 8

    .line 1733
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->releaseConverterStates()V

    .line 1734
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->satSupport()Z

    move-result v0

    .line 1735
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    move v2, v3

    .line 1737
    :goto_16
    iget-boolean v5, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v5, :cond_1f

    iget-object v5, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eqz v5, :cond_1f

    move v3, v4

    .line 1739
    :cond_1f
    iget-boolean v4, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const v5, 0x927c0

    if-eqz v4, :cond_3b

    .line 1742
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;

    const v2, 0xc350

    invoke-direct {v0, v1, v2, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1744
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    :cond_3b
    const/16 v4, 0x1770

    if-eqz v0, :cond_55

    .line 1748
    iget-boolean v6, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-eqz v6, :cond_55

    .line 1749
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;

    invoke-direct {v0, v1, v4, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1751
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    :cond_55
    const/16 v6, 0x2710

    if-eqz v2, :cond_61

    .line 1756
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;

    invoke-direct {v2, v1, v4, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    :cond_61
    if-eqz v0, :cond_8d

    .line 1760
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v1, :cond_8d

    .line 1761
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;

    invoke-direct {v1, v0, v6, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1763
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    .line 1766
    :cond_83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    :cond_8d
    if-eqz v3, :cond_a8

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    .line 1775
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getUpperTeleZoom()I

    move-result v1

    .line 1776
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    new-instance v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;

    invoke-direct {v3, v2, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    goto :goto_ae

    .line 1779
    :cond_a8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getUpperMainZoom()I

    move-result v0

    .line 1781
    :goto_ae
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;

    invoke-direct {v2, v1, v6, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1783
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    .line 1785
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1786
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    .line 1788
    :cond_dc
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void
.end method

.method private updateConverterState(I)Z
    .registers 5

    .line 1807
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1808
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return v1

    .line 1811
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1812
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1813
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1814
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_98

    .line 1816
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1817
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_98

    .line 1819
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1820
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1821
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_98

    .line 1822
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1823
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1824
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_98

    .line 1826
    :cond_85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1827
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 1829
    :goto_98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    return p0

    :cond_ab
    return v1
.end method


# virtual methods
.method public resetupConverterState(Z)V
    .registers 5

    const/16 v0, 0x1770

    if-eqz p1, :cond_22

    .line 1723
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1724
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;

    const/16 v2, 0x4e20

    invoke-direct {v1, p1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1725
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    return-void

    .line 1726
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1727
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;

    const/16 v2, 0x2710

    invoke-direct {v1, p1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1728
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    :cond_3f
    return-void
.end method
