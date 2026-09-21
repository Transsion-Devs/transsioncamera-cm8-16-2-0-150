.class public Lcom/transsion/camera/app/ui/FrontWideCameraUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "SourceFile"


# static fields
.field private static final ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumUIOn:Z

.field private mAIGCEffectUIOn:Z

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field private mContext:Landroid/content/Context;

.field private mContinusShot:Z

.field private mCouldShow:Z

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentPosition:F

.field private mExposureTime:Ljava/lang/String;

.field private final mFadeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFlipPageShow:Z

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

.field private mIsTimeLapseSettingUIShow:Z

.field private mIsVideoPortraitBarOn:Z

.field private mIsVideoPortraitSpotPanelOn:Z

.field private mItemsCount:I

.field private mLastOrientation:I

.field private mModeChangedBegin:Z

.field private mOnTouchSeekBarSwitchCamID:Z

.field private mOrientation:I

.field private mPostionList:Ljava/util/List;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousIndicator:Landroid/view/View;

.field private mQuickRecording:Z

.field private mRecordingAnimator:Landroid/animation/ObjectAnimator;

.field private mRecordingOrientation:I

.field private mResources:Landroid/content/res/Resources;

.field private mSecondDefaultZoomValue:I

.field private mSelfTimerBegin:Z

.field private mShouldShow:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSupportFocalLength:Z

.field private mTranslateDis:I

.field private mTranslateHoverY:I

.field private mTranslateNormalY:I

.field private mVideSaving:Z

.field private mVideoRecording:Z

.field private mXOffset:I


# direct methods
.method public static synthetic $r8$lambda$GUFGnHMTliDGbX2njXsZYG0Ke4I(Landroid/view/View;)V
    .registers 2

    .line 608
    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_unselected_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RthBk7zWw8Yof89pO9JqQ0ld4JA(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TmQWbDPv_CGQnuVhfkUfxqF5jak(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->lambda$notifyCameraOperateActionToUI$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y5ukIGxRjI3CA3-gMyPL1iIQS-s(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->lambda$notifyCameraOperateActionToUI$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$kR6gU8kYxBEQQcKX387JcBo1c3s(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->lambda$notifyCameraOperateActionToUI$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$tekzPYlDf3jWL25nWse7xheEZE4(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateZoomLayoutWhenRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFullZoomIn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicator(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFaceBeautyOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterUIOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSuperAntiVideoOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoPortraitBarOn(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousIndicator(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoRecording(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedAnimate(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullZoomUILayout(Lcom/transsion/camera/app/ui/FrontWideCameraUI;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomUILayout(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FrontWideCameraUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 5

    .line 333
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 81
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    .line 82
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mLastOrientation:I

    .line 83
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 85
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    .line 96
    iput v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInitIndex:I

    const/4 v1, 0x3

    .line 97
    iput v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mImageStyleShow:Z

    .line 123
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    .line 124
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPausing:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 126
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviewRect:Landroid/graphics/Rect;

    const/16 v1, 0xc8

    .line 135
    iput v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSecondDefaultZoomValue:I

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOnTouchSeekBarSwitchCamID:Z

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    .line 138
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    const v0, 0x461c4000    # 10000.0f

    .line 142
    iput v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    .line 143
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    .line 144
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    .line 147
    new-instance p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private addItemViews(Ljava/util/List;Z)V
    .registers 7

    if-eqz p1, :cond_86

    .line 560
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez p2, :cond_8

    goto/16 :goto_86

    .line 564
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOnTouchSeekBarSwitchCamID:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    if-eqz v0, :cond_13

    .line 565
    :cond_10
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 568
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 573
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v1, v2, :cond_3b

    .line 574
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_38

    .line 575
    sget v1, Lcom/transsion/camera/R$layout;->full_zoom_text_for_flip_item:I

    goto :goto_47

    .line 577
    :cond_38
    sget v1, Lcom/transsion/camera/R$layout;->full_zoom_text_unsupport_zoooming_item:I

    goto :goto_47

    .line 579
    :cond_3b
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v1, v2, :cond_46

    .line 580
    sget v1, Lcom/transsion/camera/R$layout;->full_zoom_image_item:I

    goto :goto_47

    :cond_46
    move v1, v0

    :goto_47
    if-nez v1, :cond_4a

    return-void

    .line 585
    :cond_4a
    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSecondDefaultZoomValue:I

    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->setSecondZoomDefaultValue(I)V

    .line 586
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 587
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOnTouchSeekBarSwitchCamID:Z

    if-nez v2, :cond_5d

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    if-eqz v2, :cond_17

    .line 588
    :cond_5d
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-interface {p2, v2, v3, v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 590
    sget v2, Lcom/transsion/camera/R$drawable;->ic_fullzoom_un_zooming_item_unselected_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    :cond_70
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 593
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    invoke-interface {v1, p2, v0}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_17

    .line 599
    :cond_83
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    return-void

    .line 561
    :cond_86
    :goto_86
    sget-object p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addItemViews] settingUIList is null or mFullZoomLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private computeTranslateX(I)F
    .registers 4

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->full_un_zooming_item_distanse:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mXOffset:I

    mul-int/2addr p1, v0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private currentFocalLengthMode()Z
    .registers 2

    .line 1057
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSupportFocalLength:Z

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

.method private doUpdateSettingUI()V
    .registers 11

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1af

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    if-eqz v0, :cond_1af

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    if-nez v0, :cond_e

    goto/16 :goto_1af

    .line 409
    :cond_e
    iget v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    .line 410
    iput v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 412
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_2b

    .line 417
    :cond_28
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    goto :goto_32

    .line 413
    :cond_2b
    :goto_2b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 414
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 415
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 419
    :goto_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    .line 420
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {p0, v0, v2, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewPadding(IZZ)V

    .line 421
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_6f

    .line 423
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    .line 425
    :cond_6f
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v3, 0x4

    if-eq v1, v0, :cond_80

    if-eq v3, v0, :cond_80

    const/4 v4, 0x5

    if-ne v4, v0, :cond_7a

    goto :goto_80

    .line 432
    :cond_7a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->addItemViews(Ljava/util/List;Z)V

    goto :goto_8d

    .line 428
    :cond_80
    :goto_80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 430
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->addItemViews(Ljava/util/List;Z)V

    .line 434
    :goto_8d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 435
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 436
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    .line 438
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_d2

    .line 439
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    sget v7, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_for_flip:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 440
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->full_zoom_item_size_for_flip:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 441
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->full_zoom_item_size_for_flip:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_f0

    .line 443
    :cond_d2
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    sget v7, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_selected_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 444
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    sget v7, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_selected_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 445
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_ed

    .line 446
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_ed
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateDefaultIndicator()V

    .line 450
    :goto_f0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomLayoutBgId()I

    move-result v6

    .line 451
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v7}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    .line 452
    iget v7, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    const/4 v8, 0x2

    const/16 v9, 0x10

    if-eq v7, v8, :cond_168

    const/4 v8, 0x3

    if-eq v7, v8, :cond_13c

    if-eq v7, v3, :cond_10a

    goto/16 :goto_1a4

    .line 454
    :cond_10a
    iput v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInitIndex:I

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_4_items:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v6, :cond_121

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 459
    :cond_121
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 460
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 461
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 465
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a4

    .line 468
    :cond_13c
    iput v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInitIndex:I

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_3_items:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 470
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 471
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 472
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 474
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_1a4

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1a4

    .line 481
    :cond_168
    iput v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInitIndex:I

    .line 482
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->full_un_zooming_width_2_items:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v6, :cond_17f

    .line 484
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 486
    :cond_17f
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    .line 488
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 489
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_item_margin_left:I

    .line 493
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a4

    .line 500
    :cond_1a2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 502
    :cond_1a4
    :goto_1a4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomUILayout(ZI)V

    return-void

    .line 406
    :cond_1af
    :goto_1af
    sget-object p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "zoom ui did not loaded yet"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 149
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_372

    :goto_30
    move p1, v5

    goto :goto_7e

    :sswitch_32
    const-string v1, "key_super_anti_video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_30

    :cond_3b
    move p1, v2

    goto :goto_7e

    :sswitch_3d
    const-string v1, "key_front_camera_item_update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_30

    :cond_46
    move p1, v3

    goto :goto_7e

    :sswitch_48
    const-string v1, "key_conflict_ui_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_30

    :cond_51
    move p1, v6

    goto :goto_7e

    :sswitch_53
    const-string v1, "key_fun_video_record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_30

    :cond_5c
    move p1, v4

    goto :goto_7e

    :sswitch_5e
    const-string v1, "key_exposure_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_30

    :cond_67
    move p1, v7

    goto :goto_7e

    :sswitch_69
    const-string v1, "key_front_camera_item_changed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_30

    :cond_72
    move p1, v9

    goto :goto_7e

    :sswitch_74
    const-string v1, "key_vlog_correct_orientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_30

    :cond_7d
    move p1, v8

    :goto_7e
    packed-switch p1, :pswitch_data_390

    goto/16 :goto_371

    .line 312
    :pswitch_83
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    return-void

    .line 152
    :pswitch_8c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateZoomLayoutStyle()V

    return-void

    .line 183
    :pswitch_90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_3a2

    :goto_9a
    move v2, v5

    goto/16 :goto_1bc

    :sswitch_9d
    const-string/jumbo p1, "value_video_portrait_spot_panel_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto :goto_9a

    :cond_a7
    const/16 v2, 0x14

    goto/16 :goto_1bc

    :sswitch_ab
    const-string/jumbo p1, "value_long_exposure_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    goto :goto_9a

    :cond_b5
    const/16 v2, 0x13

    goto/16 :goto_1bc

    :sswitch_b9
    const-string/jumbo p1, "value_timelapse_setting_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto :goto_9a

    :cond_c3
    const/16 v2, 0x12

    goto/16 :goto_1bc

    :sswitch_c7
    const-string/jumbo p1, "value_ai_art_museum_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    goto :goto_9a

    :cond_d1
    const/16 v2, 0x11

    goto/16 :goto_1bc

    :sswitch_d5
    const-string/jumbo p1, "value_timelapse_setting_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_df

    goto :goto_9a

    :cond_df
    const/16 v2, 0x10

    goto/16 :goto_1bc

    :sswitch_e3
    const-string/jumbo p1, "value_ai_art_museum_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ed

    goto :goto_9a

    :cond_ed
    const/16 v2, 0xf

    goto/16 :goto_1bc

    :sswitch_f1
    const-string/jumbo p1, "value_video_portrait_spot_panel_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    goto :goto_9a

    :cond_fb
    const/16 v2, 0xe

    goto/16 :goto_1bc

    :sswitch_ff
    const-string/jumbo p1, "value_zoomwheel_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_109

    goto :goto_9a

    :cond_109
    const/16 v2, 0xd

    goto/16 :goto_1bc

    :sswitch_10d
    const-string/jumbo p1, "value_zoomwheel_view_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_117

    goto :goto_9a

    :cond_117
    const/16 v2, 0xc

    goto/16 :goto_1bc

    :sswitch_11b
    const-string/jumbo p1, "value_facebeauty_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_126

    goto/16 :goto_9a

    :cond_126
    const/16 v2, 0xb

    goto/16 :goto_1bc

    :sswitch_12a
    const-string/jumbo p1, "value_aigc_effect_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_135

    goto/16 :goto_9a

    :cond_135
    const/16 v2, 0xa

    goto/16 :goto_1bc

    :sswitch_139
    const-string/jumbo p1, "value_facebeauty_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_144

    goto/16 :goto_9a

    :cond_144
    const/16 v2, 0x9

    goto/16 :goto_1bc

    :sswitch_148
    const-string/jumbo p1, "value_long_exposure_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_153

    goto/16 :goto_9a

    :cond_153
    const/16 v2, 0x8

    goto/16 :goto_1bc

    :sswitch_157
    const-string/jumbo p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_162

    goto/16 :goto_9a

    :cond_162
    const/4 v2, 0x7

    goto :goto_1bc

    :sswitch_164
    const-string/jumbo p1, "value_videoportrait_bar_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1bc

    goto/16 :goto_9a

    :sswitch_16f
    const-string/jumbo p1, "value_video_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17a

    goto/16 :goto_9a

    :cond_17a
    move v2, v3

    goto :goto_1bc

    :sswitch_17c
    const-string/jumbo p1, "value_video_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_187

    goto/16 :goto_9a

    :cond_187
    move v2, v6

    goto :goto_1bc

    :sswitch_189
    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_194

    goto/16 :goto_9a

    :cond_194
    move v2, v4

    goto :goto_1bc

    :sswitch_196
    const-string/jumbo p1, "value_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a1

    goto/16 :goto_9a

    :cond_1a1
    move v2, v7

    goto :goto_1bc

    :sswitch_1a3
    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ae

    goto/16 :goto_9a

    :cond_1ae
    move v2, v9

    goto :goto_1bc

    :sswitch_1b0
    const-string/jumbo p1, "value_aigc_effect_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1bb

    goto/16 :goto_9a

    :cond_1bb
    move v2, v8

    :cond_1bc
    :goto_1bc
    packed-switch v2, :pswitch_data_3f8

    goto/16 :goto_371

    .line 247
    :pswitch_1c1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 248
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitSpotPanelOn:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 293
    :pswitch_1cf
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    .line 294
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 236
    :pswitch_1d8
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 281
    :pswitch_1de
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 282
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    .line 283
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 284
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 240
    :pswitch_1f1
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    .line 241
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 242
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez p1, :cond_371

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 274
    :pswitch_1fe
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 275
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    .line 276
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 253
    :pswitch_20e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 254
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitSpotPanelOn:Z

    .line 255
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 228
    :pswitch_21c
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 229
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 232
    :pswitch_221
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 233
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 213
    :pswitch_226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 214
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 215
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 266
    :pswitch_236
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 267
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 268
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 269
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 220
    :pswitch_249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 221
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 222
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 223
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 289
    :pswitch_25c
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    .line 290
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 199
    :pswitch_262
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    .line 200
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 206
    :pswitch_272
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    .line 207
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 186
    :pswitch_282
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 187
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 193
    :pswitch_28a
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 194
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 195
    invoke-virtual {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 259
    :pswitch_295
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 260
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 261
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 303
    :pswitch_2a5
    const-string/jumbo p1, "value_fun_video_start_recording"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c2

    .line 304
    iput-boolean v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 305
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 307
    :cond_2c2
    iput-boolean v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 308
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 300
    :pswitch_2d6
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mExposureTime:Ljava/lang/String;

    return-void

    .line 155
    :pswitch_2d9
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq v9, p1, :cond_2e4

    if-eq v6, p1, :cond_2e4

    if-ne v3, p1, :cond_2e2

    goto :goto_2e4

    :cond_2e2
    move p1, v8

    goto :goto_2e5

    :cond_2e4
    :goto_2e4
    move p1, v9

    .line 158
    :goto_2e5
    const-string/jumbo v0, "value_front_camera_item_midle_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2fc

    if-eqz p1, :cond_2f8

    .line 159
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne p1, v7, :cond_2f8

    .line 160
    invoke-direct {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 162
    :cond_2f8
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 164
    :cond_2fc
    const-string/jumbo v0, "value_front_camera_item_right_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31f

    if-eqz p1, :cond_313

    .line 166
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne p1, v7, :cond_30f

    .line 167
    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 169
    :cond_30f
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 172
    :cond_313
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne p1, v6, :cond_31b

    .line 173
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 175
    :cond_31b
    invoke-direct {p0, v9}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 178
    :cond_31f
    const-string/jumbo v0, "value_front_camera_item_left_zoom_seleccted"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_371

    if-eqz p1, :cond_32b

    move v5, v9

    .line 179
    :cond_32b
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V

    return-void

    .line 315
    :pswitch_32f
    const-string p1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_371

    .line 316
    const-string p1, ","

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v7, :cond_35a

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onValueChanged illegal value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 322
    :cond_35a
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 323
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 324
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->setOrientation(IZ)V

    :cond_371
    :goto_371
    return-void

    :sswitch_data_372
    .sparse-switch
        -0x76350356 -> :sswitch_74
        -0x1a48a894 -> :sswitch_69
        0x1964f925 -> :sswitch_5e
        0x4be4d535 -> :sswitch_53
        0x50497713 -> :sswitch_48
        0x7926cd11 -> :sswitch_3d
        0x7ddb1282 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_390
    .packed-switch 0x0
        :pswitch_32f
        :pswitch_2d9
        :pswitch_2d6
        :pswitch_2a5
        :pswitch_90
        :pswitch_8c
        :pswitch_83
    .end packed-switch

    :sswitch_data_3a2
    .sparse-switch
        -0x7b2286b7 -> :sswitch_1b0
        -0x71d81a63 -> :sswitch_1a3
        -0x66c4e80f -> :sswitch_196
        -0x593d69e7 -> :sswitch_189
        -0x48d6b4a7 -> :sswitch_17c
        -0x3c27f54b -> :sswitch_16f
        -0x24caae7b -> :sswitch_164
        -0x24c5b0c0 -> :sswitch_157
        0x3750687 -> :sswitch_148
        0x6a3b3dc -> :sswitch_139
        0x16d1af45 -> :sswitch_12a
        0x18fd05d2 -> :sswitch_11b
        0x275812b7 -> :sswitch_10d
        0x275d1072 -> :sswitch_ff
        0x276804c9 -> :sswitch_f1
        0x2baa12c2 -> :sswitch_e3
        0x47a78cc0 -> :sswitch_d5
        0x499844ec -> :sswitch_c7
        0x6568806e -> :sswitch_b9
        0x6b2bc9c7 -> :sswitch_ab
        0x7d246345 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_3f8
    .packed-switch 0x0
        :pswitch_295
        :pswitch_28a
        :pswitch_282
        :pswitch_28a
        :pswitch_28a
        :pswitch_282
        :pswitch_272
        :pswitch_262
        :pswitch_25c
        :pswitch_249
        :pswitch_236
        :pswitch_226
        :pswitch_221
        :pswitch_21c
        :pswitch_20e
        :pswitch_1fe
        :pswitch_1f1
        :pswitch_1de
        :pswitch_1d8
        :pswitch_1cf
        :pswitch_1c1
    .end packed-switch
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$2()V
    .registers 4

    .line 1483
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    .line 1484
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v0, :cond_1f

    .line 1485
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$3()V
    .registers 4

    .line 1535
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v0, :cond_1b

    .line 1536
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$4()V
    .registers 4

    .line 1558
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v0, :cond_1b

    .line 1559
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_1b
    return-void
.end method

.method private needToWait()Z
    .registers 5

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mExposureTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    .line 1185
    :goto_11
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-eqz v2, :cond_22

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private notifyActionToItemUI(I)V
    .registers 3

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_23

    .line 1173
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

    .line 1175
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_11

    :cond_23
    :goto_23
    return-void
.end method

.method private printStatus()V
    .registers 4

    .line 669
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFilterUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsFaceBeautyOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCEffectUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIArtMuseumUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoPortraitBarOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsTimeLapseSettingUIShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  , mVideoRecording :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelfTimerBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCapturing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMoreMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLongExposureSettingUIShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private runFullZoomUIRotateAnimator()V
    .registers 8

    .line 1812
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 1815
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1816
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1818
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1819
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1822
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

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    .line 1823
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomIn:Landroid/animation/ObjectAnimator;

    .line 1824
    sget-object v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1825
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$7;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1838
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setOrientation(IZ)V
    .registers 5

    .line 632
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 635
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz v0, :cond_11

    .line 636
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    :cond_11
    if-nez v0, :cond_20

    if-nez p2, :cond_16

    goto :goto_20

    .line 640
    :cond_16
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mLastOrientation:I

    iget p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    if-eq p1, p2, :cond_1f

    .line 641
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->runFullZoomUIRotateAnimator()V

    :cond_1f
    return-void

    .line 639
    :cond_20
    :goto_20
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomUILayout(ZI)V

    return-void

    .line 644
    :cond_24
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomUILayout(ZI)V

    return-void
.end method

.method private startTranslateX(I)V
    .registers 3

    .line 1125
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1128
    :cond_7
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result p1

    .line 1129
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private startTranslateXWithAnimation(I)V
    .registers 16

    .line 1066
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->currentFocalLengthMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1069
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1070
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v1

    .line 1071
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->currentFocalLengthMode()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    .line 1073
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v3, :cond_2e

    .line 1074
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_indicator_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2f

    :cond_2e
    move v2, v4

    :goto_2f
    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1078
    :cond_31
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1079
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    :cond_49
    sget-object v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startTranslateXWithAnimation] nextIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nextPosition:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " previousPosition:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentPosition:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1084
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v5

    if-gez p1, :cond_8d

    .line 1085
    const-string p0, "[startTranslateXWithAnimation] current postion is same as next postion, return"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1088
    :cond_8d
    iput v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    .line 1090
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 1091
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    :cond_a0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1094
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_14a

    const-string v5, "alpha"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0xc8

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1095
    sget-object v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1096
    iget-object v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    new-array v9, v0, [F

    fill-array-data v9, :array_152

    const-string v10, "scaleX"

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1097
    iget-object v9, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    new-array v11, v0, [F

    fill-array-data v11, :array_15a

    const-string v12, "scaleY"

    invoke-static {v9, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1098
    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1099
    invoke-virtual {v9, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1101
    iget-object v11, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    new-array v11, v0, [F

    fill-array-data v11, :array_162

    invoke-static {v1, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1103
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1104
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_16a

    invoke-static {v5, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v10, 0x12c

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1105
    iget-object v7, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    new-array v13, v6, [F

    fill-array-data v13, :array_174

    invoke-static {v7, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1106
    invoke-virtual {v5, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1107
    invoke-virtual {v7, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1109
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x6

    .line 1110
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object p1, v10, v4

    const/4 p1, 0x1

    aput-object v8, v10, p1

    aput-object v9, v10, v0

    aput-object v1, v10, v6

    aput-object v5, v10, v3

    const/4 p1, 0x5

    aput-object v7, v10, p1

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1111
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1112
    new-instance p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_14a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_152
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_15a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_162
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_16a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_174
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDefaultIndicator()V
    .registers 9

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iget v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_36

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_36
    if-ne v0, v2, :cond_52

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_52
    :goto_52
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v6, 0x4

    if-eq v4, v0, :cond_5f

    if-eq v6, v0, :cond_5f

    const/4 v7, 0x5

    if-ne v7, v0, :cond_5d

    goto :goto_5f

    :cond_5d
    move v0, v3

    goto :goto_60

    :cond_5f
    :goto_5f
    move v0, v4

    .line 520
    :goto_60
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMacroMode:Z

    if-eqz v7, :cond_68

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForMacro:Z

    if-nez v7, :cond_70

    :cond_68
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    if-eqz v7, :cond_7f

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForPmaster:Z

    if-eqz v7, :cond_7f

    .line 521
    :cond_70
    iget v7, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v7, v2, :cond_77

    xor-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_77
    if-ne v7, v5, :cond_84

    if-eqz v0, :cond_7c

    goto :goto_7d

    :cond_7c
    move v1, v4

    :goto_7d
    move v0, v1

    goto :goto_85

    .line 526
    :cond_7f
    iget v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v1, v2, :cond_84

    goto :goto_85

    :cond_84
    move v0, v3

    .line 529
    :goto_85
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 530
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->computeTranslateX(I)F

    move-result v0

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->currentFocalLengthMode()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 533
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v6, :cond_a9

    .line 534
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_indicator_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :cond_a9
    int-to-float v2, v3

    add-float/2addr v0, v2

    .line 538
    :cond_ab
    sget-object v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iput v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    .line 541
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    if-eqz v2, :cond_ea

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_ea

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_ea
    return-void
.end method

.method private updateFullZoomLayoutBgId()I
    .registers 4

    .line 548
    iget p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_8

    .line 549
    sget p0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_15

    :cond_8
    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    .line 551
    sget p0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    goto :goto_15

    :cond_e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 553
    sget p0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_unsupport_items:I

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 555
    :goto_15
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFullZoomLayoutBgId] resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private updateFullZoomUILayout(ZI)V
    .registers 7

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    .line 1620
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz v0, :cond_10

    .line 1621
    iget v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    goto :goto_11

    :cond_10
    move v0, p2

    .line 1624
    :goto_11
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateZoomContainerLayout(II)V

    .line 1626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1b

    goto :goto_42

    .line 1631
    :cond_1b
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_27

    const/4 v3, 0x4

    if-eq v1, v3, :cond_27

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2a

    :cond_27
    const/16 p2, 0x5a

    move p1, v2

    .line 1643
    :cond_2a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2e
    if-ge v2, v0, :cond_42

    .line 1645
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1646
    instance-of v3, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_3f

    .line 1647
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v1, p2, p1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_42
    :goto_42
    return-void
.end method

.method private updateHorizontalLayout(I)V
    .registers 4

    .line 1797
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_18

    .line 1798
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_10

    goto :goto_18

    :cond_10
    const/4 v1, 0x3

    if-ne p1, v1, :cond_29

    const/16 p1, 0x11

    .line 1806
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_29

    .line 1800
    :cond_18
    :goto_18
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_24

    const p1, 0x800013

    .line 1801
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_29

    :cond_24
    const p1, 0x800015

    .line 1803
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1808
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRootViewLayout(I)V
    .registers 5

    .line 1775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_9

    goto :goto_4d

    .line 1778
    :cond_9
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v1, v2

    if-eqz p1, :cond_28

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    goto :goto_28

    :cond_14
    const/4 v2, 0x1

    if-eq p1, v2, :cond_26

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1e

    goto :goto_26

    .line 1791
    :cond_1e
    sget p1, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_24
    add-int/2addr v1, p1

    goto :goto_38

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_38

    :cond_28
    :goto_28
    if-nez p1, :cond_31

    .line 1782
    sget p1, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_normal:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_24

    .line 1784
    :cond_31
    sget p1, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_column:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_24

    .line 1793
    :goto_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateZoomContainerLayout(II)V
    .registers 15

    .line 1653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_23b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_a

    goto/16 :goto_23b

    .line 1657
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1658
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1659
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mLastOrientation:I

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

    if-ne p2, v2, :cond_108

    if-eq p1, v7, :cond_cd

    if-eq p1, v9, :cond_9a

    if-eq p1, v8, :cond_67

    const/16 v2, 0x53

    .line 1698
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1699
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1700
    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v2, v11, :cond_4d

    .line 1701
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    :cond_4d
    if-ne v2, v10, :cond_5b

    .line 1703
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    .line 1705
    :cond_5b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ff

    .line 1685
    :cond_67
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1686
    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v2, v11, :cond_78

    .line 1687
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8f

    :cond_78
    if-ne v2, v10, :cond_85

    .line 1689
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8f

    .line 1691
    :cond_85
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1693
    :goto_8f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 1674
    :cond_9a
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1675
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1676
    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v2, v11, :cond_b5

    .line 1677
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    :cond_b5
    if-ne v2, v10, :cond_c2

    .line 1679
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 1681
    :cond_c2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_0_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ff

    .line 1663
    :cond_cd
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1664
    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne v2, v11, :cond_de

    .line 1665
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f5

    :cond_de
    if-ne v2, v10, :cond_eb

    .line 1667
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f5

    .line 1669
    :cond_eb
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_expand_90_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1671
    :goto_f5
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_ff
    add-int/2addr p1, v8

    .line 1709
    rem-int/2addr p1, v3

    .line 1710
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1de

    :cond_108
    if-eqz p2, :cond_1d5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1d5

    if-ne p2, v11, :cond_111

    goto/16 :goto_1d5

    :cond_111
    if-ne p2, v10, :cond_14c

    .line 1717
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1718
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne p1, v11, :cond_124

    .line 1719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_13b

    :cond_124
    if-ne p1, v10, :cond_131

    .line 1721
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_13b

    .line 1723
    :cond_131
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1725
    :goto_13b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1726
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1de

    :cond_14c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_187

    .line 1728
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1729
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ne p1, v11, :cond_160

    .line 1730
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_2_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_177

    :cond_160
    if-ne p1, v10, :cond_16d

    .line 1732
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_4_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_177

    .line 1734
    :cond_16d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_3_items_lr_hover_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1736
    :goto_177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_expand_start_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1737
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v9, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1de

    :cond_187
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1de

    .line 1739
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1740
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_root_flip_right_margin_pixel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_1bb

    if-eq p1, v7, :cond_1a1

    if-eq p1, v9, :cond_1a1

    if-eq p1, v8, :cond_1a1

    if-eq p1, v3, :cond_1bb

    goto :goto_1de

    .line 1753
    :cond_1a1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz p1, :cond_1b0

    .line 1754
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_root_flip_0_or_90_recording_top_margin_pixel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1de

    .line 1756
    :cond_1b0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_root_flip_180_or_270_top_margin_pixel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1de

    .line 1744
    :cond_1bb
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz p1, :cond_1ca

    .line 1745
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_root_flip_180_or_270_recording_top_margin_pixel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1de

    .line 1747
    :cond_1ca
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_root_flip_0_or_90_top_margin_pixel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1de

    :cond_1d5
    :goto_1d5
    const/16 p1, 0x51

    .line 1714
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1715
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1763
    :cond_1de
    :goto_1de
    sget-object p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateZoomContainerLayout] gravity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " leftMargin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottomMargin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " topMargin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightMargin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 1766
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1763
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1767
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1768
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez p1, :cond_238

    .line 1769
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewLayout(I)V

    .line 1771
    :cond_238
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateHorizontalLayout(I)V

    :cond_23b
    :goto_23b
    return-void
.end method

.method private updateZoomLayoutStyle()V
    .registers 6

    const/4 v0, 0x0

    .line 603
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 604
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_20

    .line 607
    new-instance v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    .line 611
    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

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
    .registers 14

    .line 753
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x15e

    const-wide/16 v6, 0x64

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3e800000    # 0.25f

    const-string/jumbo v10, "translationY"

    const/4 v11, 0x0

    if-eqz v0, :cond_42

    if-ne v0, v3, :cond_16

    goto :goto_42

    :cond_16
    const/4 v12, 0x3

    if-ne v0, v12, :cond_41

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget v12, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateHoverY:I

    int-to-float v12, v12

    new-array v3, v3, [F

    aput v11, v3, v2

    aput v12, v3, v1

    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    .line 762
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v9, v11, v11, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_41
    return-void

    .line 755
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    iget v12, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateNormalY:I

    int-to-float v12, v12

    new-array v3, v3, [F

    aput v11, v3, v2

    aput v12, v3, v1

    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    .line 756
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v9, v11, v11, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 759
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .registers 5

    .line 660
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->couldShow(Z)V

    .line 661
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[couldShow] show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 662
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    if-eqz p1, :cond_20

    .line 664
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->resetIndicatorPosition()V

    :cond_20
    return-void
.end method

.method public hideWideCamera()V
    .registers 5

    .line 799
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideWideCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_62

    .line 801
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->cancelAnimation()V

    .line 802
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_64

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    .line 804
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_59

    .line 817
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_54

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_54
    const/16 v0, 0x8

    .line 820
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 822
    :goto_59
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-nez v0, :cond_62

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_62
    return-void

    nop

    :array_64
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    .line 349
    sget v0, Lcom/transsion/camera/R$layout;->wide_camera_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 350
    sget p2, Lcom/transsion/camera/R$id;->front_full_zoom_view_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 351
    sget p2, Lcom/transsion/camera/R$id;->front_full_zoom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 352
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewPadding(IZZ)V

    .line 353
    sget p2, Lcom/transsion/camera/R$id;->front_zoom_camera_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    .line 354
    check-cast p2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContentRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    if-eqz p2, :cond_38

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->currentFocalLengthMode()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setUnSupportZoomingStatus(ZZ)V

    .line 358
    :cond_38
    sget p2, Lcom/transsion/camera/R$id;->front_full_zoom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    .line 359
    sget p2, Lcom/transsion/camera/R$id;->front_full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    .line 360
    sget p2, Lcom/transsion/camera/R$id;->front_previous_full_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviousIndicator:Landroid/view/View;

    .line 361
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v1, 0x7

    if-ne p2, v1, :cond_61

    .line 362
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_66

    .line 364
    :cond_61
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :goto_66
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    .line 367
    sget v0, Lcom/transsion/camera/R$dimen;->recording_full_zoom_margin_bottom_normal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateNormalY:I

    .line 368
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->recording_full_zoom_margin_bottom_hover:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateHoverY:I

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "wide_camera_translation_distance"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateDis:I

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pmaster_mode_focal_len"

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSupportFocalLength:Z

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 11

    .line 1195
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 1196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setZoomWheelShow(I)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->notifyActionToItemUI(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_35c

    if-eq p1, v0, :cond_352

    const/4 v2, 0x2

    if-eq p1, v2, :cond_34d

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    if-eq p1, v2, :cond_325

    const/4 v2, 0x5

    if-eq p1, v2, :cond_325

    const/4 v5, 0x7

    if-eq p1, v5, :cond_325

    const/16 v6, 0x13

    if-eq p1, v6, :cond_319

    const/16 v6, 0x14

    if-eq p1, v6, :cond_2e0

    const/16 v6, 0x19

    if-eq p1, v6, :cond_2d9

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_2d2

    const/16 v6, 0x24

    if-eq p1, v6, :cond_2ca

    const/16 v6, 0x25

    if-eq p1, v6, :cond_2c5

    const/16 v6, 0x30

    if-eq p1, v6, :cond_2bb

    const/16 v6, 0x31

    if-eq p1, v6, :cond_2a3

    const/16 v6, 0x3a

    if-eq p1, v6, :cond_2a0

    const/16 v6, 0x3b

    if-eq p1, v6, :cond_287

    const/16 v6, 0x52

    const/4 v7, 0x4

    const/4 v8, -0x1

    if-eq p1, v6, :cond_256

    const/16 v6, 0x53

    if-eq p1, v6, :cond_23c

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_362

    packed-switch p1, :pswitch_data_444

    packed-switch p1, :pswitch_data_452

    goto/16 :goto_35b

    .line 1388
    :pswitch_82
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void

    .line 1316
    :pswitch_86
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPausing:Z

    return-void

    .line 1239
    :pswitch_89
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void

    .line 1508
    :pswitch_8d
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eqz p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    if-eqz p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez p1, :cond_35b

    .line 1509
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1510
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    .line 1511
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    return-void

    .line 1500
    :pswitch_aa
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v0, :cond_c2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1501
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v7, :cond_c2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1502
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-ne p1, v2, :cond_35b

    .line 1503
    :cond_c2
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    .line 1504
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1301
    :pswitch_c8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    .line 1302
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 1303
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    .line 1304
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1305
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    .line 1306
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    .line 1307
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    .line 1308
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPausing:Z

    .line 1309
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    .line 1310
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    .line 1311
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    .line 1312
    iput v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    return-void

    .line 1532
    :sswitch_e1
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v5, p1, :cond_35b

    .line 1533
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    .line 1534
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1525
    :sswitch_f9
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v5, p1, :cond_35b

    .line 1526
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    .line 1527
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1432
    :sswitch_103
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return-void

    .line 1520
    :sswitch_106
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mImageStyleShow:Z

    .line 1521
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 1515
    :sswitch_10c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 1516
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mImageStyleShow:Z

    .line 1517
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1258
    :sswitch_114
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return-void

    .line 1255
    :sswitch_117
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return-void

    .line 1493
    :sswitch_11a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOnTouchSeekBarSwitchCamID:Z

    .line 1494
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_35b

    .line 1495
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    if-nez p1, :cond_128

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez p1, :cond_129

    :cond_128
    move v0, v1

    .line 1496
    :cond_129
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewPadding(IZZ)V

    return-void

    .line 1490
    :sswitch_12f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOnTouchSeekBarSwitchCamID:Z

    return-void

    .line 1466
    :sswitch_132
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    goto :goto_14a

    .line 1296
    :sswitch_135
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    .line 1297
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 1298
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1369
    :sswitch_13d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_35b

    .line 1370
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1449
    :sswitch_147
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    return-void

    .line 1468
    :goto_14a
    :sswitch_14a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 1469
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1470
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1471
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 1481
    :sswitch_155
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopSettingShow:Z

    .line 1482
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1474
    :sswitch_169
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 1475
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopSettingShow:Z

    .line 1476
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    .line 1477
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1478
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1319
    :sswitch_175
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1320
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    .line 1321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_207

    .line 1322
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_207

    .line 1565
    :sswitch_182
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    return-void

    .line 1457
    :sswitch_185
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    goto :goto_1df

    .line 1203
    :sswitch_189
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsMoreMode:Z

    return-void

    .line 1200
    :sswitch_18c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsMoreMode:Z

    return-void

    .line 1412
    :goto_18f
    :sswitch_18f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_35b

    .line 1413
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1414
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1b1

    add-int/lit8 p1, v1, -0x1

    if-ltz p1, :cond_1b1

    .line 1416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1417
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_1b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_18f

    .line 1400
    :goto_1b4
    :sswitch_1b4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_35b

    .line 1401
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1402
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1dc

    add-int/lit8 p1, v1, 0x1

    .line 1403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1dc

    .line 1404
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1405
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :cond_1dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b4

    .line 1459
    :goto_1df
    :sswitch_1df
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1460
    iput v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    .line 1461
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1462
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 1463
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    return-void

    .line 1393
    :pswitch_1eb
    :sswitch_1eb
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_35b

    .line 1394
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1395
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1396
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 1206
    :sswitch_200
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-eqz p1, :cond_35b

    .line 1207
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    return-void

    .line 1325
    :cond_207
    :goto_207
    :sswitch_207
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateZoomContainerLayout(II)V

    .line 1326
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    if-eqz p1, :cond_215

    .line 1327
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    .line 1329
    :cond_215
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    goto :goto_23c

    .line 1439
    :sswitch_218
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    .line 1440
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1441
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 1426
    :sswitch_220
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-nez p1, :cond_22c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-nez p1, :cond_22c

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInLongExposureMode:Z

    if-eqz p1, :cond_35b

    .line 1427
    :cond_22c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return-void

    .line 1261
    :sswitch_22f
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 1262
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1263
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    return-void

    .line 1378
    :sswitch_237
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    .line 1379
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPausing:Z

    return-void

    .line 1332
    :cond_23c
    :goto_23c
    :sswitch_23c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    if-nez p1, :cond_242

    .line 1333
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1335
    :cond_242
    iput v8, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    .line 1338
    :sswitch_244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_250

    .line 1339
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    .line 1341
    :cond_250
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1342
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    goto :goto_2c5

    .line 1267
    :cond_256
    :sswitch_256
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    .line 1269
    :sswitch_259
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSlowMotionMode:Z

    if-eqz p1, :cond_260

    .line 1270
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    .line 1272
    :cond_260
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    if-eqz p1, :cond_267

    .line 1273
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 1275
    :cond_267
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1276
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    if-ne p1, v8, :cond_271

    .line 1277
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    .line 1279
    :cond_271
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    if-eqz p1, :cond_27f

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq p1, v0, :cond_27d

    if-eq p1, v7, :cond_27d

    if-ne p1, v2, :cond_27f

    .line 1282
    :cond_27d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    .line 1285
    :cond_27f
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 1286
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    .line 1287
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    return-void

    .line 1246
    :cond_287
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    .line 1247
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    .line 1248
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_35b

    .line 1249
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1250
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1251
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    return-void

    .line 1236
    :cond_2a0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideSaving:Z

    return-void

    .line 1555
    :cond_2a3
    :sswitch_2a3
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v5, p1, :cond_35b

    .line 1556
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    .line 1557
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1545
    :cond_2bb
    :sswitch_2bb
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v5, p1, :cond_35b

    .line 1546
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    .line 1547
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1344
    :cond_2c5
    :goto_2c5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 1345
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    goto :goto_325

    .line 1290
    :cond_2ca
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContinusShot:Z

    .line 1292
    :sswitch_2cc
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 1293
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    return-void

    .line 1452
    :cond_2d2
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 1453
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    .line 1454
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 1444
    :cond_2d9
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 1445
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    .line 1446
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    .line 1217
    :cond_2e0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    .line 1218
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_35b

    .line 1219
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 1220
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 1221
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    .line 1222
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 1223
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1224
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    .line 1225
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateX(I)V

    .line 1226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_35b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_35b

    .line 1227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_307
    :goto_307
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz p1, :cond_307

    .line 1229
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->restoreDefaultValue()V

    goto :goto_307

    .line 1211
    :cond_319
    const-string p1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    .line 1212
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    .line 1213
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    .line 1214
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void

    .line 1350
    :cond_325
    :goto_325
    :sswitch_325
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    .line 1353
    :sswitch_327
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 1355
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_35b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez p1, :cond_35b

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->needToWait()Z

    move-result p1

    if-nez p1, :cond_35b

    .line 1356
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1242
    :cond_34d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    .line 1243
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    return-void

    .line 1382
    :cond_352
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    .line 1383
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    if-nez p1, :cond_35b

    .line 1384
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWhenCamSwitchEnd()V

    :cond_35b
    :goto_35b
    return-void

    .line 1374
    :cond_35c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    .line 1375
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    return-void

    nop

    :sswitch_data_362
    .sparse-switch
        0x7 -> :sswitch_325
        0x9 -> :sswitch_325
        0xa -> :sswitch_237
        0xb -> :sswitch_22f
        0xc -> :sswitch_244
        0xd -> :sswitch_220
        0xe -> :sswitch_218
        0xf -> :sswitch_259
        0x10 -> :sswitch_207
        0x17 -> :sswitch_200
        0x4c -> :sswitch_1eb
        0x5a -> :sswitch_220
        0x5b -> :sswitch_218
        0x5e -> :sswitch_327
        0x6d -> :sswitch_1df
        0x7c -> :sswitch_1b4
        0x7d -> :sswitch_18f
        0x81 -> :sswitch_2bb
        0x82 -> :sswitch_2a3
        0x83 -> :sswitch_2bb
        0x84 -> :sswitch_2a3
        0x90 -> :sswitch_256
        0x91 -> :sswitch_23c
        0x92 -> :sswitch_18c
        0x9b -> :sswitch_189
        0xa7 -> :sswitch_185
        0xb4 -> :sswitch_182
        0xb5 -> :sswitch_2a3
        0xc9 -> :sswitch_175
        0xcf -> :sswitch_169
        0xd0 -> :sswitch_155
        0xd2 -> :sswitch_2cc
        0xd3 -> :sswitch_14a
        0xdf -> :sswitch_147
        0xe7 -> :sswitch_13d
        0xe9 -> :sswitch_135
        0xea -> :sswitch_132
        0xeb -> :sswitch_12f
        0xec -> :sswitch_11a
        0xed -> :sswitch_117
        0xee -> :sswitch_114
        0xf2 -> :sswitch_10c
        0xf3 -> :sswitch_106
        0xf7 -> :sswitch_2bb
        0xf8 -> :sswitch_2a3
        0x101 -> :sswitch_103
        0x102 -> :sswitch_218
        0x109 -> :sswitch_f9
        0x10a -> :sswitch_e1
        0x10b -> :sswitch_f9
        0x10c -> :sswitch_e1
        0x111 -> :sswitch_220
        0x112 -> :sswitch_218
        0x11c -> :sswitch_327
        0x18b -> :sswitch_103
        0x18c -> :sswitch_218
    .end sparse-switch

    :pswitch_data_444
    .packed-switch 0x1c
        :pswitch_c8
        :pswitch_aa
        :pswitch_8d
        :pswitch_89
        :pswitch_86
    .end packed-switch

    :pswitch_data_452
    .packed-switch 0x48
        :pswitch_82
        :pswitch_1eb
        :pswitch_1eb
    .end packed-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 6

    .line 623
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_39

    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_39

    .line 627
    :cond_33
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->onOrientationChanged(IZ)V

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->setOrientation(IZ)V

    :cond_39
    :goto_39
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1049
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->pause()V

    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mShouldShow:Z

    .line 1051
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPausing:Z

    if-eqz v0, :cond_d

    .line 1052
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    :cond_d
    return-void
.end method

.method protected resetIndicatorPosition()V
    .registers 6

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1d

    .line 1136
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mFullZoomLayout is null mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    if-eqz v0, :cond_3a

    .line 1140
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mModeChangedBegin is true mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentPosition:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1143
    :cond_3a
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetIndicatorPosition] mItemsCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1144
    :goto_53
    iget v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mItemsCount:I

    if-ge v0, v1, :cond_b3

    .line 1145
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 1147
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    .line 1148
    instance-of v3, v1, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    if-eqz v3, :cond_6d

    .line 1149
    check-cast v1, Lcom/transsion/camera/app/ui/widget/FocalItemView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->isSelected()Z

    move-result v2

    .line 1151
    :cond_6d
    sget-object v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string v4, " visbility:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_b0

    .line 1153
    iget v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInitIndex:I

    sub-int/2addr v0, v1

    .line 1154
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateX(I)V

    return-void

    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_b3
    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .registers 2

    .line 338
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSecondDefaultZoomValue:I

    return-void
.end method

.method protected setSettingUIList()V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_front_camera_item_changed"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_front_camera_item_update"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->doUpdateSettingUI()V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    .line 388
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setTeleSecondDefaultZoomValue(I)V
    .registers 2

    return-void
.end method

.method public setUIState(I)V
    .registers 2

    return-void
.end method

.method public show(Z)V
    .registers 5

    .line 968
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 969
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v0, v1, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    if-eqz v0, :cond_3b

    goto/16 :goto_11b

    .line 972
    :cond_3b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsMoreMode:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    if-eqz v0, :cond_51

    goto/16 :goto_11b

    .line 975
    :cond_51
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_11b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    if-eqz v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mImageStyleShow:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_11b

    .line 978
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitSpotPanelOn:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInLongExposureMode:Z

    if-eqz v0, :cond_aa

    goto :goto_11b

    :cond_aa
    if-eqz p1, :cond_af

    .line 986
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->resetIndicatorPosition()V

    .line 989
    :cond_af
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-nez p1, :cond_c3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_c3

    .line 990
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 992
    :cond_c3
    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11b

    .line 993
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz p1, :cond_d8

    .line 994
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 996
    :cond_d8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_11b

    .line 997
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->cancelAnimation()V

    .line 998
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    if-eqz p1, :cond_117

    .line 999
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_11c

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 1000
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1001
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1002
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$4;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1008
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_117
    const/4 p1, 0x0

    .line 1010
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_11b
    :goto_11b
    return-void

    :array_11c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected showWhenCamSwitchEnd()V
    .registers 3

    .line 649
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 650
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    const/4 v1, 0x1

    .line 651
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    .line 652
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    .line 654
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_f
    return-void
.end method

.method public showWideCamera()V
    .registers 4

    .line 680
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showWideCamera] mIsNeedShowUI:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 681
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne v1, v2, :cond_3f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    if-eqz v1, :cond_3f

    .line 682
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mHideZoomForFlip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mHideZoomForFlip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFlipPageShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFlipPageShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 686
    :cond_3f
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopSettingShow:Z

    if-nez v1, :cond_189

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    if-nez v1, :cond_189

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    if-nez v1, :cond_189

    :cond_4f
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    if-nez v1, :cond_189

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    if-nez v1, :cond_189

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    if-eqz v1, :cond_5d

    goto/16 :goto_189

    .line 694
    :cond_5d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    if-eqz v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    if-eqz v0, :cond_185

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_185

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_185

    .line 698
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitSpotPanelOn:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mImageStyleShow:Z

    if-nez v0, :cond_185

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsMoreMode:Z

    if-eqz v0, :cond_b3

    goto/16 :goto_185

    .line 703
    :cond_b3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 704
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_b9

    .line 707
    :cond_cb
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->resetIndicatorPosition()V

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_184

    .line 709
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    if-eqz v1, :cond_dd

    .line 710
    iget v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mTranslateDis:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_ef

    .line 712
    :cond_dd
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ef

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v0, :cond_ef

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 717
    :cond_ef
    :goto_ef
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_104

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz v0, :cond_104

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 721
    :cond_104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 730
    :cond_130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    if-eqz v0, :cond_184

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_146

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14e

    :cond_146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_184

    :cond_14e
    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    const/4 v0, 0x2

    .line 733
    new-array v0, v0, [F

    fill-array-data v0, :array_1dc

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 735
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 736
    sget-object v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->cancelAnimation()V

    .line 738
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsNeedAnimate:Z

    if-eqz v1, :cond_181

    .line 739
    new-instance v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    :cond_181
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_184
    return-void

    .line 700
    :cond_185
    :goto_185
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->printStatus()V

    return-void

    .line 688
    :cond_189
    :goto_189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showWideCamera] mIsPopSettingShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopSettingShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeChangedBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mModeChangedBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVideoRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSuperAntiVideoOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsRestoringDefault:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsRestoringDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPopWindowShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsPopWindowShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mQuickRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mQuickRecording:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_1dc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translateWideCamera(IZ)V
    .registers 6

    .line 910
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 911
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_8f

    :cond_33
    if-eqz p2, :cond_50

    .line 915
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_56

    .line 917
    :cond_50
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 919
    :goto_56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_63

    .line 920
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 921
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    .line 923
    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    if-eqz p1, :cond_79

    .line 924
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 925
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 926
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 927
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    :cond_79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8f

    .line 930
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 931
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 932
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public translateWideCamera(Z)V
    .registers 9

    .line 830
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateWideCamera] fadeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCEffectUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIArtMuseumUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 833
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCouldShow:Z

    if-eqz v0, :cond_105

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsCapturing:Z

    if-nez v0, :cond_105

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_105

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    if-eqz v0, :cond_5a

    goto/16 :goto_105

    :cond_5a
    if-nez p1, :cond_6e

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIfNeedShow:Z

    if-eqz v0, :cond_6e

    goto/16 :goto_105

    :cond_6e
    const/4 v0, 0x2

    .line 843
    const-string v1, "alpha"

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    if-eqz p1, :cond_93

    .line 844
    new-array v4, v0, [F

    fill-array-data v4, :array_106

    .line 845
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 846
    new-array v4, v0, [F

    fill-array-data v4, :array_10e

    .line 847
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 848
    new-array v0, v0, [F

    fill-array-data v0, :array_116

    .line 849
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_cc

    .line 851
    :cond_93
    new-array v4, v0, [F

    fill-array-data v4, :array_11e

    .line 852
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 853
    new-array v4, v0, [F

    fill-array-data v4, :array_126

    .line 854
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 855
    new-array v0, v0, [F

    fill-array-data v0, :array_12e

    .line 856
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 857
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-nez v1, :cond_cc

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v1, :cond_cc

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    if-nez v1, :cond_cc

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsSuperAntiVideoOn:Z

    if-eqz v1, :cond_c2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-nez v1, :cond_cc

    .line 858
    :cond_c2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v1

    if-nez v1, :cond_cc

    const/4 v1, 0x0

    .line 859
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    :cond_cc
    :goto_cc
    if-eqz p1, :cond_d1

    const-wide/16 v4, 0x0

    goto :goto_d3

    :cond_d1
    const-wide/16 v4, 0x12c

    .line 868
    :goto_d3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomView:Landroid/view/View;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 869
    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 870
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 871
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    filled-new-array {v3, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 874
    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 875
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 876
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 877
    new-instance v2, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 905
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_105
    :goto_105
    return-void

    :array_106
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_10e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_116
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_126
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_12e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 4

    .line 1024
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->unInit()V

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1026
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1027
    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPostionList:Ljava/util/List;

    :cond_d
    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 1030
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 1031
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 1032
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    .line 1033
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    .line 1034
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    .line 1035
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1040
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fun_video_record"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_front_camera_item_changed"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_front_camera_item_update"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateItemValue()V
    .registers 4

    .line 939
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_4c

    .line 941
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isDVVideoModeBottomUIOn()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsTimeLapseSettingUIShow:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsLongExposureSettingUIShow:Z

    if-eqz v0, :cond_31

    goto :goto_4c

    .line 946
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

    .line 947
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_37

    .line 949
    :cond_49
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->resetIndicatorPosition()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 1613
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1614
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewLayout(I)V

    return-void
.end method

.method public updateRootViewPadding(IZ)V
    .registers 4

    .line 1574
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    const/4 v0, 0x0

    .line 1575
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateRootViewPadding(IZZ)V

    .line 1576
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 1577
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-nez p1, :cond_1d

    .line 1578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1d
    return-void
.end method

.method public updateRootViewPadding(IZZ)V
    .registers 7

    .line 1585
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1587
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFullZoomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_30

    .line 1588
    const-string p0, "onScreenFormChanged, mFullZoomContainer is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1591
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    const/4 p2, 0x1

    if-eqz p1, :cond_51

    .line 1592
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-eq p2, v0, :cond_44

    const/4 v1, 0x4

    if-eq v1, v0, :cond_44

    const/4 v1, 0x5

    if-ne v1, v0, :cond_40

    goto :goto_44

    .line 1599
    :cond_40
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->addItemViews(Ljava/util/List;Z)V

    goto :goto_51

    .line 1595
    :cond_44
    :goto_44
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1596
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1597
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->addItemViews(Ljava/util/List;Z)V

    .line 1603
    :cond_51
    :goto_51
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 1604
    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    if-ne p3, p2, :cond_5d

    .line 1605
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecording:Z

    if-eqz p2, :cond_5d

    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mRecordingOrientation:I

    :cond_5d
    const/4 p2, 0x0

    .line 1607
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->updateFullZoomUILayout(ZI)V

    .line 1608
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->resetIndicatorPosition()V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .registers 11

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p2

    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, v6

    if-eqz p2, :cond_2c

    .line 956
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v3, v0, v2

    aput p1, v0, v1

    const-string v4, "alpha"

    invoke-static {p2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 957
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 958
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_31

    .line 960
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_31
    cmpl-float p1, p1, v3

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 962
    :goto_37
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_39
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1163
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1164
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 1165
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 1166
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 377
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 379
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFaceBeautyOn:Z

    .line 380
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIGCEffectUIOn:Z

    .line 381
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mAIArtMuseumUIOn:Z

    .line 382
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
