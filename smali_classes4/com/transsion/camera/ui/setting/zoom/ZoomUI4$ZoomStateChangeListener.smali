.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomStateChangeListener"
.end annotation


# instance fields
.field private mZoomItemViewWeakReference:Ljava/lang/ref/WeakReference;

.field mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 3

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomItemViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    return-void
.end method


# virtual methods
.method public onAnimationClick()V
    .registers 2

    .line 1158
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void
.end method

.method public onFocalLengthChanged(IFZ)V
    .registers 8

    .line 1070
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mconvertFocalToZoomValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)I

    move-result p2

    .line 1071
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_19

    const/16 p2, 0x4e20

    .line 1075
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iput p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    .line 1076
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    .line 1077
    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 1079
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mgetZoomRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 1081
    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 1083
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 1084
    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    move-result p1

    if-nez p1, :cond_59

    .line 1086
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 1087
    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1090
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void
.end method

.method public onMacroCustomZoomChanged(IFZ)V
    .registers 11

    .line 1095
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1096
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 1097
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 1098
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMainBackCameraId:Ljava/lang/String;

    .line 1099
    iget-boolean v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz v5, :cond_f

    return-void

    .line 1102
    :cond_f
    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    .line 1103
    invoke-virtual {v0, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 1105
    :cond_17
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoomForMainCam:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_31

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1106
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p2, p1, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1107
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void

    :cond_31
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_54

    .line 1111
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 1112
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 1113
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p2, p1, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1114
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    goto :goto_6d

    .line 1116
    :cond_4e
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p2, p1, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    goto :goto_6d

    .line 1119
    :cond_54
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 1121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    .line 1125
    :cond_6d
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1151
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsBackBressed:Z

    if-nez v0, :cond_9

    .line 1152
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$monMotionEvent(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/view/MotionEvent;)V

    :cond_9
    return-void
.end method

.method public onZoomChanged(IFZ)V
    .registers 8

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iput p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    .line 1039
    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    if-eq v2, v3, :cond_23

    .line 1040
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 1042
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSettingInSat(IFZ)V

    .line 1044
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void

    .line 1047
    :cond_36
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mgetZoomRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p2

    if-eqz p2, :cond_8d

    .line 1049
    invoke-virtual {p2, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1051
    invoke-virtual {p2, p1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result p2

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v2, :cond_84

    .line 1053
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1054
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result p2

    goto :goto_84

    .line 1055
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1056
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result p2

    goto :goto_84

    .line 1057
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1058
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result p2

    .line 1061
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 1062
    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 1065
    :cond_8d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V

    return-void
.end method

.method public onZoomItemViewLongPress()V
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v1, :cond_47

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mcanShowZoomWheel(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmIsConflictUIShow(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_47

    .line 1136
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1137
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 1139
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iput-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsBackBressed:Z

    .line 1140
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsBackBressed:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->onBackPressed(Z)V

    .line 1143
    :cond_36
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    .line 1145
    invoke-static {v0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mhideZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;ZZ)V

    .line 1146
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    return-void

    .line 1131
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomItemViewLongPress] mIsCapturing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v2, v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " canShowZoomWheel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    .line 1132
    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$mcanShowZoomWheel(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsConflictUIShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;->mZoomUI:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmIsConflictUIShow(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1131
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
