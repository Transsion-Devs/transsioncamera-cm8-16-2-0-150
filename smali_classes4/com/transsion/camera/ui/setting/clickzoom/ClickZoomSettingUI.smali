.class public Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final FACE_COUNT_TRIGGER:I = 0x3

.field private static final KEY:Ljava/lang/String; = "key_camera_click_zoom"

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private clickZoomRoot:Landroid/view/ViewGroup;

.field private mAIArtMuseumUIOn:Z

.field private mAIGCUIOn:Z

.field protected mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mChangeByVolumeKey:Z

.field private mClickZoomSettingUITitle:Ljava/lang/String;

.field private mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFaceCount:I

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsCapturing:Z

.field private mIsConflictUIOn:Z

.field private mIsImageStyleShow:Z

.field private mIsLiteFaceBeautyShow:Z

.field private mIsModeSwitching:Z

.field private mIsPopSettingShowing:Z

.field private mIsPopWindowShow:Z

.field private mIsStBlurShow:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMarginBottom:I

.field private final mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field private mScaling:Z

.field private mSelftimerCapturing:Z

.field private mShouldShow:Z

.field private final mStateValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupported:Z

.field private mUIConflict:Z

.field private final mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# direct methods
.method public static synthetic $r8$lambda$JBjV6IAypF4CDwJRNNjl28WTILE(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 594
    const-string v0, "topMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "bottomMargin"

    .line 595
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    .line 594
    invoke-virtual {p0, v1, v0, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 596
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXOfzujuBKEddUhOA1R6ckceXg0(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->lambda$updateUIStateBySettingValue$1(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YcB-BbCqklTcf0_QS4HWUvkBGoM(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->onZoomStateChangedFromClick(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFadeInAnimator(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupported(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAIArtMuseumUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAIGCUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConflictUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeZoomStateByVolumeClick(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByVolumeClick(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFaceCountChanged(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->onFaceCountChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEntryViewIfNeed(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayoutParams(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIStateBySettingValue(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIStateBySettingValue(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 87
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ClickZoomSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 7

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    .line 101
    iput v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    .line 107
    new-instance v2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    .line 113
    new-instance v3, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopWindowShow:Z

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    .line 126
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMainHandler:Landroid/os/Handler;

    .line 235
    new-instance v3, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    .line 129
    sget-object v3, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "ClickZoomSettingUI constructor"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    sget v3, Lcom/transsion/camera/R$dimen;->click_zoom_view_margin_bottom:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    .line 131
    sget v3, Lcom/transsion/camera/R$string;->click_zoom_setting_title:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomSettingUITitle:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "state_zoom_in"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "state_zoom_out"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private changeSetting(I)V
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    .line 729
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private changeZoomStateByOrientation(I)V
    .registers 4

    .line 669
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 676
    :cond_d
    rem-int/lit16 p1, p1, 0xb4

    const/4 v0, 0x1

    if-nez p1, :cond_26

    .line 678
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mClickZoomDefaultZoomOut:Z

    if-eqz p1, :cond_25

    .line 679
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_25

    .line 680
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 681
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :cond_25
    return-void

    :cond_26
    const/4 p1, 0x0

    .line 686
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 687
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void

    .line 670
    :cond_2e
    :goto_2e
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByOrientation return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeZoomStateByScaleFactor(F)V
    .registers 4

    .line 692
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-eqz v0, :cond_9

    goto :goto_27

    :cond_9
    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_19

    const/4 p1, 0x0

    .line 698
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 699
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void

    :cond_19
    const v0, 0x3f866666    # 1.05f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_26

    .line 701
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 702
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :cond_26
    return-void

    .line 693
    :cond_27
    :goto_27
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByScaleFactor return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeZoomStateByVolumeClick(Z)V
    .registers 4

    .line 706
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    if-nez v0, :cond_d

    goto :goto_1f

    :cond_d
    const/4 v0, 0x1

    if-eqz p1, :cond_17

    .line 713
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 714
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void

    :cond_17
    const/4 p1, 0x0

    .line 716
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 717
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void

    .line 707
    :cond_1f
    :goto_1f
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByVolumeClick return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangeByVolumeKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateUIStateBySettingValue$1(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    .line 743
    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 744
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    :cond_d
    return-void
.end method

.method private onFaceCountChanged(I)V
    .registers 5

    .line 751
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mUIConflict:Z

    if-eqz v0, :cond_c

    .line 752
    sget-object p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onFaceCountChanged return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 755
    :cond_c
    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    if-eq v0, p1, :cond_3d

    .line 756
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceCountChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3d

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 760
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :cond_3d
    return-void
.end method

.method private onZoomStateChangedFromClick(I)V
    .registers 2

    .line 722
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void
.end method

.method private showEntryViewIfNeed()V
    .registers 4

    .line 530
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v0, :cond_c

    .line 531
    sget-object p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showEntryViewIfNeed: Current do not support click zoom"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 535
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsImageStyleShow:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    if-nez v0, :cond_4d

    .line 544
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopWindowShow:Z

    if-eqz v0, :cond_3b

    goto :goto_4d

    .line 550
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 552
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showEntryViewIfNeed setVisibility(View.VISIBLE)"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4c
    return-void

    .line 545
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEntryViewIfNeed return. mSelftimerCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsConflictUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIGCUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAIArtMuseumUIOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPopSettingShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayoutParams(II)V
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    move p1, v1

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 621
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 622
    sget v3, Lcom/transsion/camera/R$dimen;->click_zoom_view_margin_left_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 623
    sget v4, Lcom/transsion/camera/R$dimen;->click_zoom_view_margin_bottom_expanded:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 624
    sget v5, Lcom/transsion/camera/R$dimen;->click_zoom_view_margin_90_bottom_expanded:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 626
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v7, 0x55

    const/16 v8, 0x33

    const/4 v9, 0x1

    if-ne p2, v9, :cond_5a

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_54

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_4c

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_46

    .line 644
    invoke-virtual {v6, v3, v1, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p0, 0x53

    .line 645
    iput p0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    .line 638
    :cond_46
    invoke-virtual {v6, v5, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 639
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    .line 634
    :cond_4c
    invoke-virtual {v6, v1, v4, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p0, 0x35

    .line 635
    iput p0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    .line 630
    :cond_54
    invoke-virtual {v6, v1, v1, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 631
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    :cond_5a
    const/4 v3, 0x4

    if-ne p2, v3, :cond_6f

    .line 649
    sget p0, Lcom/transsion/camera/R$dimen;->click_zoom_lr_hover_bottom_margin:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sget p1, Lcom/transsion/camera/R$dimen;->click_zoom_lr_hover_start_margin:I

    .line 650
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 649
    invoke-virtual {v6, v1, v1, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 651
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    :cond_6f
    const/4 v3, 0x5

    if-ne p2, v3, :cond_84

    .line 653
    sget p0, Lcom/transsion/camera/R$dimen;->click_zoom_lr_hover_bottom_margin:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sget p1, Lcom/transsion/camera/R$dimen;->click_zoom_lr_hover_start_margin:I

    .line 654
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 653
    invoke-virtual {v6, p0, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 655
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a4

    .line 657
    :cond_84
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 658
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    add-int/2addr v2, v3

    .line 657
    invoke-virtual {v6, v1, p2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p2, 0x51

    .line 659
    iput p2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 660
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_a4

    .line 662
    invoke-virtual {p0, p1, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 665
    :cond_a4
    :goto_a4
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutParams(IIZ)V
    .registers 12

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 561
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 564
    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_cd

    .line 568
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 569
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 570
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 571
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 572
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    add-int/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p3, :cond_ce

    const/4 p3, 0x0

    const/4 v7, 0x1

    if-ne p2, v7, :cond_78

    .line 576
    new-array v1, v7, [F

    const/4 v2, 0x0

    aput v2, v1, p3

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 577
    new-array v1, v7, [F

    aput v6, v1, p3

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 578
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 587
    :cond_78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 588
    const-string p1, "bottomMargin"

    filled-new-array {v4, v5}, [I

    move-result-object p2

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 589
    const-string p2, "topMargin"

    filled-new-array {v2, v3}, [I

    move-result-object p3

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 590
    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    .line 591
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 592
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, v1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 600
    :cond_bc
    invoke-virtual {v1, p3, v3, p3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p2, 0x51

    .line 601
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_cd

    .line 604
    invoke-virtual {p0, p1, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_cd
    :goto_cd
    return-void

    .line 608
    :cond_ce
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(II)V

    return-void
.end method

.method private updateUIState(IZ)V
    .registers 3

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_e

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->setState(IZ)V

    .line 737
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickZoomValue(I)V

    :cond_e
    return-void
.end method

.method private updateUIStateBySettingValue(Ljava/lang/String;Z)V
    .registers 5

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    new-instance v1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 146
    sget-object p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCreateEntryView, mSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->interactive_ui_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->clickZoomRoot:Landroid/view/ViewGroup;

    .line 148
    sget v0, Lcom/transsion/camera/R$layout;->click_zoom_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    sget p2, Lcom/transsion/camera/R$id;->click_zoom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->setOnStateChangeListener(Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-object p1
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->clickZoomRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 203
    const-string p0, "key_camera_click_zoom"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 4

    .line 520
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 521
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    .line 522
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView: ++ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_29

    .line 524
    const-string v1, "hideEntryView setVisibility(View.GONE)"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 525
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    .line 298
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v0, :cond_f

    .line 300
    sget-object p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyCameraOperateAction return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_d2

    goto/16 :goto_a5

    .line 427
    :sswitch_16
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 423
    :sswitch_1c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 435
    :sswitch_22
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    .line 436
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 431
    :sswitch_28
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 352
    :sswitch_2e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-nez p1, :cond_a5

    .line 353
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    .line 355
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mUIConflict:Z

    return-void

    .line 345
    :sswitch_3e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-nez p1, :cond_a5

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 347
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 348
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mUIConflict:Z

    return-void

    .line 399
    :sswitch_4e
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsImageStyleShow:Z

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 392
    :sswitch_54
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsImageStyleShow:Z

    .line 393
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 394
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    .line 395
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    .line 396
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    return-void

    .line 386
    :sswitch_60
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    .line 387
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    if-eqz p1, :cond_a5

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 379
    :sswitch_6a
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    .line 380
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    .line 381
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    .line 382
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 336
    :sswitch_76
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    .line 338
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mUIConflict:Z

    return-void

    .line 327
    :sswitch_7e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 328
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 329
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mUIConflict:Z

    return-void

    .line 367
    :sswitch_86
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 361
    :sswitch_8c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    .line 362
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 411
    :sswitch_92
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->setEnable(Z)V

    return-void

    .line 417
    :sswitch_96
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopWindowShow:Z

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    if-eqz p1, :cond_a5

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    :cond_a5
    :goto_a5
    return-void

    .line 414
    :sswitch_a6
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopWindowShow:Z

    return-void

    .line 371
    :sswitch_a9
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    .line 372
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsImageStyleShow:Z

    .line 373
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    .line 375
    :sswitch_af
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    return-void

    .line 315
    :sswitch_b4
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    return-void

    .line 310
    :sswitch_b7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    return-void

    .line 407
    :sswitch_ba
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    .line 408
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->setEnable(Z)V

    return-void

    .line 403
    :sswitch_c0
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->setEnable(Z)V

    .line 404
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    return-void

    .line 323
    :sswitch_c6
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    .line 324
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void

    .line 319
    :sswitch_cc
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 320
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    return-void

    :sswitch_data_d2
    .sparse-switch
        0x0 -> :sswitch_cc
        0x2 -> :sswitch_cc
        0x3 -> :sswitch_c6
        0xd -> :sswitch_c0
        0xe -> :sswitch_ba
        0x11 -> :sswitch_b7
        0x12 -> :sswitch_b4
        0x14 -> :sswitch_af
        0x1c -> :sswitch_a9
        0x1d -> :sswitch_a6
        0x1e -> :sswitch_96
        0x1f -> :sswitch_92
        0x24 -> :sswitch_8c
        0x25 -> :sswitch_86
        0x4d -> :sswitch_b7
        0x4e -> :sswitch_b4
        0x55 -> :sswitch_b7
        0x56 -> :sswitch_b4
        0x69 -> :sswitch_b7
        0x6a -> :sswitch_b7
        0x6b -> :sswitch_b7
        0x7f -> :sswitch_7e
        0x80 -> :sswitch_76
        0xcf -> :sswitch_6a
        0xd0 -> :sswitch_60
        0xd2 -> :sswitch_8c
        0xd3 -> :sswitch_86
        0xe9 -> :sswitch_8c
        0xea -> :sswitch_86
        0xf2 -> :sswitch_54
        0xf3 -> :sswitch_4e
        0x101 -> :sswitch_3e
        0x102 -> :sswitch_2e
        0x198 -> :sswitch_28
        0x199 -> :sswitch_22
        0x19a -> :sswitch_1c
        0x19b -> :sswitch_16
    .end sparse-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 3

    .line 445
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onModePanelDistanceChanged(FZ)V

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_a

    .line 448
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 7

    .line 460
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 461
    :goto_9
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 463
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v3, v2, :cond_16

    .line 464
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 468
    :cond_16
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz v3, :cond_1d

    .line 469
    invoke-virtual {v3, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_1d
    if-eqz v0, :cond_22

    .line 472
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByOrientation(I)V

    .line 474
    :cond_22
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 501
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 502
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByScaleFactor(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 490
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_21

    .line 494
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x7c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_21
    return p1

    .line 487
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .line 508
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsCapturing:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v0, :cond_9

    goto :goto_1b

    :cond_9
    const/4 p1, 0x0

    .line 511
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 512
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_19

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_19
    const/4 p0, 0x1

    return p0

    .line 509
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 479
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 481
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFaceCount:I

    if-nez p1, :cond_11

    .line 216
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mDeviceSetting is null!"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    return-void

    .line 220
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_30

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_face_rect"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 225
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_40

    const/4 v0, 0x1

    :cond_40
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    .line 227
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSetting mSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 138
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_1d

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1d
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 6

    .line 162
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    .line 167
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz v1, :cond_82

    .line 169
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 170
    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 173
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_7f

    .line 174
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIStateBySettingValue(Ljava/lang/String;Z)V

    .line 176
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomSettingUITitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    sget-object v1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupEntryView, mSupported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsModeSwitching:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v1, :cond_71

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    if-nez v1, :cond_71

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    goto :goto_74

    .line 181
    :cond_71
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 184
    :goto_74
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v1, :cond_82

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_82

    .line 188
    :cond_7f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 191
    :cond_82
    :goto_82
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsModeSwitching:Z

    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mShouldShow:Z

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    .line 194
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->setEnable(Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 278
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 280
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 281
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIGCUIOn:Z

    .line 282
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mAIArtMuseumUIOn:Z

    .line 283
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    .line 284
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsPopSettingShowing:Z

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsStBlurShow:Z

    .line 286
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsLiteFaceBeautyShow:Z

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_40

    .line 290
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_face_rect"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_40
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
