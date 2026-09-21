.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviewStateScaleStart:Z

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShoulderButtonZoomSwipeEnd()V
    .registers 1

    return-void
.end method

.method public onShoulderButtonZoomSwiping(ZI)V
    .registers 3

    return-void
.end method

.method public onZoomClick(Z)V
    .registers 7

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v1, :cond_18a

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 935
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    if-nez v1, :cond_18a

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 938
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 939
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-nez v1, :cond_18a

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto/16 :goto_18a

    .line 950
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-eqz p1, :cond_5d

    const/16 v1, 0x7c

    goto :goto_5f

    :cond_5d
    const/16 v1, 0x7d

    :goto_5f
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 952
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick] wrong status mModeDisableTouchZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClickZoomSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showZoomItemView()V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 962
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-nez v0, :cond_b2

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    goto :goto_b6

    :cond_b2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_b6
    iput v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-static {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 964
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 965
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v3

    .line 967
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iput-boolean v1, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIncreaseWideToMainCamera:Z

    const/16 v4, 0x64

    .line 968
    invoke-virtual {v3, p1, v4, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->calculateZoomPosByClick(ZIZ)I

    move-result v0

    .line 969
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misNearByStreamIdChanged(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v3

    if-eqz v3, :cond_f7

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    if-eqz p1, :cond_f2

    add-int/lit16 v3, v3, 0x3e8

    goto :goto_f4

    :cond_f2
    add-int/lit16 v3, v3, -0x3e8

    :goto_f4
    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_107

    .line 972
    :cond_f7
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v4, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 974
    :goto_107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-eqz p1, :cond_10c

    goto :goto_10d

    :cond_10c
    const/4 v2, -0x1

    :goto_10d
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 975
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    .line 976
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_129

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_165

    .line 978
    :cond_129
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_153

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result p1

    if-nez p1, :cond_153

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIncreaseWideToMainCamera:Z

    if-eqz v0, :cond_144

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_144

    goto :goto_153

    .line 982
    :cond_144
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_165

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_165

    .line 979
    :cond_153
    :goto_153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    if-le p1, v0, :cond_165

    .line 980
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 985
    :cond_165
    :goto_165
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_177

    .line 986
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 987
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 989
    :cond_177
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomValueToUI(Z)V

    .line 990
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 991
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    return-void

    .line 942
    :cond_18a
    :goto_18a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick,return] mPreviewStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFilterSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsModeOrCameraSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 944
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSizeChanging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInMicroPanTilt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordStopZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGraduationViewSilpping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mModeDisableTouchZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 942
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .registers 7

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v1, :cond_18

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v1, :cond_18

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v1, :cond_18

    .line 1124
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    invoke-interface {v0, v4, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1126
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v1, :cond_ca

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_ca

    .line 1133
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-eqz p1, :cond_45

    move v3, v4

    :cond_45
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 1135
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result p1

    if-nez p1, :cond_58

    .line 1136
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    .line 1138
    :cond_58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_9d

    .line 1140
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_8b

    .line 1144
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 1145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_9d

    .line 1141
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    if-le p1, v0, :cond_9d

    .line 1142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1147
    :cond_9d
    :goto_9d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_af

    .line 1148
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 1149
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1151
    :cond_af
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iput-boolean v1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    .line 1152
    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setSeekBarEnable(Z)V

    .line 1153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/16 v0, 0xe3

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleEnd()V

    return-void

    .line 1128
    :cond_ca
    :goto_ca
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_e1

    .line 1129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p0

    invoke-interface {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_e1
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 8

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->mPreviewStateScaleStart:Z

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_133

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v5, :cond_133

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1003
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1004
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1006
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1007
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    if-nez v5, :cond_133

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-eqz v5, :cond_6f

    goto/16 :goto_133

    .line 1022
    :cond_6f
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleBegin()V

    .line 1023
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v5, :cond_83

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v5, :cond_83

    .line 1024
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1026
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_94

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_9c

    .line 1030
    :cond_94
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1032
    :goto_9c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1033
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-eqz p1, :cond_ae

    move v3, v4

    :cond_ae
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    .line 1037
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1038
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_fe

    .line 1039
    :cond_ca
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_ec

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_db

    goto :goto_ec

    .line 1043
    :cond_db
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 1044
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_fe

    .line 1040
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    if-le p1, v0, :cond_fe

    .line 1041
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1046
    :cond_fe
    :goto_fe
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_110

    .line 1047
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 1048
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1050
    :cond_110
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1052
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iput-boolean v1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    const/16 v0, 0x17

    .line 1054
    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1055
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iput-boolean v4, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    .line 1056
    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setSeekBarEnable(Z)V

    .line 1057
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomValueToUI(Z)V

    .line 1058
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    return-void

    .line 1011
    :cond_133
    :goto_133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onZoomScaleStart,return] mPreviewStarted:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mInFragment:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsCapturing:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsFilterSwitch:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1014
    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsSizeChanging:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mInMicroPanTilt:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mRecordStopZoom:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mGraduationViewSilpping:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1017
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-ne p1, v2, :cond_1d0

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p0

    invoke-interface {p0, v4, v3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_1d0
    return-void
.end method

.method public onZoomScaling(Z)V
    .registers 9

    .line 1063
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->mPreviewStateScaleStart:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v5, :cond_15c

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    if-nez v5, :cond_15c

    .line 1070
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1072
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1073
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-eqz v5, :cond_61

    goto/16 :goto_15c

    .line 1087
    :cond_61
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-static {v0, v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    invoke-virtual {v0, p1, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->calculateZoomPosByLongPress(ZI)I

    move-result v0

    .line 1088
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v6, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mCurrentValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v6, v6, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mStepCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-eq v0, v3, :cond_ca

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v5, :cond_ca

    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v5, :cond_ca

    .line 1092
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object v0

    invoke-interface {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleBegin()V

    .line 1095
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    if-eqz p1, :cond_cf

    move v2, v4

    :cond_cf
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 1096
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    .line 1097
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 1098
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_11f

    .line 1099
    :cond_eb
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result p1

    if-nez p1, :cond_10d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result p1

    if-eqz p1, :cond_fc

    goto :goto_10d

    .line 1103
    :cond_fc
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_11f

    .line 1104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_11f

    .line 1100
    :cond_10d
    :goto_10d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I

    move-result v0

    if-le p1, v0, :cond_11f

    .line 1101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1106
    :cond_11f
    :goto_11f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_12b

    .line 1107
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1109
    :cond_12b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_13d

    .line 1110
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 1111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V

    .line 1113
    :cond_13d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1114
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1115
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setSeekBarEnable(Z)V

    .line 1116
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomValueToUI(Z)V

    .line 1117
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    return-void

    .line 1076
    :cond_15c
    :goto_15c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onZoomScaling,return] mPreviewStateScaleStart: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->mPreviewStateScaleStart:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mInFragment: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsCapturing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsFilterSwitch: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsZoomUIHidedWhileScaling: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isZoomLayoutUpdated: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    .line 1079
    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mRecordStopZoom:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mGraduationViewSilpping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    iget-boolean v5, v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-ne p1, v3, :cond_1e7

    .line 1082
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p0

    invoke-interface {p0, v4, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_1e7
    return-void
.end method
