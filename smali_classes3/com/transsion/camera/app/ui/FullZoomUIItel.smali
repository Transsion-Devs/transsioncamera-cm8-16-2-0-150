.class public Lcom/transsion/camera/app/ui/FullZoomUIItel;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "SourceFile"


# instance fields
.field private fadeAnimator:Landroid/animation/ObjectAnimator;

.field private mAIArtMuseumUIOn:Z

.field private mAIGCEffectUIOn:Z

.field private mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field private mCouldShow:Z

.field private mCurrentMode:Ljava/lang/String;

.field private mExposureTime:Ljava/lang/String;

.field private final mFadeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFullZoomLayout:Landroid/widget/FrameLayout;

.field private mFullZoomView:Landroid/view/View;

.field private mIfNeedShow:Z

.field private mImageStyleShow:Z

.field private mIndicator:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitIndex:I

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsCapturing:Z

.field private mIsFaceBeautyOn:Z

.field private mIsFilterUIOn:Z

.field private mIsMoreMode:Z

.field private mIsPausing:Z

.field private mIsSuperAntiVideoOn:Z

.field private mIsTimeLapseSettingUIShow:Z

.field private mIsVideoPortraitBarOn:Z

.field private mItemsCount:I

.field private mModeChangedBegin:Z

.field private mOrientation:I

.field private mPreviousIndicator:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mSecondDefaultZoomValue:I

.field private mSelfTimerBegin:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTranslateDis:I

.field private mTranslateNormalY:I

.field private mUIState:I

.field private mVideRecording:Z

.field private mXOffset:I


# direct methods
.method public static synthetic $r8$lambda$2nDdgbCPfeE_ElaWDukW-xA-8Rk(Lcom/transsion/camera/app/ui/FullZoomUIItel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lwu0_RfyL6TnVjr5UEopc8kV-U(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$87wj8M3nvxmmq-3lOhs1XDYq7nI(Lcom/transsion/camera/app/ui/FullZoomUIItel;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$notifyCameraOperateActionToUI$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AmuHaCwLeHaP4na1Y57jIGOB0fs(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PVpVhSwq3spnL4zYiwwupW1XbBU(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$notifyCameraOperateActionToUI$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZG_I_9WJkngYLBCWM5Y3fHoNOs0(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->lambda$notifyCameraOperateActionToUI$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsSuperAntiVideoOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousIndicator(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslateNormalY(Lcom/transsion/camera/app/ui/FullZoomUIItel;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateNormalY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideRecording(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 5

    .line 272
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    .line 81
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 83
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    const/16 p1, 0xc8

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSecondDefaultZoomValue:I

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    const/4 v1, 0x2

    .line 95
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsPausing:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsSuperAntiVideoOn:Z

    .line 115
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mImageStyleShow:Z

    .line 120
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private computeTranslateX(I)F
    .registers 2

    .line 813
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mXOffset:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private currentFocalLengthMode()Z
    .registers 1

    .line 1220
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInStreetPhotoMode:Z

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    :cond_e
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    :cond_e
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_27e

    :goto_2f
    move p1, v7

    goto :goto_72

    :sswitch_31
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_2f

    :cond_3a
    move p1, v1

    goto :goto_72

    :sswitch_3c
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_2f

    :cond_45
    move p1, v2

    goto :goto_72

    :sswitch_47
    const-string v0, "key_fun_video_record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_2f

    :cond_50
    move p1, v3

    goto :goto_72

    :sswitch_52
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_2f

    :cond_5b
    move p1, v4

    goto :goto_72

    :sswitch_5d
    const-string v0, "key_exposure_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_2f

    :cond_66
    move p1, v6

    goto :goto_72

    :sswitch_68
    const-string v0, "key_check_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_2f

    :cond_71
    move p1, v5

    :goto_72
    packed-switch p1, :pswitch_data_298

    goto/16 :goto_27d

    .line 263
    :pswitch_77
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsSuperAntiVideoOn:Z

    return-void

    .line 134
    :pswitch_80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_2a8

    :goto_8a
    move v1, v7

    goto/16 :goto_170

    :sswitch_8d
    const-string/jumbo p1, "value_timelapse_setting_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto :goto_8a

    :cond_97
    const/16 v1, 0x10

    goto/16 :goto_170

    :sswitch_9b
    const-string/jumbo p1, "value_ai_art_museum_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto :goto_8a

    :cond_a5
    const/16 v1, 0xf

    goto/16 :goto_170

    :sswitch_a9
    const-string/jumbo p1, "value_timelapse_setting_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto :goto_8a

    :cond_b3
    const/16 v1, 0xe

    goto/16 :goto_170

    :sswitch_b7
    const-string/jumbo p1, "value_ai_art_museum_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    goto :goto_8a

    :cond_c1
    const/16 v1, 0xd

    goto/16 :goto_170

    :sswitch_c5
    const-string/jumbo p1, "value_zoomwheel_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto :goto_8a

    :cond_cf
    const/16 v1, 0xc

    goto/16 :goto_170

    :sswitch_d3
    const-string/jumbo p1, "value_zoomwheel_view_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    goto :goto_8a

    :cond_dd
    const/16 v1, 0xb

    goto/16 :goto_170

    :sswitch_e1
    const-string/jumbo p1, "value_facebeauty_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    goto :goto_8a

    :cond_eb
    const/16 v1, 0xa

    goto/16 :goto_170

    :sswitch_ef
    const-string/jumbo p1, "value_aigc_effect_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f9

    goto :goto_8a

    :cond_f9
    const/16 v1, 0x9

    goto/16 :goto_170

    :sswitch_fd
    const-string/jumbo p1, "value_facebeauty_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_107

    goto :goto_8a

    :cond_107
    const/16 v1, 0x8

    goto/16 :goto_170

    :sswitch_10b
    const-string/jumbo p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_116

    goto/16 :goto_8a

    :cond_116
    const/4 v1, 0x7

    goto :goto_170

    :sswitch_118
    const-string/jumbo p1, "value_videoportrait_bar_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_123

    goto/16 :goto_8a

    :cond_123
    const/4 v1, 0x6

    goto :goto_170

    :sswitch_125
    const-string/jumbo p1, "value_video_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_170

    goto/16 :goto_8a

    :sswitch_130
    const-string/jumbo p1, "value_video_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13b

    goto/16 :goto_8a

    :cond_13b
    move v1, v2

    goto :goto_170

    :sswitch_13d
    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    goto/16 :goto_8a

    :cond_148
    move v1, v3

    goto :goto_170

    :sswitch_14a
    const-string/jumbo p1, "value_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_155

    goto/16 :goto_8a

    :cond_155
    move v1, v4

    goto :goto_170

    :sswitch_157
    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_162

    goto/16 :goto_8a

    :cond_162
    move v1, v6

    goto :goto_170

    :sswitch_164
    const-string/jumbo p1, "value_aigc_effect_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16f

    goto/16 :goto_8a

    :cond_16f
    move v1, v5

    :cond_170
    :goto_170
    const-wide/16 p1, 0x32

    packed-switch v1, :pswitch_data_2ee

    goto/16 :goto_27d

    .line 181
    :pswitch_177
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 213
    :pswitch_17d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 214
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    .line 215
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 185
    :pswitch_18e
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    .line 186
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 205
    :pswitch_197
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 173
    :pswitch_1a9
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 174
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 177
    :pswitch_1ae
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 178
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 160
    :pswitch_1b3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 161
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 198
    :pswitch_1c1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 199
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    .line 200
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 166
    :pswitch_1d2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 167
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    .line 168
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 148
    :pswitch_1e3
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 154
    :pswitch_1f1
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 137
    :pswitch_1ff
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 143
    :pswitch_205
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    .line 144
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 190
    :pswitch_20e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 239
    :pswitch_220
    const-string/jumbo p1, "value_fun_video_start_recording"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_238

    .line 240
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_27d

    .line 242
    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUIItel$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$2;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 251
    :cond_238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_244

    .line 252
    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUIItel$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$3;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_244
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    return-void

    .line 125
    :pswitch_247
    const-string/jumbo p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_254

    .line 126
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateXWithAnimation(I)V

    return-void

    .line 127
    :cond_254
    const-string/jumbo p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_261

    .line 128
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateXWithAnimation(I)V

    return-void

    .line 129
    :cond_261
    const-string/jumbo p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27d

    .line 130
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateXWithAnimation(I)V

    return-void

    .line 224
    :pswitch_26e
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mExposureTime:Ljava/lang/String;

    return-void

    .line 227
    :pswitch_271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_27d

    .line 228
    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_27d
    :goto_27d
    return-void

    :sswitch_data_27e
    .sparse-switch
        -0x581e5b9c -> :sswitch_68
        0x1964f925 -> :sswitch_5d
        0x47dd8aea -> :sswitch_52
        0x4be4d535 -> :sswitch_47
        0x50497713 -> :sswitch_3c
        0x7ddb1282 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_271
        :pswitch_26e
        :pswitch_247
        :pswitch_220
        :pswitch_80
        :pswitch_77
    .end packed-switch

    :sswitch_data_2a8
    .sparse-switch
        -0x7b2286b7 -> :sswitch_164
        -0x71d81a63 -> :sswitch_157
        -0x66c4e80f -> :sswitch_14a
        -0x593d69e7 -> :sswitch_13d
        -0x48d6b4a7 -> :sswitch_130
        -0x3c27f54b -> :sswitch_125
        -0x24caae7b -> :sswitch_118
        -0x24c5b0c0 -> :sswitch_10b
        0x6a3b3dc -> :sswitch_fd
        0x16d1af45 -> :sswitch_ef
        0x18fd05d2 -> :sswitch_e1
        0x275812b7 -> :sswitch_d3
        0x275d1072 -> :sswitch_c5
        0x2baa12c2 -> :sswitch_b7
        0x47a78cc0 -> :sswitch_a9
        0x499844ec -> :sswitch_9b
        0x6568806e -> :sswitch_8d
    .end sparse-switch

    :pswitch_data_2ee
    .packed-switch 0x0
        :pswitch_20e
        :pswitch_205
        :pswitch_1ff
        :pswitch_205
        :pswitch_205
        :pswitch_1ff
        :pswitch_1f1
        :pswitch_1e3
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1b3
        :pswitch_1ae
        :pswitch_1a9
        :pswitch_197
        :pswitch_18e
        :pswitch_17d
        :pswitch_177
    .end packed-switch
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$3()V
    .registers 5

    .line 951
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateNormalY:I

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUIItel$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$7;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$4(I)V
    .registers 5

    .line 967
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateNormalY:I

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel$8;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$5()V
    .registers 2

    .line 1013
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1014
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    :cond_f
    return-void
.end method

.method private needToWait()Z
    .registers 5

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    .line 907
    :goto_11
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-eqz v2, :cond_22

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private notifyActionToItemUI(I)V
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_23

    .line 895
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz v0, :cond_11

    .line 897
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_11

    :cond_23
    :goto_23
    return-void
.end method

.method private printStatus()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFilterUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsFaceBeautyOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCEffectUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIArtMuseumUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoPortraitBarOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsTimeLapseSettingUIShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelfTimerBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCapturing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mInProMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startTranslateX(I)V
    .registers 6

    .line 853
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 856
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 859
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->computeTranslateX(I)F

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startTranslateX], index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private startTranslateXWithAnimation(I)V
    .registers 13

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startTranslateXWithAnimation] nextIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 821
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 822
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_e2

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 825
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 826
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    new-array v7, v1, [F

    fill-array-data v7, :array_ea

    const-string v8, "scaleX"

    invoke-static {v3, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 827
    iget-object v7, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_f2

    const-string v10, "scaleY"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 828
    iget-object v9, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    iget-object v9, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 831
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->computeTranslateX(I)F

    move-result p1

    .line 832
    iget-object v9, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 833
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_fa

    invoke-static {p1, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 834
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 835
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_102

    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 836
    iget-object v8, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    new-array v9, v1, [F

    fill-array-data v9, :array_10a

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 837
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 838
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 840
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x6

    .line 841
    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    aput-object v3, v8, v0

    aput-object v7, v8, v1

    const/4 v0, 0x3

    aput-object p1, v8, v0

    const/4 p1, 0x4

    aput-object v4, v8, p1

    const/4 p1, 0x5

    aput-object v5, v8, p1

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 842
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 843
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUIItel$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$6;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_ea
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_f2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_fa
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_102
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_10a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unSupportZoomingMode(Ljava/lang/String;)Z
    .registers 7

    .line 1144
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 1147
    :goto_d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    if-eqz v3, :cond_16

    xor-int/lit8 v4, v0, 0x1

    .line 1148
    invoke-virtual {v3, v4, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setUnSupportZoomingStatus(ZZ)V

    .line 1150
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unSupportZoomingMode] currentModeIsSupportZooming="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private updateFullZoomLayoutBgId()I
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eqz v0, :cond_1c

    .line 448
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    if-ne v0, v3, :cond_12

    .line 449
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_4_unsupport_items:I

    goto :goto_2e

    :cond_12
    if-ne v0, v2, :cond_17

    .line 451
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_2e

    :cond_17
    if-ne v0, v1, :cond_2d

    .line 453
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_unsupport_items:I

    goto :goto_2e

    .line 456
    :cond_1c
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    if-ne v0, v3, :cond_23

    .line 457
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_4_items:I

    goto :goto_2e

    :cond_23
    if-ne v0, v2, :cond_28

    .line 459
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_items:I

    goto :goto_2e

    :cond_28
    if-ne v0, v1, :cond_2d

    .line 461
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_items:I

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 464
    :goto_2e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFullZoomLayoutBgId : ] resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public couldShow(Z)V
    .registers 5

    .line 511
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->couldShow(Z)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[couldShow] show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    if-eqz p1, :cond_20

    .line 515
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->resetIndicatorPosition()V

    :cond_20
    return-void
.end method

.method public hideWideCamera()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideWideCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    .line 584
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    if-nez v0, :cond_27

    .line 585
    :cond_24
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    .line 588
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    return-void
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[loadWideCameraUI]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInflater:Landroid/view/LayoutInflater;

    .line 279
    sget v0, Lcom/transsion/camera/R$layout;->full_zoom_layout_itel:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 280
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_view_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 281
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->updateRootViewPadding(IZ)V

    .line 282
    sget p2, Lcom/transsion/camera/R$id;->zoom_camera_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    .line 283
    check-cast p2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 284
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    .line 285
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    .line 286
    sget p2, Lcom/transsion/camera/R$id;->previous_full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mResources:Landroid/content/res/Resources;

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 289
    sget v0, Lcom/transsion/camera/R$dimen;->full_zoom_item_distance:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mXOffset:I

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wide_camera_translation_distance"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateDis:I

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->recording_full_zoom_margin_bottom_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateNormalY:I

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyCameraOperation] action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setZoomWheelShow(I)V

    .line 914
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->notifyActionToItemUI(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_216

    goto/16 :goto_20c

    .line 1132
    :sswitch_37
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    return-void

    .line 1129
    :sswitch_3a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    return-void

    .line 1117
    :sswitch_3d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mImageStyleShow:Z

    .line 1118
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 1112
    :sswitch_43
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    .line 1113
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mImageStyleShow:Z

    .line 1114
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 950
    :sswitch_4b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 951
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 959
    :cond_64
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 1047
    :sswitch_68
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    return-void

    .line 1044
    :sswitch_6b
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    return-void

    .line 1071
    :goto_6e
    :sswitch_6e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_20c

    .line 1072
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_90

    add-int/lit8 p1, v1, -0x1

    if-ltz p1, :cond_90

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1076
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 1059
    :goto_93
    :sswitch_93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_20c

    .line 1060
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_bb

    add-int/lit8 p1, v1, 0x1

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_bb

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 1084
    :sswitch_be
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-nez p1, :cond_c6

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-eqz p1, :cond_20c

    .line 1085
    :cond_c6
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    return-void

    .line 1050
    :sswitch_c9
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    goto :goto_cf

    .line 1039
    :sswitch_cc
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    goto :goto_e2

    .line 1053
    :goto_cf
    :sswitch_cf
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    if-nez p1, :cond_20c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_20c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_20c

    .line 1054
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 1055
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 1041
    :goto_e2
    :sswitch_e2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void

    .line 987
    :sswitch_e6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsPausing:Z

    return-void

    .line 1121
    :sswitch_e9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void

    .line 990
    :sswitch_ed
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    .line 991
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 992
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    .line 993
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsPausing:Z

    .line 994
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_20c

    .line 995
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->resetRecordingUI()V

    return-void

    .line 1105
    :sswitch_101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 1106
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 1107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20c

    .line 1108
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 1098
    :sswitch_111
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 1099
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 1100
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz p1, :cond_20c

    .line 1101
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 917
    :sswitch_11d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    if-eqz p1, :cond_20c

    .line 918
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    return-void

    .line 922
    :sswitch_124
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_20c

    .line 923
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    .line 924
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    .line 925
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    .line 926
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 927
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    .line 928
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateX(I)V

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_20c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_20c

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_147
    :goto_147
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz p1, :cond_147

    .line 933
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->restoreDefaultValue()V

    goto :goto_147

    .line 965
    :sswitch_159
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 966
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 967
    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;I)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 975
    :cond_17a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 942
    :sswitch_17e
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 943
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 944
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 946
    :cond_194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->onRecordingStateChange(I)V

    return-void

    .line 1094
    :sswitch_198
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    .line 1095
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 983
    :sswitch_19e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    .line 984
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void

    .line 979
    :sswitch_1a4
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    .line 980
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void

    .line 1124
    :sswitch_1aa
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInAIGCMode:Z

    if-nez p1, :cond_20c

    .line 1125
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    return-void

    .line 1003
    :sswitch_1b1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    .line 1004
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_20c

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->needToWait()Z

    move-result p1

    if-nez p1, :cond_20c

    .line 1005
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_1d0

    .line 1006
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-nez p1, :cond_20c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    if-nez p1, :cond_20c

    .line 1007
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 1008
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 1011
    :cond_1d0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_1da

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_20c

    .line 1012
    :cond_1da
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1025
    :sswitch_1ee
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    .line 1028
    :sswitch_1f0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_20c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_20c

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->needToWait()Z

    move-result p1

    if-nez p1, :cond_20c

    .line 1029
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-nez p1, :cond_20c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    if-nez p1, :cond_20c

    .line 1030
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->show(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    :cond_20c
    :goto_20c
    return-void

    .line 999
    :sswitch_20d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    .line 1000
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    return-void

    .line 1036
    :sswitch_212
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWhenCamSwitchEnd()V

    return-void

    :sswitch_data_216
    .sparse-switch
        0x1 -> :sswitch_212
        0x2 -> :sswitch_20d
        0x3 -> :sswitch_1ee
        0x5 -> :sswitch_1ee
        0x7 -> :sswitch_1ee
        0x9 -> :sswitch_1b1
        0xa -> :sswitch_1aa
        0xb -> :sswitch_1a4
        0xc -> :sswitch_19e
        0xe -> :sswitch_198
        0xf -> :sswitch_17e
        0x10 -> :sswitch_159
        0x14 -> :sswitch_124
        0x17 -> :sswitch_11d
        0x19 -> :sswitch_111
        0x1a -> :sswitch_101
        0x1c -> :sswitch_ed
        0x1f -> :sswitch_e9
        0x20 -> :sswitch_e6
        0x48 -> :sswitch_e2
        0x49 -> :sswitch_cf
        0x4a -> :sswitch_cf
        0x4b -> :sswitch_cc
        0x4c -> :sswitch_c9
        0x52 -> :sswitch_17e
        0x53 -> :sswitch_159
        0x5a -> :sswitch_be
        0x5b -> :sswitch_198
        0x5e -> :sswitch_1f0
        0x7c -> :sswitch_93
        0x7d -> :sswitch_6e
        0x90 -> :sswitch_17e
        0x91 -> :sswitch_159
        0x92 -> :sswitch_6b
        0x9b -> :sswitch_68
        0xc9 -> :sswitch_4b
        0xed -> :sswitch_be
        0xee -> :sswitch_198
        0xf2 -> :sswitch_43
        0xf3 -> :sswitch_3d
        0x102 -> :sswitch_198
        0x112 -> :sswitch_198
        0x140 -> :sswitch_3a
        0x141 -> :sswitch_37
        0x18c -> :sswitch_198
    .end sparse-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 470
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOrientationChanged], orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    iget p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    if-eq p2, p1, :cond_3b

    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez p2, :cond_1f

    goto :goto_3b

    .line 474
    :cond_1f
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    .line 476
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, p2, :cond_3b

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 479
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_38

    .line 480
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3b
    :goto_3b
    return-void
.end method

.method protected onRecordingStateChange(I)V
    .registers 5

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x10

    const/4 v2, 0x0

    if-eq p1, v0, :cond_27

    const/16 v0, 0x52

    if-eq p1, v0, :cond_21

    const/16 v0, 0x53

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x90

    if-eq p1, v0, :cond_21

    const/16 v0, 0x91

    if-eq p1, v0, :cond_1b

    return-void

    .line 1211
    :cond_1b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 1212
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void

    .line 1202
    :cond_21
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 1203
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    return-void

    .line 1206
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    .line 1207
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    return-void

    .line 1191
    :cond_2d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    .line 1192
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsSuperAntiVideoOn:Z

    if-eqz p1, :cond_36

    .line 1193
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    .line 1195
    :cond_36
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSlowMotionMode:Z

    if-eqz p1, :cond_3d

    .line 1196
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    .line 1198
    :cond_3d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 806
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->pause()V

    .line 807
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsPausing:Z

    if-eqz v0, :cond_a

    .line 808
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    :cond_a
    return-void
.end method

.method protected resetIndicatorPosition()V
    .registers 6

    .line 866
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    goto :goto_66

    .line 869
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    if-eqz v0, :cond_11

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[resetIndicatorPosition] mModeChangedBegin is true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 873
    :goto_12
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    if-ge v0, v1, :cond_66

    .line 874
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 875
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    .line 876
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resetIndicatorPosition] selected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " alpha:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " visibility:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_63

    .line 878
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    sub-int/2addr v0, v1

    .line 879
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateX(I)V

    return-void

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_66
    :goto_66
    return-void
.end method

.method protected setRootViewAlpha(F)V
    .registers 3

    .line 1180
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    .line 1181
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 1184
    :cond_1b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewAlpha(F)V

    return-void
.end method

.method protected setRootViewTranslationY(F)V
    .registers 4

    .line 1168
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    .line 1169
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2d

    .line 1172
    :cond_1b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    :goto_2d
    return-void

    .line 1175
    :cond_2e
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewTranslationY(F)V

    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .registers 2

    .line 487
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSecondDefaultZoomValue:I

    return-void
.end method

.method protected setSettingUIList()V
    .registers 12

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_check_storage"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    if-eqz v0, :cond_266

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_40

    goto/16 :goto_266

    .line 320
    :cond_40
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_48

    .line 321
    iput v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    .line 323
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_5d

    .line 327
    :cond_5a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    goto :goto_62

    .line 324
    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->hideWideCamera()V

    .line 329
    :goto_62
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->updateRootViewPadding(IZ)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSettingUIList] mIsNeedShowUI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSettingUIList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_98
    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 335
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_c3

    .line 336
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->currentFocalLengthMode()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 338
    sget v4, Lcom/transsion/camera/R$layout;->unsupport_zoooming_focal_length_item:I

    goto :goto_cf

    .line 340
    :cond_bd
    sget v4, Lcom/transsion/camera/R$layout;->full_zoom_text_unsupport_zoooming_item:I

    goto :goto_cf

    .line 343
    :cond_c0
    sget v4, Lcom/transsion/camera/R$layout;->full_zoom_text_item:I

    goto :goto_cf

    .line 345
    :cond_c3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_ce

    .line 346
    sget v4, Lcom/transsion/camera/R$layout;->full_zoom_image_item:I

    goto :goto_cf

    :cond_ce
    move v4, v2

    :goto_cf
    if-nez v4, :cond_d3

    goto/16 :goto_266

    .line 351
    :cond_d3
    iget v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSecondDefaultZoomValue:I

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->setSecondZoomDefaultValue(I)V

    .line 352
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v5, v6, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 353
    move-object v5, v4

    check-cast v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mOrientation:I

    invoke-interface {v5, v6, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 354
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 355
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_98

    .line 359
    :cond_f4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    .line 363
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->updateFullZoomLayoutBgId()I

    move-result v5

    .line 364
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_251

    .line 365
    iget v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mItemsCount:I

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/16 v10, 0x10

    if-eq v6, v7, :cond_1fa

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1b7

    if-eq v6, v8, :cond_131

    goto/16 :goto_253

    .line 368
    :cond_131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->currentFocalLengthMode()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_items_container_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_16b

    .line 372
    :cond_14e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_4_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_16b

    .line 375
    :cond_15d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_4_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_16b
    if-eqz v5, :cond_172

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 380
    :cond_172
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    :cond_186
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_196

    goto :goto_19e

    .line 388
    :cond_196
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_19e
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->currentFocalLengthMode()Z

    move-result v1

    if-eqz v1, :cond_253

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_253

    .line 397
    :cond_1b7
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    .line 398
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_3_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1d4

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1d4
    const/16 v1, 0x11

    .line 402
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 403
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 404
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 406
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 407
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_1ef

    .line 409
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 411
    :cond_1ef
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateX(I)V

    goto :goto_253

    .line 415
    :cond_1fa
    iput v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    .line 416
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_2_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v5, :cond_211

    .line 418
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 420
    :cond_211
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_225

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hasTeleItem()Z

    move-result v1

    if-nez v1, :cond_225

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_238

    .line 422
    :cond_225
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_238

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hasTeleItem()Z

    move-result v1

    if-eqz v1, :cond_238

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :cond_238
    :goto_238
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInitIndex:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->startTranslateX(I)V

    goto :goto_253

    .line 437
    :cond_251
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_253
    :goto_253
    const/16 v1, 0x51

    .line 440
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 441
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_266
    :goto_266
    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    .line 306
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setTeleSecondDefaultZoomValue(I)V
    .registers 2

    return-void
.end method

.method public setUIState(I)V
    .registers 2

    .line 497
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mUIState:I

    return-void
.end method

.method public show(Z)V
    .registers 4

    .line 769
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[show] mIsNeedShowUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowSetAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 770
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    if-eqz p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    if-nez p1, :cond_88

    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mUIState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_88

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mImageStyleShow:Z

    if-eqz p1, :cond_58

    goto :goto_88

    .line 776
    :cond_58
    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_87

    .line 777
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-nez p1, :cond_78

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    if-nez p1, :cond_78

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_78

    .line 778
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    :cond_78
    const/high16 p1, 0x3f800000    # 1.0f

    .line 780
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewAlpha(F)V

    .line 781
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    if-eqz p1, :cond_87

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_87
    return-void

    .line 773
    :cond_88
    :goto_88
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->printStatus()V

    return-void
.end method

.method protected showWhenCamSwitchEnd()V
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    .line 505
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    :cond_d
    return-void
.end method

.method public showWideCamera()V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    if-eqz v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_12f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mSelfTimerBegin:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    if-eqz v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mModeChangedBegin:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-nez v0, :cond_12f

    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mImageStyleShow:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    if-eqz v0, :cond_6f

    goto/16 :goto_12f

    .line 539
    :cond_6f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 540
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_75

    .line 543
    :cond_87
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->resetIndicatorPosition()V

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_12e

    .line 545
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-eqz v1, :cond_99

    .line 546
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateDis:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    goto :goto_c5

    .line 547
    :cond_99
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentPhotoMode:Z

    if-nez v1, :cond_bf

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz v1, :cond_a2

    goto :goto_bf

    .line 549
    :cond_a2
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_af

    .line 550
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    if-nez v0, :cond_c5

    .line 551
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    goto :goto_c5

    .line 554
    :cond_af
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    if-nez v1, :cond_c5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_c5

    .line 555
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    goto :goto_c5

    .line 548
    :cond_bf
    :goto_bf
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mTranslateNormalY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    :cond_c5
    :goto_c5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 559
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewAlpha(F)V

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 563
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 565
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 569
    :cond_f6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    if-eqz v0, :cond_12e

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 571
    new-array v0, v0, [F

    fill-array-data v0, :array_134

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 573
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 574
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_12e
    return-void

    .line 535
    :cond_12f
    :goto_12f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->printStatus()V

    return-void

    nop

    :array_134
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translateWideCamera(IZ)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public translateWideCamera(IZZLandroid/animation/Animator$AnimatorListener;)V
    .registers 12

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_fa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_fa

    :cond_34
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_bd

    .line 679
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {p2}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 680
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x0

    if-eqz p2, :cond_5e

    if-nez p3, :cond_5e

    .line 681
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    int-to-float v6, p1

    new-array v3, v3, [F

    aput v6, v3, v0

    aput v5, v3, v2

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    goto :goto_6d

    .line 683
    :cond_5e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    int-to-float v6, p1

    new-array v3, v3, [F

    aput v5, v3, v0

    aput v6, v3, v2

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    .line 685
    :goto_6d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p2, :cond_90

    .line 686
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v2, v3, v5, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x32

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 688
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x15e

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_9e

    .line 690
    :cond_90
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 693
    :goto_9e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p2, :cond_b7

    .line 694
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;

    invoke-direct {v2, p0, p3, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel$5;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;ZI)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_b7

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    :cond_b7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_c1

    :cond_bd
    int-to-float p1, p1

    .line 723
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->setRootViewTranslationY(F)V

    .line 725
    :goto_c1
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez p1, :cond_d5

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_d5

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 727
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    if-eqz p1, :cond_fa

    .line 730
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 731
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 732
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 736
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_fa
    :goto_fa
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 9

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] fadeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCouldShow:Z

    if-eqz v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsCapturing:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsMoreMode:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    if-eqz v0, :cond_4e

    goto/16 :goto_10d

    :cond_4e
    if-nez p1, :cond_62

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_62

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIfNeedShow:Z

    if-eqz v0, :cond_62

    goto/16 :goto_10d

    :cond_62
    if-nez p1, :cond_77

    .line 602
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_77
    const/4 v0, 0x2

    .line 608
    const-string v1, "alpha"

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    if-eqz p1, :cond_9c

    .line 609
    new-array v4, v0, [F

    fill-array-data v4, :array_10e

    .line 610
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 611
    new-array v4, v0, [F

    fill-array-data v4, :array_116

    .line 612
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 613
    new-array v0, v0, [F

    fill-array-data v0, :array_11e

    .line 614
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d1

    .line 616
    :cond_9c
    new-array v4, v0, [F

    fill-array-data v4, :array_126

    .line 617
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 618
    new-array v4, v0, [F

    fill-array-data v4, :array_12e

    .line 619
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 620
    new-array v0, v0, [F

    fill-array-data v0, :array_136

    .line 621
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 622
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    if-nez v1, :cond_d1

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    if-nez v1, :cond_d1

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    if-nez v1, :cond_d1

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsSuperAntiVideoOn:Z

    if-eqz v1, :cond_cb

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mVideRecording:Z

    if-nez v1, :cond_d1

    .line 623
    :cond_cb
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 627
    invoke-static {v1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    .line 628
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 629
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomLayout:Landroid/widget/FrameLayout;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 632
    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 633
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUIItel$4;-><init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 664
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_10d
    :goto_10d
    return-void

    :array_10e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_116
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_11e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_126
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_12e
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_136
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 4

    .line 789
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->unInit()V

    const/4 v0, 0x0

    .line 790
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    .line 791
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    .line 792
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    .line 793
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    .line 794
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    .line 795
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_check_storage"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateItemValue()V
    .registers 4

    .line 742
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFilterUIOn:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsTimeLapseSettingUIShow:Z

    if-eqz v0, :cond_27

    goto :goto_42

    .line 747
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 748
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_2d

    .line 750
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->resetIndicatorPosition()V

    :cond_42
    :goto_42
    return-void
.end method

.method public updateRootViewPadding(IZ)V
    .registers 4

    .line 1156
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    .line 1157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    if-nez p1, :cond_8

    return-void

    .line 1160
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1161
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "full_zoom_root_margin_bottom_normal"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .registers 11

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    .line 756
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p2

    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, v6

    if-eqz p2, :cond_2c

    .line 757
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v3, v0, v2

    aput p1, v0, v1

    const-string v4, "alpha"

    invoke-static {p2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 758
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 759
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_31

    .line 761
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_31
    cmpl-float p1, p1, v3

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 763
    :goto_37
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_39
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 887
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 888
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWideCameraUIByMode], preModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nextModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mIsFaceBeautyOn:Z

    .line 300
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
