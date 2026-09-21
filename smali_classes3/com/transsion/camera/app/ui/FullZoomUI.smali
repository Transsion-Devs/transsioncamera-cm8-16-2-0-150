.class public Lcom/transsion/camera/app/ui/FullZoomUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "SourceFile"


# static fields
.field private static final ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAIArtMuseumUIOn:Z

.field private mAIGCEffectUIOn:Z

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field private mContext:Landroid/content/Context;

.field private mContinusShot:Z

.field private mCouldShow:Z

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentPostion:F

.field private mExposureTime:Ljava/lang/String;

.field private final mFadeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFlipPageShow:Z

.field private mFreeShotDraggingOrientation:I

.field private mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mFullZoomIn:Landroid/animation/ObjectAnimator;

.field private mFullZoomLayout:Landroid/widget/FrameLayout;

.field private mFullZoomOut:Landroid/animation/ObjectAnimator;

.field private mFullZoomView:Landroid/view/View;

.field private mHideZoomForFlip:Z

.field private mIfNeedShow:Z

.field private mImageStyleShow:Z

.field private mIndicator:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitIndex:I

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsCameraSwitching:Z

.field private mIsCapturing:Z

.field private mIsFaceBeautyOn:Z

.field private mIsFilterUIOn:Z

.field private mIsLongExposureSettingUIShow:Z

.field private mIsMoreMode:Z

.field private mIsNeedAnimate:Z

.field private mIsPausing:Z

.field private mIsPopSettingShow:Z

.field private mIsPopWindowShow:Z

.field private mIsRestoringDefault:Z

.field private mIsSuperAntiVideoOn:Z

.field private mIsSuperNightLiteSwitchShow:Z

.field private mIsTimeLapseSettingUIShow:Z

.field private mIsVideoPortraitBarOn:Z

.field private mIsVideoPortraitSpotPanelOn:Z

.field private mItemsCount:I

.field private mLastOrientation:I

.field private mModeChangedBegin:Z

.field private mOnTouchSeekBarSwitchCamID:Z

.field private mOrientation:I

.field private mPositionList:Ljava/util/List;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousIndicator:Landroid/view/View;

.field private mQuickRecording:Z

.field private mRecordingOrientation:I

.field private mResources:Landroid/content/res/Resources;

.field private mSecondDefaultZoomValue:I

.field private mSelectIndex:I

.field private mSelfTimerBegin:Z

.field private mShouldShow:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperAntiVideoRestrictionType:I

.field private mSupportFocalLength:Z

.field private mSupportSuperAntiVideoV2:Z

.field private mTeleSecondDefaultZoomValue:I

.field private mTranslateDis:I

.field private mTranslateHoverY:I

.field private mTranslateNormalY:I

.field private mUIState:I

.field private mVideSaving:Z

.field private mVideoRecording:Z

.field private mXOffset:I

.field private mbSegmentDragging:Z


# direct methods
.method public static synthetic $r8$lambda$-s6eXajyE7T7C8r8SJ-q9CrVnTQ(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$BMjczILhqF8YuUmg0AFIqyeuxNY(Lcom/transsion/camera/app/ui/FullZoomUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DKwqCaLjHyLXjAXIyJT8rlJ9UFE(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$JL1mLSXG3s8ksWbLY0-xkZ6KEaE(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$NX1vr7INOzY9PH7FryJgpTVk8mk(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$OLtGtUo19FOO_uWonxH1syd6u8c(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutWhenRecording()V

    return-void
.end method

.method public static synthetic $r8$lambda$RtsrzqR9S3GRUGBZROMfdf50dqQ(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$SsB55H30SlYR7PqsebrOyuPRwIc(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XsUUtZu1DsZAlTjVj6wk2hXq4B4(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZATiVz9IBIRa8y-6b82SLA6b4jg(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bWLDpWqq-_SUBuLo2EwhW8X903s(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateLayoutForScreenChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$cSv3ife3Lp72ibUnDoUSPv2R6mM(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$notifyCameraOperateActionToUI$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$dNVM4ktE13jNDH3C0zya6Hl4zWE(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dmKDwZC4yFiC7M6VQXKdGOj5R18(Landroid/view/View;)V
    .registers 2

    .line 774
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_unselected_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCLQz4lUZTbMVSrx6dbLVwtOKtQ(Lcom/transsion/camera/app/ui/FullZoomUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFullZoomIn(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicator(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FullZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousIndicator(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/FullZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIState(Lcom/transsion/camera/app/ui/FullZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mUIState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedAnimate(Lcom/transsion/camera/app/ui/FullZoomUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullZoomUILayout(Lcom/transsion/camera/app/ui/FullZoomUI;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 5

    .line 482
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 106
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    .line 107
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFreeShotDraggingOrientation:I

    .line 108
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mLastOrientation:I

    .line 109
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 111
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideSaving:Z

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    .line 123
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    const/4 v1, 0x3

    .line 124
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mImageStyleShow:Z

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mbSegmentDragging:Z

    .line 142
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSuperAntiVideoRestrictionType:I

    .line 152
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    const/16 v1, 0xc8

    .line 165
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    const v1, 0xea60

    .line 166
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTeleSecondDefaultZoomValue:I

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOnTouchSeekBarSwitchCamID:Z

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    .line 170
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    const v0, 0x461c4000    # 10000.0f

    .line 173
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    .line 174
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelectIndex:I

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    .line 176
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    .line 178
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    .line 181
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 483
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSuperAntiVideoRestrictionType:I

    .line 484
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSupportSuperAntiVideoV2:Z

    return-void
.end method

.method private addItemViews(Ljava/util/List;Z)V
    .registers 11

    if-eqz p1, :cond_f4

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_8

    goto/16 :goto_f4

    .line 814
    :cond_8
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOnTouchSeekBarSwitchCamID:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    if-eqz v1, :cond_13

    .line 815
    :cond_10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 818
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 819
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.transsion.camera.ui.setting.zoom.SecondZoomItemUI"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 820
    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v3, :cond_46

    .line 821
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->isNeedShowEntryView(Z)V

    :cond_46
    if-eqz p2, :cond_4a

    add-int/lit8 v0, v0, 0x1

    .line 828
    :cond_4a
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const/4 v5, 0x7

    if-ne v3, v4, :cond_75

    .line 829
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    if-ne v3, v5, :cond_5e

    .line 830
    sget v3, Lcom/transsion/camera/R$layout;->full_zoom_text_for_flip_item:I

    goto :goto_81

    .line 832
    :cond_5e
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 833
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 834
    sget v3, Lcom/transsion/camera/R$layout;->unsupport_zoooming_focal_length_item:I

    goto :goto_81

    .line 836
    :cond_6f
    sget v3, Lcom/transsion/camera/R$layout;->full_zoom_text_unsupport_zoooming_item:I

    goto :goto_81

    .line 839
    :cond_72
    sget v3, Lcom/transsion/camera/R$layout;->full_zoom_text_item:I

    goto :goto_81

    .line 842
    :cond_75
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v3, v4, :cond_80

    .line 843
    sget v3, Lcom/transsion/camera/R$layout;->full_zoom_image_item:I

    goto :goto_81

    :cond_80
    move v3, v2

    :goto_81
    if-nez v3, :cond_84

    return-void

    .line 848
    :cond_84
    iget v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->setSecondZoomDefaultValue(I)V

    .line 849
    iget v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTeleSecondDefaultZoomValue:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->setTeleSecondZoomDefaultValue(I)V

    .line 850
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_ec

    .line 851
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOnTouchSeekBarSwitchCamID:Z

    if-nez v4, :cond_9d

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    if-eqz v4, :cond_ec

    .line 852
    :cond_9d
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v4, v7, v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 853
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapsePhotoMode:Z

    if-nez v4, :cond_b1

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSlowMotionMode:Z

    if-nez v4, :cond_b1

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapseVideoMode:Z

    if-eqz v4, :cond_ba

    :cond_b1
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v4, :cond_ba

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v4, v5, :cond_ba

    move p2, v2

    :cond_ba
    if-eqz p2, :cond_c3

    .line 857
    iget v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelectIndex:I

    if-ne v0, v4, :cond_c3

    .line 858
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 860
    :cond_c3
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_da

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v4, v5, :cond_da

    .line 862
    sget v4, Lcom/transsion/camera/R$drawable;->ic_fullzoom_un_zooming_item_unselected_bg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 864
    :cond_da
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 865
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 866
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    invoke-interface {v3, v4, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 870
    :cond_ec
    invoke-interface {v1, v6}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->isNeedShowEntryView(Z)V

    goto/16 :goto_18

    .line 872
    :cond_f1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    return-void

    .line 811
    :cond_f4
    :goto_f4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addItemViews] settingUIList is null or mFullZoomLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 1350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1351
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private computeTranslateX(I)F
    .registers 4

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1393
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_items_translate_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    goto :goto_2e

    .line 1396
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->full_un_zooming_item_distanse:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    goto :goto_2e

    .line 1399
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    .line 1401
    :goto_2e
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private currentFocalLengthMode()Z
    .registers 2

    .line 1388
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSupportFocalLength:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    if-nez v0, :cond_c

    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInStreetPhotoMode:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    .line 384
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 394
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_14
    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    .line 403
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 3

    .line 446
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_12

    .line 447
    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$1;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutWhenRecording(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 454
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 183
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

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_534

    :goto_30
    move p1, v2

    goto :goto_7e

    :sswitch_32
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_30

    :cond_3b
    move p1, v1

    goto :goto_7e

    :sswitch_3d
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_30

    :cond_46
    move p1, v5

    goto :goto_7e

    :sswitch_48
    const-string v0, "key_fun_video_record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_30

    :cond_51
    move p1, v6

    goto :goto_7e

    :sswitch_53
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_30

    :cond_5c
    move p1, v3

    goto :goto_7e

    :sswitch_5e
    const-string v0, "key_exposure_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_30

    :cond_67
    move p1, v4

    goto :goto_7e

    :sswitch_69
    const-string v0, "key_check_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_30

    :cond_72
    move p1, v8

    goto :goto_7e

    :sswitch_74
    const-string v0, "key_vlog_correct_orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_30

    :cond_7d
    move p1, v7

    :goto_7e
    packed-switch p1, :pswitch_data_552

    goto/16 :goto_533

    .line 460
    :pswitch_83
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    .line 461
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 292
    :pswitch_9f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_564

    :goto_a9
    move v1, v2

    goto/16 :goto_1e9

    :sswitch_ac
    const-string/jumbo p1, "value_video_portrait_spot_panel_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b6

    goto :goto_a9

    :cond_b6
    const/16 v1, 0x16

    goto/16 :goto_1e9

    :sswitch_ba
    const-string/jumbo p1, "value_long_exposure_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c4

    goto :goto_a9

    :cond_c4
    const/16 v1, 0x15

    goto/16 :goto_1e9

    :sswitch_c8
    const-string/jumbo p1, "value_timelapse_setting_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d2

    goto :goto_a9

    :cond_d2
    const/16 v1, 0x14

    goto/16 :goto_1e9

    :sswitch_d6
    const-string/jumbo p1, "value_dv_video_mode_bottom_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e0

    goto :goto_a9

    :cond_e0
    const/16 v1, 0x13

    goto/16 :goto_1e9

    :sswitch_e4
    const-string/jumbo p1, "value_ai_art_museum_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ee

    goto :goto_a9

    :cond_ee
    const/16 v1, 0x12

    goto/16 :goto_1e9

    :sswitch_f2
    const-string/jumbo p1, "value_timelapse_setting_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fc

    goto :goto_a9

    :cond_fc
    const/16 v1, 0x11

    goto/16 :goto_1e9

    :sswitch_100
    const-string/jumbo p1, "value_ai_art_museum_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10a

    goto :goto_a9

    :cond_10a
    const/16 v1, 0x10

    goto/16 :goto_1e9

    :sswitch_10e
    const-string/jumbo p1, "value_video_portrait_spot_panel_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_118

    goto :goto_a9

    :cond_118
    const/16 v1, 0xf

    goto/16 :goto_1e9

    :sswitch_11c
    const-string/jumbo p1, "value_zoomwheel_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_126

    goto :goto_a9

    :cond_126
    const/16 v1, 0xe

    goto/16 :goto_1e9

    :sswitch_12a
    const-string/jumbo p1, "value_zoomwheel_view_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_135

    goto/16 :goto_a9

    :cond_135
    const/16 v1, 0xd

    goto/16 :goto_1e9

    :sswitch_139
    const-string/jumbo p1, "value_facebeauty_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_144

    goto/16 :goto_a9

    :cond_144
    const/16 v1, 0xc

    goto/16 :goto_1e9

    :sswitch_148
    const-string/jumbo p1, "value_aigc_effect_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_153

    goto/16 :goto_a9

    :cond_153
    const/16 v1, 0xb

    goto/16 :goto_1e9

    :sswitch_157
    const-string/jumbo p1, "value_facebeauty_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_162

    goto/16 :goto_a9

    :cond_162
    const/16 v1, 0xa

    goto/16 :goto_1e9

    :sswitch_166
    const-string/jumbo p1, "value_long_exposure_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_171

    goto/16 :goto_a9

    :cond_171
    const/16 v1, 0x9

    goto/16 :goto_1e9

    :sswitch_175
    const-string/jumbo p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_180

    goto/16 :goto_a9

    :cond_180
    const/16 v1, 0x8

    goto/16 :goto_1e9

    :sswitch_184
    const-string/jumbo p1, "value_videoportrait_bar_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18f

    goto/16 :goto_a9

    :cond_18f
    const/4 v1, 0x7

    goto :goto_1e9

    :sswitch_191
    const-string/jumbo p1, "value_video_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e9

    goto/16 :goto_a9

    :sswitch_19c
    const-string/jumbo p1, "value_video_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a7

    goto/16 :goto_a9

    :cond_1a7
    move v1, v5

    goto :goto_1e9

    :sswitch_1a9
    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b4

    goto/16 :goto_a9

    :cond_1b4
    move v1, v6

    goto :goto_1e9

    :sswitch_1b6
    const-string/jumbo p1, "value_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c1

    goto/16 :goto_a9

    :cond_1c1
    move v1, v3

    goto :goto_1e9

    :sswitch_1c3
    const-string/jumbo p1, "value_dv_video_mode_bottom_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ce

    goto/16 :goto_a9

    :cond_1ce
    move v1, v4

    goto :goto_1e9

    :sswitch_1d0
    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1db

    goto/16 :goto_a9

    :cond_1db
    move v1, v8

    goto :goto_1e9

    :sswitch_1dd
    const-string/jumbo p1, "value_aigc_effect_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e8

    goto/16 :goto_a9

    :cond_1e8
    move v1, v7

    :cond_1e9
    :goto_1e9
    const-wide/16 p1, 0x32

    packed-switch v1, :pswitch_data_5c2

    goto/16 :goto_533

    .line 369
    :pswitch_1f0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 370
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitSpotPanelOn:Z

    .line 371
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 421
    :pswitch_1fe
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    .line 422
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 358
    :pswitch_207
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 343
    :pswitch_20d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 344
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 345
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 409
    :pswitch_21e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 410
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    .line 411
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 412
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 362
    :pswitch_231
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    .line 363
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 364
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez p1, :cond_533

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 400
    :pswitch_23e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 375
    :pswitch_250
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 376
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitSpotPanelOn:Z

    .line 377
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 350
    :pswitch_25e
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 351
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 354
    :pswitch_263
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 355
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 322
    :pswitch_268
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 323
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 324
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 390
    :pswitch_278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 329
    :pswitch_28a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 330
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 331
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 332
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 417
    :pswitch_29d
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 308
    :pswitch_2a3
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 309
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 315
    :pswitch_2b3
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 316
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 295
    :pswitch_2c3
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    .line 296
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 337
    :pswitch_2cb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 338
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 302
    :pswitch_2d9
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    .line 303
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 304
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 381
    :pswitch_2e4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 440
    :pswitch_2f6
    const-string/jumbo p1, "value_fun_video_start_recording"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_313

    .line 441
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 442
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 444
    :cond_313
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 445
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 186
    :pswitch_327
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v8, p1, :cond_332

    if-eq v6, p1, :cond_332

    if-ne v5, p1, :cond_330

    goto :goto_332

    :cond_330
    move p1, v7

    goto :goto_333

    :cond_332
    :goto_332
    move p1, v8

    .line 189
    :goto_333
    const-string/jumbo v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    if-eqz v0, :cond_35c

    .line 190
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v0

    .line 191
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz p1, :cond_34e

    .line 192
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-eq p1, v4, :cond_352

    :cond_34e
    if-eqz v0, :cond_357

    if-eqz v1, :cond_357

    .line 193
    :cond_352
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 195
    :cond_357
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 197
    :cond_35c
    const-string/jumbo v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_390

    if-eqz p1, :cond_375

    .line 199
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v4, :cond_370

    .line 200
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 202
    :cond_370
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 204
    :cond_375
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_384

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result p1

    if-eqz p1, :cond_4aa

    .line 206
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_384
    if-ne p1, v6, :cond_38b

    .line 210
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 212
    :cond_38b
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 215
    :cond_390
    const-string/jumbo v0, "value_wide_camera_item_second_zoom_animation"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b0

    .line 216
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_4aa

    .line 217
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_4aa

    if-eqz v0, :cond_4aa

    .line 220
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 223
    :cond_3b0
    const-string/jumbo v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    .line 224
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v0

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v0, :cond_3cc

    if-eqz v1, :cond_3cc

    .line 227
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_3cc
    if-eqz p1, :cond_3cf

    move v2, v8

    .line 229
    :cond_3cf
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 231
    :cond_3d4
    const-string/jumbo v0, "value_macro_camera_item_second_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3fc

    .line 232
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v0, v4, :cond_3e7

    xor-int/2addr p1, v8

    .line 233
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_3e7
    if-ne v0, v3, :cond_3ee

    .line 235
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_3ee
    if-ne v0, v6, :cond_3f5

    .line 237
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_3f5
    if-ne v0, v5, :cond_4aa

    .line 239
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 241
    :cond_3fc
    const-string/jumbo v0, "value_macro_camera_item_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41f

    .line 242
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v0, v4, :cond_40e

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_40e
    if-ne v0, v3, :cond_418

    if-eqz p1, :cond_413

    move v2, v8

    .line 245
    :cond_413
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_418
    if-ne v0, v6, :cond_4aa

    .line 247
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 249
    :cond_41f
    const-string/jumbo p1, "value_focal_camera_item_third_zoom_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43f

    .line 250
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v6, :cond_431

    .line 251
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_431
    if-ne p1, v3, :cond_438

    .line 253
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    :cond_438
    if-ne p1, v5, :cond_4aa

    .line 255
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto/16 :goto_4aa

    .line 257
    :cond_43f
    const-string/jumbo p1, "value_macro_camera_item_street_photo_first_zoom_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_456

    .line 258
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_450

    .line 259
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto :goto_4aa

    :cond_450
    if-ne p1, v6, :cond_4aa

    .line 261
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto :goto_4aa

    .line 263
    :cond_456
    const-string/jumbo p1, "value_macro_camera_item_street_photo_second_zoom_seleccted"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46d

    .line 264
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_467

    .line 265
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto :goto_4aa

    :cond_467
    if-ne p1, v6, :cond_4aa

    .line 267
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto :goto_4aa

    .line 269
    :cond_46d
    const-string/jumbo p1, "value_wide_camera_item_tele_zoom_selected"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48c

    .line 270
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_4aa

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result p1

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_4aa

    if-eqz v0, :cond_4aa

    .line 274
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    goto :goto_4aa

    .line 277
    :cond_48c
    const-string/jumbo p1, "value_wide_camera_item_tele_second_zoom_selected"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4aa

    .line 278
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne p1, v5, :cond_4aa

    .line 279
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_4aa

    if-eqz v0, :cond_4aa

    .line 282
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    .line 286
    :cond_4aa
    :goto_4aa
    const-string/jumbo p1, "value_send_current_view_status"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_533

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result p1

    if-nez p1, :cond_533

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutStyle()V

    return-void

    .line 430
    :pswitch_4c5
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mExposureTime:Ljava/lang/String;

    return-void

    .line 433
    :pswitch_4c8
    const-string/jumbo p1, "value_storage_sufficient"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_533

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz p1, :cond_533

    .line 435
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 464
    :pswitch_4ef
    const-string p1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_533

    .line 465
    const-string p1, ","

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 466
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_51c

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onValueChanged illegal value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 471
    :cond_51c
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 472
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 473
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setOrientation(IZ)V

    :cond_533
    :goto_533
    return-void

    :sswitch_data_534
    .sparse-switch
        -0x76350356 -> :sswitch_74
        -0x581e5b9c -> :sswitch_69
        0x1964f925 -> :sswitch_5e
        0x47dd8aea -> :sswitch_53
        0x4be4d535 -> :sswitch_48
        0x50497713 -> :sswitch_3d
        0x7ddb1282 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_552
    .packed-switch 0x0
        :pswitch_4ef
        :pswitch_4c8
        :pswitch_4c5
        :pswitch_327
        :pswitch_2f6
        :pswitch_9f
        :pswitch_83
    .end packed-switch

    :sswitch_data_564
    .sparse-switch
        -0x7b2286b7 -> :sswitch_1dd
        -0x71d81a63 -> :sswitch_1d0
        -0x68523a71 -> :sswitch_1c3
        -0x66c4e80f -> :sswitch_1b6
        -0x593d69e7 -> :sswitch_1a9
        -0x48d6b4a7 -> :sswitch_19c
        -0x3c27f54b -> :sswitch_191
        -0x24caae7b -> :sswitch_184
        -0x24c5b0c0 -> :sswitch_175
        0x3750687 -> :sswitch_166
        0x6a3b3dc -> :sswitch_157
        0x16d1af45 -> :sswitch_148
        0x18fd05d2 -> :sswitch_139
        0x275812b7 -> :sswitch_12a
        0x275d1072 -> :sswitch_11c
        0x276804c9 -> :sswitch_10e
        0x2baa12c2 -> :sswitch_100
        0x47a78cc0 -> :sswitch_f2
        0x499844ec -> :sswitch_e4
        0x5e0aebbf -> :sswitch_d6
        0x6568806e -> :sswitch_c8
        0x6b2bc9c7 -> :sswitch_ba
        0x7d246345 -> :sswitch_ac
    .end sparse-switch

    :pswitch_data_5c2
    .packed-switch 0x0
        :pswitch_2e4
        :pswitch_2d9
        :pswitch_2cb
        :pswitch_2c3
        :pswitch_2d9
        :pswitch_2d9
        :pswitch_2c3
        :pswitch_2b3
        :pswitch_2a3
        :pswitch_29d
        :pswitch_28a
        :pswitch_278
        :pswitch_268
        :pswitch_263
        :pswitch_25e
        :pswitch_250
        :pswitch_23e
        :pswitch_231
        :pswitch_21e
        :pswitch_20d
        :pswitch_207
        :pswitch_1fe
        :pswitch_1f0
    .end packed-switch
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$10()V
    .registers 4

    .line 1946
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_1b

    .line 1947
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$11()V
    .registers 4

    .line 1956
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_1b

    .line 1957
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$12()V
    .registers 4

    .line 1979
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_1b

    .line 1980
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$6(I)V
    .registers 3

    .line 1663
    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI$7;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutWhenRecording(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$7()V
    .registers 3

    .line 1704
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    .line 1705
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    const/4 v0, 0x1

    .line 1706
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1707
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_17
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$8()V
    .registers 3

    .line 1713
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    .line 1714
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1715
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_14
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$9()V
    .registers 4

    .line 1887
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    .line 1888
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_1f

    .line 1889
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_1f
    return-void
.end method

.method private needToWait()Z
    .registers 5

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    .line 1527
    :goto_11
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-eqz v2, :cond_22

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private notifyActionToItemUI(I)V
    .registers 3

    .line 1512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_23

    .line 1515
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

    .line 1517
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_11

    :cond_23
    :goto_23
    return-void
.end method

.method private printStatus()V
    .registers 4

    .line 940
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFilterUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsFaceBeautyOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCEffectUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIArtMuseumUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoPortraitBarOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsTimeLapseSettingUIShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  , mVideoRecording :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelfTimerBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCapturing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMoreMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLongExposureSettingUIShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private runFullZoomUIRotateAnimator()V
    .registers 8

    .line 2279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 2282
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2285
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2289
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    .line 2290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    .line 2291
    sget-object v1, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$9;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2305
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setOrientation(IZ)V
    .registers 7

    .line 891
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 892
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 894
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 895
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v0, :cond_13

    .line 896
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    .line 898
    :cond_13
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mbSegmentDragging:Z

    if-eqz v1, :cond_19

    .line 899
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFreeShotDraggingOrientation:I

    :cond_19
    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    if-nez p2, :cond_20

    goto :goto_2a

    .line 903
    :cond_20
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mLastOrientation:I

    iget p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    if-eq p1, p2, :cond_29

    .line 904
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->runFullZoomUIRotateAnimator()V

    :cond_29
    return-void

    .line 902
    :cond_2a
    :goto_2a
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    return-void

    .line 906
    :cond_2e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_54

    .line 907
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v1, :cond_50

    if-eqz p2, :cond_50

    if-nez v0, :cond_43

    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    if-nez v1, :cond_4c

    :cond_43
    if-eqz v0, :cond_50

    const/4 v1, -0x1

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    if-nez v0, :cond_50

    .line 910
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->runFullZoomUIRotateAnimator()V

    return-void

    .line 912
    :cond_50
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    return-void

    .line 915
    :cond_54
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    return-void
.end method

.method private startTranslateX(I)V
    .registers 3

    .line 1465
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1468
    :cond_7
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result p1

    .line 1469
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    .line 1470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private startTranslateXWithAnimation(I)V
    .registers 18

    move-object/from16 v0, p0

    .line 1405
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1408
    :cond_9
    iget-object v1, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1409
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v2

    .line 1410
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_3d

    .line 1412
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eq v3, v5, :cond_2f

    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v3, v6

    goto :goto_3b

    .line 1413
    :cond_2f
    :goto_2f
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_indicator_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :goto_3b
    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1417
    :cond_3d
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 1418
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    :cond_55
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[startTranslateXWithAnimation] nextIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nextPosition:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " previousPosition:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentPostion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1423
    iget v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_95

    .line 1424
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startTranslateXWithAnimation] current postion is same as next postion, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1427
    :cond_95
    iput v2, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    .line 1430
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1431
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    :cond_a8
    iget-object v3, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1434
    iget-object v1, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    const/4 v3, 0x2

    new-array v7, v3, [F

    fill-array-data v7, :array_152

    const-string v8, "alpha"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0xc8

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1435
    sget-object v7, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1436
    iget-object v11, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    new-array v12, v3, [F

    fill-array-data v12, :array_15a

    const-string v13, "scaleX"

    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1437
    iget-object v12, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    new-array v14, v3, [F

    fill-array-data v14, :array_162

    const-string v15, "scaleY"

    invoke-static {v12, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1438
    invoke-virtual {v11, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1439
    invoke-virtual {v12, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1441
    iget-object v14, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v14, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1442
    iget-object v2, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    new-array v14, v3, [F

    fill-array-data v14, :array_16a

    invoke-static {v2, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1443
    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1444
    iget-object v8, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/4 v9, 0x3

    new-array v10, v9, [F

    fill-array-data v10, :array_172

    invoke-static {v8, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v13, 0x12c

    invoke-virtual {v8, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1445
    iget-object v10, v0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    move/from16 p1, v3

    new-array v3, v9, [F

    fill-array-data v3, :array_17c

    invoke-static {v10, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1446
    invoke-virtual {v8, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1447
    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1449
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x6

    .line 1450
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v1, v10, v6

    const/4 v1, 0x1

    aput-object v11, v10, v1

    aput-object v12, v10, p1

    aput-object v2, v10, v9

    aput-object v8, v10, v5

    aput-object v3, v10, v4

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1451
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1452
    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$6;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI$6;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_152
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_15a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_162
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_16a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_172
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_17c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unSupportZoomingMode(Ljava/lang/String;)Z
    .registers 7

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unSupportZoomingMode] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsSuperAntiVideoOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    move p1, v0

    goto :goto_2d

    :cond_2c
    move p1, v1

    .line 493
    :goto_2d
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    if-eqz v2, :cond_46

    if-eqz p1, :cond_3e

    .line 494
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVideoMode:Z

    if-eqz v3, :cond_3c

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v3, :cond_3c

    goto :goto_3e

    :cond_3c
    move v3, v0

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v3, v1

    :goto_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setUnSupportZoomingStatus(ZZ)V

    :cond_46
    if-eqz p1, :cond_52

    .line 496
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVideoMode:Z

    if-eqz p1, :cond_51

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    return v0

    :cond_52
    :goto_52
    return v1
.end method

.method private updateDefaultIndicator()V
    .registers 10

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[updateDefaultIndicator] mPositionList is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 723
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 724
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v3, :cond_5b

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_5b
    if-ne v0, v1, :cond_85

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_85
    if-ne v0, v4, :cond_a1

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_a1
    :goto_a1
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v7, 0x4

    if-eq v6, v0, :cond_ad

    if-eq v7, v0, :cond_ad

    if-ne v3, v0, :cond_ab

    goto :goto_ad

    :cond_ab
    move v0, v5

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v0, v6

    .line 742
    :goto_ae
    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMacroMode:Z

    if-eqz v8, :cond_b6

    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForMacro:Z

    if-nez v8, :cond_be

    :cond_b6
    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    if-eqz v8, :cond_cd

    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForPmaster:Z

    if-eqz v8, :cond_cd

    .line 743
    :cond_be
    iget v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v8, v4, :cond_c5

    xor-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_c5
    if-ne v8, v1, :cond_d2

    if-eqz v0, :cond_ca

    goto :goto_cb

    :cond_ca
    move v2, v6

    :goto_cb
    move v0, v2

    goto :goto_d3

    .line 748
    :cond_cd
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v1, v4, :cond_d2

    goto :goto_d3

    :cond_d2
    move v0, v5

    .line 751
    :goto_d3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 752
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result v0

    .line 753
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 755
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v2, v7, :cond_f3

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v3, :cond_ff

    .line 756
    :cond_f3
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_indicator_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    :cond_ff
    int-to-float v2, v5

    add-float/2addr v0, v2

    .line 760
    :cond_101
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDefaultIndicator] currentPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " defaultPostion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mModeChangedBegin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 762
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    .line 763
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    if-eqz v2, :cond_138

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_138

    .line 764
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_138
    return-void
.end method

.method private updateFullZoomLayoutBgId()I
    .registers 6

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    if-eqz v0, :cond_22

    .line 785
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v0, v4, :cond_13

    .line 786
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_39

    :cond_13
    if-ne v0, v3, :cond_18

    .line 788
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_39

    :cond_18
    if-ne v0, v2, :cond_1d

    .line 790
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_39

    :cond_1d
    if-ne v0, v1, :cond_38

    .line 792
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_unsupport_items:I

    goto :goto_39

    .line 795
    :cond_22
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v0, v4, :cond_29

    .line 796
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_5_items:I

    goto :goto_39

    :cond_29
    if-ne v0, v3, :cond_2e

    .line 798
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_items:I

    goto :goto_39

    :cond_2e
    if-ne v0, v2, :cond_33

    .line 800
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_items:I

    goto :goto_39

    :cond_33
    if-ne v0, v1, :cond_38

    .line 802
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_items:I

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 805
    :goto_39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFullZoomLayoutBgId] resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private updateFullZoomUILayout(ZI)V
    .registers 9

    .line 2061
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    .line 2062
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v0, :cond_10

    .line 2063
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    goto :goto_11

    :cond_10
    move v0, p2

    .line 2067
    :goto_11
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomContainerLayout(II)V

    .line 2069
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1b

    goto :goto_4d

    .line 2074
    :cond_1b
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_32

    const/4 v5, 0x4

    if-eq v2, v5, :cond_32

    const/4 v5, 0x5

    if-ne v2, v5, :cond_28

    goto :goto_32

    :cond_28
    if-ne v1, v2, :cond_35

    .line 2080
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v1, :cond_35

    .line 2081
    iget p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    move p1, v4

    goto :goto_35

    :cond_32
    :goto_32
    const/16 p2, 0x5a

    move p1, v3

    .line 2095
    :cond_35
    :goto_35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_39
    if-ge v3, v0, :cond_4d

    .line 2097
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2098
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_4a

    .line 2099
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v1, p2, p1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateHorizontalLayout(I)V
    .registers 4

    .line 2264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_18

    .line 2265
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_10

    goto :goto_18

    :cond_10
    const/4 v1, 0x3

    if-ne p1, v1, :cond_29

    const/16 p1, 0x11

    .line 2273
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_29

    .line 2267
    :cond_18
    :goto_18
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_24

    const p1, 0x800013

    .line 2268
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_29

    :cond_24
    const p1, 0x800015

    .line 2270
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2275
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutForScreenChanged()V
    .registers 6

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1091
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1093
    :cond_f
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v0, v1

    .line 1094
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_86

    const/4 v2, 0x4

    if-eq v1, v2, :cond_86

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    goto :goto_86

    :cond_20
    if-eqz v1, :cond_4d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    goto :goto_4d

    :cond_26
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4c

    .line 1111
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateHoverY:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1112
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateHoverY:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4c
    return-void

    :cond_4d
    :goto_4d
    if-nez v1, :cond_64

    .line 1103
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateNormalY:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_6d

    .line 1107
    :cond_64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_column:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1109
    :goto_6d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateNormalY:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_86
    :goto_86
    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1099
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateRootViewLayout(I)V
    .registers 6

    .line 2241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_60

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_9

    goto :goto_60

    .line 2244
    :cond_9
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v2, v3

    if-eqz p1, :cond_3a

    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    goto :goto_3a

    :cond_14
    const/4 v1, 0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x4

    if-eq p1, v1, :cond_38

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1e

    goto :goto_38

    .line 2257
    :cond_1e
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-eqz p1, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover_vlog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_4b

    .line 2258
    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_42

    :cond_38
    :goto_38
    const/4 p1, 0x0

    goto :goto_4b

    :cond_3a
    :goto_3a
    if-nez p1, :cond_44

    .line 2248
    sget p1, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_normal:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_42
    add-int/2addr p1, v2

    goto :goto_4b

    .line 2250
    :cond_44
    sget p1, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_column:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_42

    .line 2260
    :goto_4b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_60
    :goto_60
    return-void
.end method

.method private updateZoomContainerLayout(II)V
    .registers 15

    .line 2105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_289

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_a

    goto/16 :goto_289

    .line 2109
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2110
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2111
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mLastOrientation:I

    const/4 v2, 0x1

    const/16 v3, 0x168

    const/16 v4, 0x55

    const/16 v5, 0x35

    const/16 v6, 0x33

    const/16 v7, 0x5a

    const/16 v8, 0x10e

    const/16 v9, 0xb4

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne p2, v2, :cond_109

    if-eq p1, v7, :cond_cd

    if-eq p1, v9, :cond_9a

    if-eq p1, v8, :cond_67

    const/16 v2, 0x53

    .line 2150
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2151
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2152
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_4d

    .line 2153
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    :cond_4d
    if-ne v2, v10, :cond_5b

    .line 2155
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    .line 2157
    :cond_5b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    .line 2137
    :cond_67
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2138
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_78

    .line 2139
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8f

    :cond_78
    if-ne v2, v10, :cond_85

    .line 2141
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8f

    .line 2143
    :cond_85
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2145
    :goto_8f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 2126
    :cond_9a
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2127
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2128
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_b5

    .line 2129
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    :cond_b5
    if-ne v2, v10, :cond_c2

    .line 2131
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 2133
    :cond_c2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 2115
    :cond_cd
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2116
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_de

    .line 2117
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f5

    :cond_de
    if-ne v2, v10, :cond_eb

    .line 2119
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f5

    .line 2121
    :cond_eb
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2123
    :goto_f5
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_ff
    add-int/lit16 p1, p1, 0x10e

    .line 2161
    rem-int/2addr p1, v3

    .line 2162
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_205

    :cond_109
    if-eqz p2, :cond_1fc

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1fc

    if-ne p2, v11, :cond_112

    goto/16 :goto_1fc

    :cond_112
    if-ne p2, v10, :cond_160

    .line 2169
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2170
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_125

    .line 2171
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_14f

    :cond_125
    if-ne v2, v10, :cond_132

    .line 2173
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_14f

    .line 2175
    :cond_132
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 2176
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_unzooming_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_14f

    .line 2178
    :cond_145
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2181
    :goto_14f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2182
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_205

    :cond_160
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1ae

    .line 2184
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2185
    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ne v2, v11, :cond_174

    .line 2186
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_19e

    :cond_174
    if-ne v2, v10, :cond_181

    .line 2188
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_19e

    .line 2190
    :cond_181
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 2191
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_unzooming_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_19e

    .line 2193
    :cond_194
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_lr_hover_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2196
    :goto_19e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2197
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v9, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_205

    :cond_1ae
    const/4 v1, 0x7

    if-ne p2, v1, :cond_205

    .line 2199
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2200
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_right_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_1e2

    if-eq p1, v7, :cond_1c8

    if-eq p1, v9, :cond_1c8

    if-eq p1, v8, :cond_1c8

    if-eq p1, v3, :cond_1e2

    goto :goto_205

    .line 2213
    :cond_1c8
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v1, :cond_1d7

    .line 2214
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_0_or_90_recording_top_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_205

    .line 2216
    :cond_1d7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_180_or_270_top_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_205

    .line 2204
    :cond_1e2
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v1, :cond_1f1

    .line 2205
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_180_or_270_recording_top_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_205

    .line 2207
    :cond_1f1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_0_or_90_top_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_205

    :cond_1fc
    :goto_1fc
    const/16 v2, 0x51

    .line 2166
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2167
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 2223
    :cond_205
    :goto_205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateZoomContainerLayout] gravity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " leftMargin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bottomMargin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " topMargin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rightMargin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 2226
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->getOrientation()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mVideoRecording: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2227
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    if-eqz v1, :cond_271

    .line 2228
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_276

    .line 2230
    :cond_271
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2232
    :goto_276
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz p1, :cond_283

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-eqz p1, :cond_286

    .line 2235
    :cond_283
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewLayout(I)V

    .line 2237
    :cond_286
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateHorizontalLayout(I)V

    :cond_289
    :goto_289
    return-void
.end method

.method private updateZoomLayoutStyle()V
    .registers 6

    const/4 v0, 0x0

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 770
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_20

    .line 773
    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda16;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    .line 777
    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_alpha_bc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    return-void
.end method

.method private updateZoomLayoutWhenRecording()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1026
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomLayoutWhenRecording(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private updateZoomLayoutWhenRecording(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 11

    .line 1030
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1032
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v0, -0x1

    goto :goto_16

    .line 1038
    :cond_11
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateHoverY:I

    goto :goto_16

    .line 1035
    :cond_14
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateNormalY:I

    :goto_16
    const/4 v2, 0x0

    if-lez v0, :cond_4b

    .line 1045
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "translationY"

    if-eqz v3, :cond_38

    if-nez p1, :cond_38

    .line 1046
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    int-to-float v7, v0

    new-array v1, v1, [F

    aput v7, v1, v5

    aput v2, v1, v4

    invoke-static {v3, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    goto :goto_4b

    .line 1048
    :cond_38
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-nez v3, :cond_4b

    .line 1049
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    int-to-float v7, v0

    new-array v1, v1, [F

    aput v2, v1, v5

    aput v7, v1, v4

    invoke-static {v3, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    .line 1053
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1054
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v2, :cond_72

    const-wide/16 v2, 0x32

    goto :goto_74

    :cond_72
    const-wide/16 v2, 0x64

    :goto_74
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1056
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1057
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v1, :cond_97

    .line 1058
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI$2;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;ZI)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_97

    .line 1082
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1085
    :cond_97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_9c
    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .registers 5

    .line 931
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->couldShow(Z)V

    .line 932
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[couldShow] show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 933
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz p1, :cond_20

    .line 935
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    :cond_20
    return-void
.end method

.method protected doUpdateSettingUI()V
    .registers 10

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 571
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1b

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v2, v0, :cond_19

    const/16 v0, 0xb4

    .line 573
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    goto :goto_1b

    .line 575
    :cond_19
    iput v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 578
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    .line 579
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSupportSuperAntiVideoV2:Z

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSuperAntiVideoRestrictionType:I

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v0, :cond_39

    goto :goto_3c

    .line 586
    :cond_39
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    goto :goto_43

    .line 582
    :cond_3c
    :goto_3c
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 583
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 584
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    .line 588
    :goto_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setSettingUIList] mIsNeedShowUI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSettingUIList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_7b

    .line 591
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    .line 593
    :cond_7b
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewPadding(IZZ)V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 595
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 596
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 597
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    .line 598
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v6

    if-ne v6, v2, :cond_c4

    .line 599
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_for_flip:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 600
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_item_size_for_flip:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 601
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_item_size_for_flip:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_10c

    .line 603
    :cond_c4
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 604
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_selected_bg:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 605
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_selected_bg:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e9

    .line 607
    :cond_db
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_un_zooming_selected_bg:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 608
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_un_zooming_selected_bg:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 610
    :goto_e9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 611
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10c

    .line 614
    :cond_fc
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_109

    .line 615
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_109
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateDefaultIndicator()V

    .line 620
    :goto_10c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomLayoutBgId()I

    move-result v2

    .line 621
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b1

    .line 622
    iget v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    const/4 v7, 0x2

    const/16 v8, 0x10

    if-eq v6, v7, :cond_260

    const/4 v7, 0x3

    if-eq v6, v7, :cond_21d

    const/4 v1, 0x4

    if-eq v6, v1, :cond_1a4

    const/4 v1, 0x5

    if-eq v6, v1, :cond_12a

    goto/16 :goto_2b3

    .line 624
    :cond_12a
    iput v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 625
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 626
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 627
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_street_photo_items_container_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_157

    .line 630
    :cond_149
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_5_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_157
    :goto_157
    if-eqz v2, :cond_15e

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 635
    :cond_15e
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_178

    .line 637
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v1

    if-eqz v1, :cond_182

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 638
    :cond_178
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 640
    :cond_182
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_193

    move v1, v3

    goto :goto_19b

    .line 643
    :cond_193
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_19b
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2b3

    .line 647
    :cond_1a4
    iput v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 648
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 649
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->currentFocalLengthMode()Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 650
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_items_container_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1e0

    .line 652
    :cond_1c3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_4_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1e0

    .line 655
    :cond_1d2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_4_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_1e0
    if-eqz v2, :cond_1e7

    .line 658
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 660
    :cond_1e7
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 661
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 662
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 664
    :cond_1fb
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 667
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20c

    move v1, v3

    goto :goto_214

    .line 668
    :cond_20c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_214
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 669
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2b3

    .line 672
    :cond_21d
    iput v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 673
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 674
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_3_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_244

    .line 676
    :cond_236
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_3_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_244
    const/16 v1, 0x11

    .line 678
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 679
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 680
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 682
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 683
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_2b3

    .line 685
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2b3

    .line 689
    :cond_260
    iput v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 690
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 691
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_2_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_287

    .line 693
    :cond_279
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->full_zoom_width_2_items:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_287
    if-eqz v2, :cond_28e

    .line 696
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 698
    :cond_28e
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 699
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    .line 700
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 701
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 704
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    .line 705
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 706
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b3

    .line 712
    :cond_2b1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 714
    :cond_2b3
    :goto_2b3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    return-void
.end method

.method public hideWideCamera()V
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideWideCamera]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6f

    .line 1121
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 1122
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_70

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    .line 1124
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$3;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_68

    .line 1137
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_63

    .line 1138
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    :cond_63
    const/16 v0, 0x8

    .line 1140
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 1142
    :goto_68
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-nez v0, :cond_6f

    .line 1143
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    :cond_6f
    return-void

    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 516
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInflater:Landroid/view/LayoutInflater;

    .line 517
    sget v0, Lcom/transsion/camera/R$layout;->full_zoom_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 518
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_view_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 519
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 520
    sget p2, Lcom/transsion/camera/R$id;->zoom_camera_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    .line 521
    check-cast p2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 522
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    .line 523
    sget p2, Lcom/transsion/camera/R$id;->full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    .line 524
    sget p2, Lcom/transsion/camera/R$id;->previous_full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    .line 525
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_52

    .line 526
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_58

    .line 528
    :cond_52
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :goto_58
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    .line 531
    sget v0, Lcom/transsion/camera/R$dimen;->recording_full_zoom_margin_bottom_normal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateNormalY:I

    .line 532
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->recording_full_zoom_margin_bottom_hover:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateHoverY:I

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "vlog_wide_camera_translation_distance"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mVlogTranslationDis:I

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wide_camera_translation_distance"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateDis:I

    .line 536
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalLengthSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSupportFocalLength:Z

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 10

    .line 1532
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

    .line 1533
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setZoomWheelShow(I)V

    .line 1534
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->notifyActionToItemUI(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_488

    if-eq p1, v0, :cond_47e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_470

    const/4 v2, 0x3

    if-eq p1, v2, :cond_448

    const/4 v2, 0x5

    if-eq p1, v2, :cond_448

    const/4 v3, 0x7

    if-eq p1, v3, :cond_448

    const/16 v4, 0x13

    if-eq p1, v4, :cond_43c

    const/16 v4, 0x14

    if-eq p1, v4, :cond_403

    const/16 v4, 0x19

    if-eq p1, v4, :cond_3f5

    const/16 v4, 0x1a

    const-wide/16 v5, 0x64

    if-eq p1, v4, :cond_3b8

    const/16 v4, 0x24

    if-eq p1, v4, :cond_3a8

    const/16 v4, 0x25

    if-eq p1, v4, :cond_344

    const/16 v4, 0x30

    if-eq p1, v4, :cond_33a

    const/16 v4, 0x31

    if-eq p1, v4, :cond_322

    const/16 v4, 0x52

    if-eq p1, v4, :cond_308

    const/16 v4, 0x53

    const/4 v7, 0x0

    if-eq p1, v4, :cond_2c6

    const/4 v4, -0x1

    sparse-switch p1, :sswitch_data_48e

    packed-switch p1, :pswitch_data_584

    packed-switch p1, :pswitch_data_58e

    packed-switch p1, :pswitch_data_59c

    goto/16 :goto_487

    .line 1774
    :pswitch_7c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void

    .line 1647
    :pswitch_80
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    return-void

    .line 1579
    :pswitch_83
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void

    .line 1919
    :pswitch_87
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eqz p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-nez p1, :cond_487

    .line 1920
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1921
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 1922
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    return-void

    .line 1904
    :pswitch_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v0, :cond_c1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1905
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_c1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1906
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-ne p1, v2, :cond_c6

    .line 1907
    :cond_c1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    .line 1908
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    .line 1910
    :cond_c6
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_487

    .line 1911
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 1912
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    .line 1913
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    .line 1914
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1915
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1628
    :pswitch_d8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 1629
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 1630
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    .line 1631
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 1632
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    .line 1633
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideSaving:Z

    .line 1634
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 1635
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    .line 1636
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    .line 1637
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    .line 1638
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    .line 1639
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    .line 1640
    iput v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    .line 1642
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_487

    .line 1643
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->resetRecordingUI()V

    return-void

    .line 2003
    :sswitch_fe
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomContainerLayout(II)V

    .line 2004
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mbSegmentDragging:Z

    return-void

    .line 1999
    :sswitch_108
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mbSegmentDragging:Z

    .line 2000
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFreeShotDraggingOrientation:I

    return-void

    .line 1995
    :sswitch_10f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    .line 1996
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 1989
    :sswitch_115
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    .line 1990
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v0, :cond_487

    .line 1991
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mVlogTranslationDis:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 1597
    :sswitch_126
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    return-void

    .line 1594
    :sswitch_129
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    return-void

    .line 1811
    :sswitch_12c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-nez p1, :cond_134

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInLongExposureMode:Z

    if-eqz p1, :cond_487

    .line 1812
    :cond_134
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    return-void

    .line 1953
    :sswitch_137
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v3, p1, :cond_487

    .line 1954
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    .line 1955
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1943
    :sswitch_14f
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v3, p1, :cond_487

    .line 1944
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    .line 1945
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1936
    :sswitch_167
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v3, p1, :cond_487

    .line 1937
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1938
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    .line 1939
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1817
    :sswitch_173
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    return-void

    .line 1931
    :sswitch_176
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mImageStyleShow:Z

    .line 1932
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 1926
    :sswitch_17c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    .line 1927
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mImageStyleShow:Z

    .line 1928
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1897
    :sswitch_184
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOnTouchSeekBarSwitchCamID:Z

    .line 1898
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    if-nez p1, :cond_487

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    if-nez v2, :cond_487

    if-nez p1, :cond_198

    .line 1899
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez p1, :cond_199

    :cond_198
    move v0, v1

    .line 1900
    :cond_199
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewPadding(IZZ)V

    return-void

    .line 1894
    :sswitch_19f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOnTouchSeekBarSwitchCamID:Z

    return-void

    .line 1868
    :sswitch_1a2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    goto :goto_1bc

    .line 1623
    :sswitch_1a5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    .line 1624
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 1625
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1744
    :sswitch_1ad
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-nez p1, :cond_487

    .line 1745
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 1838
    :sswitch_1b9
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    return-void

    .line 1870
    :goto_1bc
    :sswitch_1bc
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    if-nez p1, :cond_487

    .line 1871
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 1872
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1873
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1874
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 1885
    :sswitch_1cb
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    .line 1886
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1878
    :sswitch_1df
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 1879
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    .line 1880
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    .line 1881
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1882
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1650
    :sswitch_1eb
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v3, v2, :cond_1f1

    .line 1651
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 1653
    :cond_1f1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideSaving:Z

    .line 1654
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v2, :cond_2c6

    .line 1655
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    goto/16 :goto_2c6

    .line 1986
    :sswitch_200
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    return-void

    .line 1857
    :sswitch_203
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    goto :goto_25d

    .line 1540
    :sswitch_207
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    return-void

    .line 1537
    :sswitch_20a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    return-void

    .line 1798
    :goto_20d
    :sswitch_20d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_487

    .line 1799
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1800
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_22f

    add-int/lit8 p1, v1, -0x1

    if-ltz p1, :cond_22f

    .line 1802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1803
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_22f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20d

    .line 1786
    :goto_232
    :sswitch_232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_487

    .line 1787
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1788
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_25a

    add-int/lit8 p1, v1, 0x1

    .line 1789
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_25a

    .line 1790
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1791
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_25a
    add-int/lit8 v1, v1, 0x1

    goto :goto_232

    .line 1859
    :goto_25d
    :sswitch_25d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapsePhotoMode:Z

    if-nez p1, :cond_263

    .line 1860
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 1862
    :cond_263
    iput v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    .line 1863
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1864
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 1865
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    return-void

    .line 1825
    :pswitch_26d
    :sswitch_26d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 1826
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1827
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 1591
    :sswitch_275
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    return-void

    .line 1779
    :pswitch_278
    :sswitch_278
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_487

    .line 1780
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1781
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1782
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 1573
    :sswitch_28d
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideSaving:Z

    .line 1574
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_487

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_487

    .line 1575
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 1543
    :sswitch_29f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-eqz p1, :cond_487

    .line 1544
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    return-void

    .line 1600
    :sswitch_2a6
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 1601
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1602
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    return-void

    .line 1758
    :sswitch_2ae
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 1759
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    .line 1760
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInAIGCMode:Z

    if-nez p1, :cond_2b8

    .line 1761
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    .line 1763
    :cond_2b8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAIArtMuseumMode:Z

    if-nez p1, :cond_487

    .line 1764
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    return-void

    .line 1753
    :sswitch_2bf
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInAIGCMode:Z

    if-nez p1, :cond_487

    .line 1754
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    return-void

    .line 1660
    :cond_2c6
    :goto_2c6
    :pswitch_2c6
    :sswitch_2c6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v2, :cond_2eb

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 1661
    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_2eb

    .line 1662
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e7

    .line 1663
    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2f6

    .line 1675
    :cond_2e7
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    goto :goto_2f6

    :cond_2eb
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_2f3

    .line 1679
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    goto :goto_2f6

    .line 1681
    :cond_2f3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->onRecordingStateChange(I)V

    .line 1686
    :goto_2f6
    :sswitch_2f6
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_302

    .line 1687
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    .line 1689
    :cond_302
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1690
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    goto :goto_344

    .line 1607
    :cond_308
    :pswitch_308
    :sswitch_308
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 1608
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31e

    .line 1609
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 1611
    :cond_31e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->onRecordingStateChange(I)V

    return-void

    .line 1976
    :cond_322
    :sswitch_322
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v3, p1, :cond_487

    .line 1977
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    .line 1978
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1966
    :cond_33a
    :sswitch_33a
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v3, p1, :cond_487

    .line 1967
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    .line 1968
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1692
    :cond_344
    :goto_344
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 1693
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    .line 1695
    :sswitch_348
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    .line 1696
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    const/16 v1, 0x9

    if-ne p1, v1, :cond_368

    .line 1697
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapseVideoMode:Z

    if-eqz p1, :cond_368

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_368

    .line 1698
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_368

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_368

    .line 1699
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 1701
    :cond_368
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez p1, :cond_487

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->needToWait()Z

    move-result p1

    if-nez p1, :cond_487

    .line 1702
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_38c

    .line 1703
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1711
    :cond_38c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_396

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_487

    .line 1712
    :cond_396
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1615
    :cond_3a8
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContinusShot:Z

    .line 1617
    :sswitch_3aa
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportShutterUiNewStyle:Z

    if-eqz p1, :cond_487

    .line 1618
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 1619
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1841
    :cond_3b8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-eqz p1, :cond_3be

    .line 1842
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 1844
    :cond_3be
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelEnd:Z

    .line 1845
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 1846
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    .line 1847
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 1848
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    if-eqz p1, :cond_487

    .line 1849
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-nez p1, :cond_3e3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-nez p1, :cond_3e3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    if-eqz p1, :cond_3df

    goto :goto_3e3

    .line 1852
    :cond_3df
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    return-void

    .line 1850
    :cond_3e3
    :goto_3e3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1830
    :cond_3f5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 1831
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    .line 1832
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 1833
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz p1, :cond_487

    .line 1834
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1554
    :cond_403
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    .line 1555
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_487

    .line 1556
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 1557
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    .line 1558
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    .line 1559
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1560
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1561
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 1562
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateX(I)V

    .line 1563
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_487

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_487

    .line 1564
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_42a
    :goto_42a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_487

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz p1, :cond_42a

    .line 1566
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->restoreDefaultValue()V

    goto :goto_42a

    .line 1548
    :cond_43c
    const-string p1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    .line 1549
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    .line 1550
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    .line 1551
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void

    .line 1725
    :cond_448
    :sswitch_448
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    .line 1728
    :sswitch_44a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 1730
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_487

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez p1, :cond_487

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->needToWait()Z

    move-result p1

    if-nez p1, :cond_487

    .line 1731
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$8;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1582
    :cond_470
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 1583
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    .line 1584
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 1585
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperNightLiteSwitchShow:Z

    .line 1586
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    .line 1587
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    return-void

    .line 1768
    :cond_47e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 1769
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    if-nez p1, :cond_487

    .line 1770
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWhenCamSwitchEnd()V

    :cond_487
    :goto_487
    return-void

    .line 1749
    :cond_488
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 1750
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    return-void

    nop

    :sswitch_data_48e
    .sparse-switch
        0x7 -> :sswitch_448
        0x8 -> :sswitch_2bf
        0x9 -> :sswitch_348
        0xa -> :sswitch_2ae
        0xb -> :sswitch_2a6
        0xc -> :sswitch_2f6
        0x17 -> :sswitch_29f
        0x3a -> :sswitch_28d
        0x4c -> :sswitch_278
        0x5a -> :sswitch_275
        0x5b -> :sswitch_26d
        0x5e -> :sswitch_44a
        0x6d -> :sswitch_25d
        0x7c -> :sswitch_232
        0x7d -> :sswitch_20d
        0x81 -> :sswitch_33a
        0x82 -> :sswitch_322
        0x83 -> :sswitch_33a
        0x84 -> :sswitch_322
        0x90 -> :sswitch_308
        0x91 -> :sswitch_2c6
        0x92 -> :sswitch_20a
        0x9b -> :sswitch_207
        0xa7 -> :sswitch_203
        0xb4 -> :sswitch_200
        0xb5 -> :sswitch_322
        0xc9 -> :sswitch_1eb
        0xcf -> :sswitch_1df
        0xd0 -> :sswitch_1cb
        0xd2 -> :sswitch_3aa
        0xd3 -> :sswitch_1bc
        0xdf -> :sswitch_1b9
        0xe7 -> :sswitch_1ad
        0xe9 -> :sswitch_1a5
        0xea -> :sswitch_1a2
        0xeb -> :sswitch_19f
        0xec -> :sswitch_184
        0xed -> :sswitch_275
        0xee -> :sswitch_26d
        0xf2 -> :sswitch_17c
        0xf3 -> :sswitch_176
        0xf7 -> :sswitch_33a
        0xf8 -> :sswitch_322
        0x101 -> :sswitch_173
        0x102 -> :sswitch_26d
        0x109 -> :sswitch_167
        0x10a -> :sswitch_14f
        0x10b -> :sswitch_167
        0x10c -> :sswitch_137
        0x111 -> :sswitch_12c
        0x112 -> :sswitch_26d
        0x11c -> :sswitch_44a
        0x121 -> :sswitch_12c
        0x127 -> :sswitch_129
        0x128 -> :sswitch_126
        0x140 -> :sswitch_115
        0x141 -> :sswitch_10f
        0x143 -> :sswitch_108
        0x144 -> :sswitch_fe
        0x18b -> :sswitch_173
        0x18c -> :sswitch_26d
    .end sparse-switch

    :pswitch_data_584
    .packed-switch 0xe
        :pswitch_26d
        :pswitch_308
        :pswitch_2c6
    .end packed-switch

    :pswitch_data_58e
    .packed-switch 0x1c
        :pswitch_d8
        :pswitch_a8
        :pswitch_87
        :pswitch_83
        :pswitch_80
    .end packed-switch

    :pswitch_data_59c
    .packed-switch 0x48
        :pswitch_7c
        :pswitch_278
        :pswitch_278
    .end packed-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged], orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ScreenManager.getScreenFormType():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_39

    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_39

    .line 886
    :cond_33
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->onOrientationChanged(IZ)V

    .line 887
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->setOrientation(IZ)V

    :cond_39
    :goto_39
    return-void
.end method

.method protected onRecordingStateChange(I)V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0xf

    if-eq p1, v4, :cond_4e

    const/16 v5, 0x10

    if-eq p1, v5, :cond_22

    const/16 v6, 0x52

    if-eq p1, v6, :cond_1e

    const/16 v6, 0x53

    if-eq p1, v6, :cond_3f

    const/16 v6, 0x90

    if-eq p1, v6, :cond_1e

    const/16 v1, 0x91

    if-eq p1, v1, :cond_3f

    goto/16 :goto_88

    .line 2334
    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto :goto_4e

    .line 2360
    :cond_22
    iget v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, v4, v6}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateZoomContainerLayout(II)V

    .line 2361
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v4, :cond_30

    .line 2362
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 2364
    :cond_30
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v2, v4, :cond_36

    if-ne v5, p1, :cond_38

    .line 2366
    :cond_36
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    :cond_38
    if-ne v2, v4, :cond_3f

    if-ne v5, p1, :cond_3f

    .line 2370
    invoke-virtual {p0, v4, v3, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewPadding(IZZ)V

    .line 2374
    :cond_3f
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v2, v1, :cond_45

    if-ne v5, p1, :cond_88

    .line 2376
    :cond_45
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideSaving:Z

    if-nez p1, :cond_4b

    .line 2377
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    .line 2379
    :cond_4b
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    return-void

    .line 2336
    :cond_4e
    :goto_4e
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSlowMotionMode:Z

    if-nez v5, :cond_56

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapseVideoMode:Z

    if-eqz v5, :cond_59

    .line 2337
    :cond_56
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    .line 2339
    :cond_59
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v5, :cond_60

    .line 2340
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    .line 2342
    :cond_60
    iget v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    if-ne v5, v0, :cond_68

    .line 2343
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    .line 2345
    :cond_68
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    if-eqz v0, :cond_78

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v0, v1, :cond_76

    const/4 v5, 0x4

    if-eq v0, v5, :cond_76

    const/4 v5, 0x5

    if-ne v0, v5, :cond_78

    .line 2348
    :cond_76
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    .line 2351
    :cond_78
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 2352
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 2353
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 2354
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v2, v0, :cond_88

    if-ne v4, p1, :cond_88

    .line 2356
    invoke-virtual {p0, v0, v3, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewPadding(IZZ)V

    :cond_88
    :goto_88
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1380
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->pause()V

    const/4 v0, 0x1

    .line 1381
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mShouldShow:Z

    .line 1382
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    if-eqz v0, :cond_d

    .line 1383
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    :cond_d
    return-void
.end method

.method protected resetIndicatorPosition()V
    .registers 6

    .line 1475
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1d

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mFullZoomLayout is null mCurrentPostion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1479
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    if-eqz v0, :cond_3a

    .line 1480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mModeChangedBegin is true mCurrentPostion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentPostion:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1483
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mItemsCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1484
    :goto_53
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ge v0, v1, :cond_b5

    .line 1485
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 1487
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    .line 1488
    instance-of v3, v1, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    if-eqz v3, :cond_6d

    .line 1489
    check-cast v1, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->isSelected()Z

    move-result v2

    .line 1491
    :cond_6d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resetIndicatorPosition] selected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_b2

    .line 1493
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelectIndex:I

    .line 1494
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    sub-int/2addr v0, v1

    .line 1495
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateX(I)V

    return-void

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_b5
    return-void
.end method

.method protected setRootViewAlpha(F)V
    .registers 3

    .line 2322
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    .line 2323
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 2326
    :cond_1b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewAlpha(F)V

    return-void
.end method

.method protected setRootViewTranslationY(F)V
    .registers 4

    .line 2310
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    .line 2311
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2d

    .line 2314
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

    .line 2317
    :cond_2e
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewTranslationY(F)V

    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .registers 2

    .line 501
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    return-void
.end method

.method protected setSettingUIList()V
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_check_storage"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->doUpdateSettingUI()V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 550
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    .line 551
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setTeleSecondDefaultZoomValue(I)V
    .registers 2

    .line 506
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTeleSecondDefaultZoomValue:I

    return-void
.end method

.method public setUIState(I)V
    .registers 2

    .line 511
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mUIState:I

    return-void
.end method

.method public show(Z)V
    .registers 8

    .line 1291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[show] mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAllowSetAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeChangedBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDVVideoModeBottomUIOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVideoRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1291
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1293
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_55

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    if-eqz v0, :cond_55

    :cond_4f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_55

    goto/16 :goto_184

    .line 1296
    :cond_55
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    if-eqz v0, :cond_6b

    goto/16 :goto_184

    .line 1299
    :cond_6b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_184

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mImageStyleShow:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_184

    .line 1302
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitSpotPanelOn:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInLongExposureMode:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInAIGCMode:Z

    if-eqz v0, :cond_c9

    goto/16 :goto_184

    .line 1309
    :cond_c9
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_108

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-eqz v0, :cond_108

    .line 1310
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1311
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-ge v2, v0, :cond_108

    .line 1312
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[show] ProMode resetPadding"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1313
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_108
    if-eqz p1, :cond_10d

    .line 1318
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    .line 1321
    :cond_10d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-nez p1, :cond_11f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_11f

    .line 1322
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1324
    :cond_11f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez p1, :cond_12e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_12e

    .line 1325
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1327
    :cond_12e
    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_184

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1328
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewAlpha(F)V

    .line 1329
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz p1, :cond_184

    .line 1330
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 1331
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    if-eqz p1, :cond_180

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v1, p1, :cond_180

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_180

    .line 1332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_186

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 1333
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1334
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1335
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$5;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_180
    const/4 p1, 0x0

    .line 1343
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_184
    :goto_184
    return-void

    nop

    :array_186
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected showWhenCamSwitchEnd()V
    .registers 3

    .line 920
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 921
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    const/4 v1, 0x1

    .line 922
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 923
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 925
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_f
    return-void
.end method

.method public showWideCamera()V
    .registers 7

    .line 952
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 953
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_56

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    if-eqz v0, :cond_56

    :cond_25
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_56

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mHideZoomForFlip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mHideZoomForFlip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFlipPageShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFlipPageShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 958
    :cond_56
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapseVideoMode:Z

    if-nez v0, :cond_1c9

    :cond_6a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    if-eqz v0, :cond_78

    goto/16 :goto_1c9

    .line 966
    :cond_78
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_1c5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1c5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitSpotPanelOn:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mImageStyleShow:Z

    if-nez v0, :cond_1c5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    if-nez v0, :cond_1c5

    .line 971
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-eqz v0, :cond_ce

    goto/16 :goto_1c5

    .line 975
    :cond_ce
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 976
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    .line 977
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelEnd:Z

    if-eqz v5, :cond_ef

    .line 978
    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needFocusView(Z)V

    goto :goto_d4

    .line 980
    :cond_ef
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needFocusView(Z)V

    goto :goto_d4

    .line 983
    :cond_f3
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelEnd:Z

    .line 984
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1c4

    .line 987
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-eqz v0, :cond_10b

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v0, v4, :cond_10b

    .line 988
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateDis:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    goto :goto_144

    .line 989
    :cond_10b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v0, v4, :cond_123

    .line 990
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsSegmentEmpty:Z

    if-eqz v0, :cond_11f

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mVlogTranslationDis:I

    int-to-float v2, v0

    :cond_11f
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    goto :goto_144

    .line 991
    :cond_123
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentPhotoMode:Z

    if-nez v0, :cond_13e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz v0, :cond_12c

    goto :goto_13e

    .line 994
    :cond_12c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_144

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v0, :cond_144

    .line 995
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    goto :goto_144

    .line 992
    :cond_13e
    :goto_13e
    iget v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateNormalY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    :cond_144
    :goto_144
    const/high16 v0, 0x3f800000    # 1.0f

    .line 999
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewAlpha(F)V

    .line 1000
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    const-string v4, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eqz v2, :cond_175

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_175

    .line 1001
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1002
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1003
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1004
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1005
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1006
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1009
    :cond_175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz v0, :cond_1c4

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_193

    :cond_18b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1011
    :cond_193
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 1012
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 1013
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    if-eqz v0, :cond_1c4

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v1, v0, :cond_1c4

    const/4 v0, 0x2

    .line 1014
    new-array v0, v0, [F

    fill-array-data v0, :array_21e

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1015
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 1016
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1017
    sget-object v0, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1018
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1c4
    return-void

    .line 972
    :cond_1c5
    :goto_1c5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->printStatus()V

    return-void

    .line 960
    :cond_1c9
    :goto_1c9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mIsPopSettingShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopSettingShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeChangedBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVideoRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSuperAntiVideoOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsRestoringDefault:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsRestoringDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPopWindowShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPopWindowShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mQuickRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mQuickRecording:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_21e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translateWideCamera(IZ)V
    .registers 6

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1234
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_8d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_8d

    :cond_33
    if-eqz p2, :cond_50

    .line 1238
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_54

    :cond_50
    int-to-float p1, p1

    .line 1240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    .line 1242
    :goto_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_61

    .line 1243
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewAlpha(F)V

    .line 1244
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 1246
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    if-eqz p1, :cond_77

    .line 1247
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1250
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8d

    .line 1253
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 9

    .line 1150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] fadeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCEffectUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mAIArtMuseumUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_109

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_109

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_109

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_109

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    if-eqz v0, :cond_5e

    goto/16 :goto_109

    :cond_5e
    if-nez p1, :cond_72

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_72

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz v0, :cond_72

    goto/16 :goto_109

    :cond_72
    const/4 v0, 0x2

    .line 1163
    const-string v1, "alpha"

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    if-eqz p1, :cond_97

    .line 1164
    new-array v4, v0, [F

    fill-array-data v4, :array_10a

    .line 1165
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1166
    new-array v4, v0, [F

    fill-array-data v4, :array_112

    .line 1167
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1168
    new-array v0, v0, [F

    fill-array-data v0, :array_11a

    .line 1169
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d0

    .line 1171
    :cond_97
    new-array v4, v0, [F

    fill-array-data v4, :array_122

    .line 1172
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1173
    new-array v4, v0, [F

    fill-array-data v4, :array_12a

    .line 1174
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1175
    new-array v0, v0, [F

    fill-array-data v0, :array_132

    .line 1176
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1177
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    if-nez v1, :cond_d0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsSuperAntiVideoOn:Z

    if-eqz v1, :cond_c6

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-nez v1, :cond_d0

    :cond_c6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v1

    if-nez v1, :cond_d0

    const/4 v1, 0x0

    .line 1178
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_d0
    :goto_d0
    if-eqz p1, :cond_d5

    const-wide/16 v4, 0x0

    goto :goto_d7

    :cond_d5
    const-wide/16 v4, 0x12c

    .line 1187
    :goto_d7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1188
    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1189
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1190
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1192
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1193
    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1195
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1196
    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/camera/app/ui/FullZoomUI$4;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;ZLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1227
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1228
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_109
    :goto_109
    return-void

    :array_10a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_112
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_11a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_122
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_12a
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_132
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 4

    .line 1357
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->unInit()V

    .line 1358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPositionList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1359
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_a
    const/4 v0, 0x0

    .line 1361
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    .line 1362
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 1363
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    .line 1364
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    .line 1365
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 1366
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    .line 1367
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_check_storage"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateItemValue()V
    .registers 4

    .line 1262
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_4c

    .line 1264
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsLongExposureSettingUIShow:Z

    if-eqz v0, :cond_31

    goto :goto_4c

    .line 1269
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 1270
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_37

    .line 1272
    :cond_49
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 2055
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2056
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewLayout(I)V

    return-void
.end method

.method public updateRootViewPadding(IZ)V
    .registers 4

    .line 2013
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    const/4 v0, 0x0

    .line 2014
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateRootViewPadding(IZZ)V

    .line 2015
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 2016
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-nez p1, :cond_1c

    const/4 p1, 0x0

    .line 2017
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewTranslationY(F)V

    return-void

    .line 2021
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->unSupportZoomingMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3d

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz p1, :cond_3d

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-nez p1, :cond_3d

    .line 2022
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method public updateRootViewPadding(IZZ)V
    .registers 7

    .line 2027
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRootViewPadding] screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", animation = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " withSelectedItem:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mModeChangedBegin "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mModeChangedBegin:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2029
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_3c

    .line 2030
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScreenFormChanged, mFullZoomContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2033
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    const/4 p2, 0x1

    if-eqz p1, :cond_5d

    .line 2034
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq p2, v0, :cond_50

    const/4 v1, 0x4

    if-eq v1, v0, :cond_50

    const/4 v1, 0x5

    if-ne v1, v0, :cond_4c

    goto :goto_50

    .line 2041
    :cond_4c
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ui/FullZoomUI;->addItemViews(Ljava/util/List;Z)V

    goto :goto_5d

    .line 2037
    :cond_50
    :goto_50
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2038
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2039
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ui/FullZoomUI;->addItemViews(Ljava/util/List;Z)V

    .line 2045
    :cond_5d
    :goto_5d
    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 2046
    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne p3, p2, :cond_69

    .line 2047
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mVideoRecording:Z

    if-eqz p2, :cond_69

    iget p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecordingOrientation:I

    :cond_69
    const/4 p2, 0x0

    .line 2049
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->updateFullZoomUILayout(ZI)V

    .line 2050
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .registers 11

    .line 1277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    .line 1278
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p2

    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, v6

    if-eqz p2, :cond_2c

    .line 1279
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v3, v0, v2

    aput p1, v0, v1

    const-string v4, "alpha"

    invoke-static {p2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 1280
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1281
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2f

    .line 1283
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->setRootViewAlpha(F)V

    :goto_2f
    cmpl-float p1, p1, v3

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    .line 1285
    :goto_35
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_37
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1504
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1505
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 1506
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1507
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    :cond_15
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 542
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

    .line 543
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 544
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFaceBeautyOn:Z

    .line 545
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
