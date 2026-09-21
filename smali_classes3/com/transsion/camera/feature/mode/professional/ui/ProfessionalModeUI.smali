.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;,
        Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;,
        Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SEEKBAR_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_POPUPBAR:I = 0x67

.field private static final MSG_HIDE_SEEKBAR:I = 0x66

.field private static final MSG_INFLATE_VIEW_IF_NEED:I = 0x64

.field private static final MSG_RESET_CAPTURING_UI:I = 0x68

.field private static final MSG_UPDATE_SETTING_ITEMS_LAYOUT:I = 0x65

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mBottomBarHeight:I

.field private mBottomBarHeightChanged:I

.field private final mCaptureParentLayout:Landroid/view/ViewGroup;

.field private final mCaptureRootLayoutId:I

.field protected mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mCaptureStopListener:Landroid/view/View$OnClickListener;

.field private mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentItemIndex:I

.field private mCurrentSelectedKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mGradationViewContainer:Landroid/widget/FrameLayout;

.field private mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mGraduationViewRoot:Landroid/view/View;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mHideRunnable:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInstantZoomShow:Z

.field private mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

.field private mIsCapturing:Z

.field private mIsInflated:Z

.field private mIsPopSettingShow:Z

.field private mOrientation:I

.field private final mParentLayout:Landroid/view/ViewGroup;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

.field private mPopupBarRoot:Landroid/widget/LinearLayout;

.field private mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPopupRootUI:Landroid/view/View;

.field private mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

.field private mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

.field private mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

.field private mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

.field private mProgressViewRoot:Landroid/view/View;

.field protected mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mResources:Landroid/content/res/Resources;

.field private final mRootLayoutId:I

.field private mRootUI:Landroid/view/View;

.field protected mScreenFormType:I

.field private mScrollerBottomMarginChanged:I

.field private mScrollerContainer:Landroid/widget/RelativeLayout;

.field private mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mScrollerViewRoot:Landroid/view/View;

.field private mSeekBarCurIndex:I

.field private mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mSettingItemKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingItemLayoutId:I

.field private final mSettingItemUIList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingItemsLayout:Landroid/view/ViewGroup;

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

.field private mTranslateDistance:F

.field private final mUIHandler:Landroid/os/Handler;

.field private mUIState:I

.field private mZoomScaling:Z


# direct methods
.method public static synthetic $r8$lambda$K85h6e1jGB8-8hjs4F4THakehsw(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$updateRootRectHover$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLQaODcQF7Wenx8ZMssQPm4p3fA(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$disable$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$qB2uneTE4UarOe1NpYo00LbntNQ(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$show$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zkut1-6qFhmOwyBQ38RuiUITr8I(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$onPictureSizeChanged$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoSwitchIcon(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentItemIndex(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSelectedKey(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentSelectedKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGradationViewContainer(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPopSettingShow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsPopSettingShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProParamsHelper(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerView(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBarCurIndex(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingBarRootUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingItemKeyList(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemKeyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingItemUIList(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomScaling(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mZoomScaling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoResetCapturingUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->doResetCapturingUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInflateViewIfNeed(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->handleInflateViewIfNeed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSeekBar(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhighLightSelectItem(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->show()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettingItemsLayout(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateSettingItemsLayout(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProfessionalModeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 124
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 16

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mZoomScaling:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsCapturing:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsPopSettingShow:Z

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemKeyList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    .line 108
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 109
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 110
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    .line 116
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    .line 117
    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    .line 121
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 122
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    .line 126
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeight:I

    .line 128
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 131
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideRunnable:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

    .line 232
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    .line 244
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    .line 138
    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    .line 139
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 141
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 142
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    .line 143
    sget p2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_translate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    .line 144
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    .line 145
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    .line 146
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 147
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 148
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_mode_layout:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootLayoutId:I

    .line 149
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_capture_layout:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureRootLayoutId:I

    .line 150
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_setting_item:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemLayoutId:I

    .line 151
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    .line 152
    invoke-interface {p7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeight:I

    .line 153
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 155
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProParamsHelper:Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;

    return-void
.end method

.method private disable()V
    .registers 3

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_c

    .line 1356
    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private doResetCapturingUI()V
    .registers 2

    .line 589
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->stopCapturingBeginAnim()V

    .line 590
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->stopCapturingEndAnim()V

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->setCaptureButtonEnable(Z)V

    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 738
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getAnimatorStartDelay()I
    .registers 1

    .line 742
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x32

    return p0

    :cond_9
    const/16 p0, 0x64

    return p0
.end method

.method private getProTranslateDistance()F
    .registers 3

    .line 746
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_18

    .line 751
    :cond_c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0

    .line 749
    :cond_18
    :goto_18
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    return p0
.end method

.method private handleInflateViewIfNeed(I)V
    .registers 10

    .line 323
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    if-nez v0, :cond_1ec

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootLayoutId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureRootLayoutId:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 326
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->professional_root_group:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootUI:Landroid/view/View;

    .line 327
    sget v2, Lcom/transsion/camera/feature/mode/professional/R$id;->professional_setting_ui_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 328
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capture_root:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    .line 329
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_graduation_layout:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 330
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_graduation_view_container:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    .line 331
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_graduation_ui_root:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 332
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_b3

    .line 333
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_scroller_view_layout_ui5:I

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerViewRoot:Landroid/view/View;

    .line 334
    sget v5, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_scroller_view_container:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerContainer:Landroid/widget/RelativeLayout;

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerViewRoot:Landroid/view/View;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_scroller_view:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 336
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 337
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;)V

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 339
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerViewRoot:Landroid/view/View;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_auto_switch:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 340
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateIconBG(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v5, v4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 343
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v5, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$3;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$3;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_e3

    .line 379
    :cond_b3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_grauation_view_layout:I

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationViewRoot:Landroid/view/View;

    .line 380
    sget v5, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_graduation_view_ui:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 381
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;)V

    .line 382
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 384
    new-instance v2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v2, v5}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    .line 385
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->setGraduationView(Lcom/transsion/camera/app/ui/widget/GraduationView;)V

    .line 388
    :goto_e3
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v2, -0x1

    const/4 v5, 0x0

    if-ne p1, v2, :cond_eb

    .line 390
    iput v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    .line 392
    :cond_eb
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->setting_items_layout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    .line 393
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$layout;->pro_popup_bar_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 396
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_ui_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupRootUI:Landroid/view/View;

    .line 397
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_rotate_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 398
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRoot:Landroid/widget/LinearLayout;

    .line 399
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 400
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    invoke-direct {v0, v2, p1, v6}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    .line 403
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capture_button:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_142

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :cond_142
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_professional_capture_process_end:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    .line 408
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capturing_progress:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz p1, :cond_15f

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->setProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    .line 412
    :cond_15f
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capturing_rotate_framelayout:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_picture_size"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e5

    .line 416
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v1, v6

    .line 418
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez v0, :cond_1e5

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 419
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleInflateViewIfNeed pictureSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 420
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 421
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    .line 422
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_1c5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_1c5

    .line 423
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 425
    :cond_1c5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_1e5

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v1, v2, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_1e5

    .line 426
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_root_bottom_margin_offset_16_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    .line 430
    :cond_1e5
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    invoke-virtual {p0, p1, v5, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    .line 431
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    :cond_1ec
    return-void
.end method

.method private hideSeekBar(ZZ)V
    .registers 6

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationOrScrollerShowing()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 697
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->getProTranslateDistance()F

    move-result v1

    .line 698
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startHideAnim(FZ)V

    goto :goto_2a

    .line 700
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 702
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    if-ne v1, v2, :cond_2a

    .line 703
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    :cond_2a
    :goto_2a
    if-nez p2, :cond_43

    if-eqz p1, :cond_43

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x59

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 708
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_conflict_ui_state"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v1, "value_pro_seek_ui_off"

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    :cond_43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_50

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->setShowStatus(Z)V

    :cond_50
    return-void
.end method

.method private highLightSelectItem(IZ)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 796
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 797
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    if-ne v1, p1, :cond_18

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private isGraduationOrScrollerShowing()Z
    .registers 2

    .line 1280
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1283
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method private synthetic lambda$disable$3()V
    .registers 4

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->setGraduationViewEnable(Z)V

    const/4 v1, 0x1

    .line 1358
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    .line 1359
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->dismissPopup()Z

    .line 1360
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_24

    move v1, v0

    .line 1361
    :goto_10
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1362
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method private synthetic lambda$onPictureSizeChanged$0()V
    .registers 3

    .line 508
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    return-void
.end method

.method private synthetic lambda$show$2()V
    .registers 5

    .line 1293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v3, "value_pro_setting_bar_ui_on"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1295
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->setGraduationViewEnable(Z)V

    .line 1296
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_30

    .line 1297
    :goto_1c
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1298
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    return-void
.end method

.method private synthetic lambda$updateRootRectHover$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .registers 10

    .line 910
    const-string v0, "barTopMargin"

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "barBottomMargin"

    .line 911
    invoke-virtual {p6, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 910
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 912
    const-string v0, "graduBottomMargin"

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 913
    const-string v0, "popBottomMargin"

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v2, v2, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 914
    const-string v0, "processBottomMargin"

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p4, v2, v2, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 915
    const-string v0, "processHeight"

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    const-string p1, "processPadding"

    if-eqz p5, :cond_7f

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p6, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 923
    :cond_7f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p6, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private restoreAllItemsColor()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 790
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 791
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return-void
.end method

.method private show()V
    .registers 3

    .line 1288
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mZoomScaling:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 1291
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_15

    .line 1292
    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method private showSeekBar(I)V
    .registers 4

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 684
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    const/4 p1, 0x0

    .line 685
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startShowAnim(F)V

    .line 686
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x58

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 687
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v1, "value_pro_seek_ui_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_2d

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->setShowStatus(Z)V

    :cond_2d
    return-void
.end method

.method private startHideAnim(FZ)V
    .registers 10

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 758
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_5a

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 763
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 764
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$4;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_5a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startShowAnim(F)V
    .registers 9

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 719
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->getProTranslateDistance()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    new-array v3, v2, [F

    aput p1, v3, v1

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_70

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 730
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 731
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->getAnimatorStartDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 733
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_70
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateEntryViewData()V
    .registers 5

    const/4 v0, 0x0

    .line 802
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 803
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 804
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    .line 805
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 804
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_37
    return-void
.end method

.method private updateIconBG(Ljava/lang/String;)V
    .registers 5

    .line 1436
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_2d

    if-nez p1, :cond_16

    .line 1438
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "4:3"

    const-string v1, "_global_scope"

    const-string v2, "key_picture_ratio"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1441
    :cond_16
    const-string v0, "1:1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1442
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/feature/mode/professional/R$drawable;->btn_pro_scroller_switch_dark:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1444
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/feature/mode/professional/R$drawable;->btn_pro_scroller_switch:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2d
    return-void
.end method

.method private updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V
    .registers 6

    if-eqz p1, :cond_36

    .line 811
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_manual_focus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 812
    const-string v0, "auto"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "continuous-picture"

    .line 813
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2b

    .line 816
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$string;->manual_focus_mf_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->setTitle(Ljava/lang/String;)V

    goto :goto_36

    .line 814
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$string;->manual_focus_af_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->setTitle(Ljava/lang/String;)V

    :cond_36
    :goto_36
    if-eqz p3, :cond_3b

    .line 820
    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private updateProfessionalItemsLayoutParams(I)V
    .registers 7

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_54

    .line 627
    :cond_5
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    .line 629
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x10e

    goto :goto_3a

    :cond_11
    const/4 v2, 0x4

    if-eq v1, v2, :cond_36

    const/4 v2, 0x5

    if-ne v1, v2, :cond_18

    goto :goto_36

    .line 634
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_setting_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_setting_padding:I

    .line 635
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 634
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 636
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez v0, :cond_39

    goto :goto_3a

    .line 632
    :cond_36
    :goto_36
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_39
    move p1, v3

    :goto_3a
    move v0, v3

    .line 640
    :goto_3b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 641
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;

    if-nez v1, :cond_4e

    goto :goto_51

    .line 645
    :cond_4e
    invoke-virtual {v1, p1, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_54
    :goto_54
    return-void
.end method

.method private updateRootRect(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 949
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v3, 0x13

    const/16 v4, 0x15

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, 0x33

    const/16 v8, 0x55

    const/16 v9, 0xb4

    const/16 v10, 0x53

    const/16 v11, 0x35

    const/4 v14, 0x1

    const/16 v15, 0x10e

    const/16 v12, 0x5a

    const/4 v13, 0x0

    if-eqz v2, :cond_16a

    .line 950
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 951
    invoke-virtual {v2, v13, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 952
    iget v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v13, v14, :cond_e3

    if-eq v1, v12, :cond_b3

    if-eq v1, v9, :cond_88

    if-eq v1, v15, :cond_5d

    .line 978
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 979
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 980
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 981
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 982
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_0_top_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_dd

    .line 969
    :cond_5d
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 970
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 971
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 972
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_90_top_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 973
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_dd

    .line 962
    :cond_88
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 963
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 964
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 965
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 966
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_0_top_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_dd

    .line 955
    :cond_b3
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 956
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 957
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 958
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_90_top_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 959
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_dd
    add-int/2addr v1, v12

    .line 985
    rem-int/lit16 v1, v1, 0x168

    :goto_e0
    const/4 v15, 0x0

    goto/16 :goto_160

    :cond_e3
    if-ne v13, v6, :cond_107

    .line 987
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 988
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 989
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 990
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_professional_bottom_margin:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v1, v12

    goto :goto_e0

    :cond_107
    if-ne v13, v5, :cond_12c

    .line 993
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 994
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 995
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 996
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_professional_bottom_margin:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10e

    goto :goto_e0

    :cond_12c
    const/4 v1, -0x1

    .line 999
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1000
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x51

    .line 1001
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1002
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_14a

    .line 1003
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iget v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_15f

    :cond_14a
    const/4 v15, 0x0

    .line 1005
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iget v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_root_bottom_spacing:I

    .line 1006
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v13, v3

    .line 1005
    invoke-virtual {v2, v15, v1, v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_15f
    move v1, v15

    .line 1010
    :goto_160
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v1, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1011
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    :cond_16a
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, -0x2

    if-eqz v1, :cond_339

    .line 1015
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1016
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v3, :cond_1a0

    .line 1017
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1019
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1020
    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v5, 0x51

    .line 1021
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1022
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_setting_item_height:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v5, v3

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v15, v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_339

    :cond_1a0
    const/4 v15, 0x0

    .line 1024
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1025
    invoke-virtual {v1, v15, v15, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1026
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v5, v14, :cond_278

    .line 1027
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v5, v12, :cond_23c

    if-eq v5, v9, :cond_211

    const/16 v13, 0x10e

    if-eq v5, v13, :cond_1e6

    .line 1052
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1053
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1054
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1055
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1056
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_0_top_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_266

    .line 1043
    :cond_1e6
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1044
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1045
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1046
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_90_top_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1047
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_266

    .line 1036
    :cond_211
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1037
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1038
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1039
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1040
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_0_top_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_266

    .line 1029
    :cond_23c
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1030
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1031
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1032
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_90_top_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1033
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1059
    :goto_266
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    add-int/2addr v5, v12

    rem-int/lit16 v5, v5, 0x168

    .line 1060
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_view_height:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_275
    const/4 v15, 0x0

    goto/16 :goto_32a

    :cond_278
    if-ne v5, v6, :cond_2a6

    .line 1062
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1063
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1064
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1065
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1066
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_graduation_bottom_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v5, v12

    goto :goto_275

    :cond_2a6
    const/4 v13, 0x5

    if-ne v5, v13, :cond_2d8

    .line 1069
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1070
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_pro_graduation_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1071
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x13

    .line 1072
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1073
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_graduation_bottom_margin:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10e

    goto :goto_275

    .line 1076
    :cond_2d8
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    .line 1077
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1078
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x51

    .line 1079
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1080
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-nez v5, :cond_305

    .line 1081
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1082
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->column_pro_bottom_margin:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sub-int/2addr v5, v13

    const/4 v15, 0x0

    .line 1081
    invoke-virtual {v1, v15, v15, v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_318

    :cond_305
    const/4 v15, 0x0

    .line 1084
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1085
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->column_pro_bottom_margin:I

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v5, v2

    .line 1084
    invoke-virtual {v1, v15, v15, v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1087
    :goto_318
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_padding_top:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v15, v5, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    move v5, v15

    .line 1091
    :goto_32a
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v5, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1093
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    :cond_339
    :goto_339
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_343

    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-eqz v1, :cond_34b

    .line 1099
    :cond_343
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_358

    .line 1100
    :cond_34b
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-ne v1, v12, :cond_352

    const/16 v1, -0x5a

    goto :goto_359

    :cond_352
    const/16 v13, 0x10e

    if-ne v1, v13, :cond_359

    move v1, v12

    goto :goto_359

    :cond_358
    const/4 v1, 0x0

    .line 1107
    :cond_359
    :goto_359
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v2, :cond_372

    .line 1108
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v2, :cond_368

    .line 1109
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 1111
    :cond_368
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_381

    .line 1112
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    invoke-virtual {v1, v2, v14}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_381

    .line 1115
    :cond_372
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v2, :cond_381

    .line 1116
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v3, v14, :cond_37e

    .line 1117
    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    goto :goto_381

    .line 1119
    :cond_37e
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    .line 1124
    :cond_381
    :goto_381
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_519

    .line 1125
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, 0x0

    .line 1126
    invoke-virtual {v1, v15, v15, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1127
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v2, v14, :cond_451

    .line 1128
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v2, v12, :cond_41f

    if-eq v2, v9, :cond_3f4

    const/16 v13, 0x10e

    if-eq v2, v13, :cond_3c9

    .line 1153
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1154
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1155
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1156
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1157
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_449

    .line 1144
    :cond_3c9
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1145
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1146
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1147
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1148
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_449

    .line 1137
    :cond_3f4
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1138
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1139
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1140
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1141
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_449

    .line 1130
    :cond_41f
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1131
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1132
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1133
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1134
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1160
    :goto_449
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    add-int/2addr v2, v12

    rem-int/lit16 v2, v2, 0x168

    :goto_44e
    const/4 v15, 0x0

    goto/16 :goto_50e

    :cond_451
    if-ne v2, v6, :cond_475

    .line 1162
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1163
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1164
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1165
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_pro_pop_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v2, v12

    goto :goto_44e

    :cond_475
    const/4 v13, 0x5

    if-ne v2, v13, :cond_49d

    .line 1168
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1169
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x13

    .line 1170
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1171
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_pro_pop_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x10e

    goto :goto_44e

    :cond_49d
    const/4 v5, -0x1

    .line 1174
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 1175
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x51

    .line 1176
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1177
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-nez v2, :cond_4c1

    .line 1178
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1179
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v15, 0x0

    .line 1178
    invoke-virtual {v1, v15, v15, v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_50d

    :cond_4c1
    const/4 v15, 0x0

    .line 1180
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v2, :cond_4dd

    .line 1181
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1182
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom_ui4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1181
    invoke-virtual {v1, v15, v15, v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_50d

    .line 1184
    :cond_4dd
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1185
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1186
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_setting_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 1187
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v15, 0x0

    .line 1185
    invoke-virtual {v1, v15, v15, v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1188
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_up_bar_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_50d
    move v2, v15

    .line 1192
    :goto_50e
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1193
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_51a

    :cond_519
    const/4 v15, 0x0

    .line 1196
    :goto_51a
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v1, :cond_717

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1200
    invoke-virtual {v1, v15, v15, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1201
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v2, v14, :cond_625

    .line 1202
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v2, v12, :cond_5e9

    if-eq v2, v9, :cond_5ad

    const/16 v13, 0x10e

    if-eq v2, v13, :cond_571

    .line 1227
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1228
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1229
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1230
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1231
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_709

    .line 1218
    :cond_571
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1219
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1220
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1221
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1222
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_709

    .line 1211
    :cond_5ad
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1212
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1213
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1214
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1215
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_709

    .line 1204
    :cond_5e9
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1205
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1206
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1207
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1208
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_709

    :cond_625
    const/4 v3, 0x3

    if-ne v2, v3, :cond_644

    const/4 v5, -0x1

    .line 1235
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1236
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x51

    .line 1237
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v15, 0x0

    .line 1239
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1240
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v15

    :goto_640
    move v2, v15

    :goto_641
    const/4 v15, 0x0

    goto/16 :goto_70c

    :cond_644
    if-ne v2, v6, :cond_682

    .line 1242
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1243
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1244
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1245
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1246
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_right_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_709

    :cond_682
    const/4 v13, 0x5

    if-ne v2, v13, :cond_6c0

    .line 1248
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1249
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1250
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1251
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1252
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->lr_hover_bottom_panel_right_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_709

    :cond_6c0
    const/4 v5, -0x1

    .line 1254
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1255
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x51

    .line 1256
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1257
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1258
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez v2, :cond_6f8

    .line 1259
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v2

    if-ltz v2, :cond_6f2

    .line 1263
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v15

    goto/16 :goto_640

    .line 1265
    :cond_6f2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_70c

    :cond_6f8
    const/4 v3, 0x2

    if-ne v2, v3, :cond_709

    .line 1270
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_shutter_panel_column_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto/16 :goto_640

    :cond_709
    :goto_709
    const/4 v2, 0x0

    goto/16 :goto_641

    .line 1274
    :goto_70c
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v15, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_717
    return-void
.end method

.method private updateRootRectHover(IZZ)V
    .registers 30

    move-object/from16 v1, p0

    if-nez p3, :cond_17

    .line 825
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 826
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateRootRectHover, mHoverAnimator.isRunning(), no needStopAnimator."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 829
    :cond_17
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 830
    iget-boolean v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    if-nez v0, :cond_29

    .line 831
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateRootRectHover has not inflated."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 834
    :cond_29
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 835
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 836
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 837
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 838
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 839
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 840
    iget-object v6, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v6

    .line 842
    iget v7, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_53

    .line 843
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_root_bottom_spacing:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_5b

    .line 845
    :cond_53
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_root_bottom_spacing:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 847
    :goto_5b
    iget-object v9, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 849
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 850
    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v10, -0x2

    .line 851
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 852
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 853
    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 855
    iget v12, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v12, v8, :cond_80

    .line 856
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_graduation_bottom_spacing:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_88

    .line 858
    :cond_80
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_graduation_bottom_spacing:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 860
    :goto_88
    iget-object v13, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v13}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v13

    iget-object v14, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    .line 861
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 863
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 864
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 865
    iput v10, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 866
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 867
    iget v14, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 869
    iget v15, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v15, v8, :cond_b5

    .line 870
    iget-object v15, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_pop_bottom_spacing:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_bd

    .line 872
    :cond_b5
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_pop_bottom_spacing:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 874
    :goto_bd
    iget-object v15, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v15}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v15

    iget-object v10, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom:I

    .line 875
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v15, v3

    add-int/2addr v15, v8

    .line 877
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 878
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 879
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 880
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 881
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v10, -0x2

    if-ne v0, v10, :cond_e8

    .line 883
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 887
    :cond_e8
    iget v10, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    move-object/from16 p3, v2

    const/4 v2, 0x3

    if-ne v10, v2, :cond_f9

    .line 888
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    const/4 v10, 0x0

    :goto_f6
    move-object/from16 p1, v3

    goto :goto_10d

    .line 890
    :cond_f9
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v10, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    sub-int/2addr v2, v10

    .line 891
    iget-object v10, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    goto :goto_f6

    .line 893
    :goto_10d
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v3

    if-ltz v3, :cond_118

    const/16 v17, 0x1

    goto :goto_11a

    :cond_118
    const/16 v17, 0x0

    :goto_11a
    if-eqz p2, :cond_1a5

    move/from16 v18, v3

    .line 897
    const-string v3, "barTopMargin"

    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 898
    const-string v3, "barBottomMargin"

    filled-new-array {v5, v9}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    .line 899
    const-string v3, "graduBottomMargin"

    filled-new-array {v11, v13}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    .line 900
    const-string v3, "popBottomMargin"

    filled-new-array {v14, v15}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 901
    const-string v3, "processHeight"

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    if-eqz v17, :cond_159

    .line 902
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_15f

    .line 903
    :cond_159
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_15f
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 902
    const-string v2, "processPadding"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v24

    .line 904
    const-string v0, "processBottomMargin"

    filled-new-array {v8, v10}, [I

    move-result-object v2

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v25

    .line 905
    filled-new-array/range {v19 .. v25}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 907
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 908
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda0;

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    move-object v3, v7

    move-object v4, v12

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Z)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 926
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1a5
    move-object/from16 v5, p1

    move-object/from16 v0, p3

    move/from16 v18, v3

    move-object v3, v7

    move-object v4, v12

    move/from16 v16, v17

    const/4 v7, 0x0

    .line 928
    invoke-virtual {v0, v7, v6, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 929
    iget-object v6, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    invoke-virtual {v3, v7, v7, v7, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 932
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    invoke-virtual {v4, v7, v7, v7, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 935
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 938
    invoke-virtual {v5, v7, v7, v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 939
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v16, :cond_1de

    .line 941
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v7, v7, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 943
    :cond_1de
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateSettingItemsLayout(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 657
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 658
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemLayoutId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 659
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setupEntryView()V

    .line 660
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setPopupOptionsControl(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V

    .line 661
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 662
    const-string v3, "key_metering_mode"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 663
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v3, :cond_4c

    .line 664
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAutoSwitchIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGradationViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3, v4, v5}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setScroller(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/FrameLayout;)V

    goto :goto_51

    .line 666
    :cond_4c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    invoke-interface {v0, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setGraduationView(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;)V

    .line 670
    :cond_51
    :goto_51
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setItemClickCallBack(Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;)V

    .line 671
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5b

    .line 672
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    :cond_5b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 677
    :cond_66
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    .line 678
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateEntryViewData()V

    .line 679
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->restoreAllItemsColor()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public hide(Z)V
    .registers 4

    .line 1344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1b

    .line 1345
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideRunnable:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;->setSendNotify(Z)Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1346
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v1, "value_pro_setting_bar_ui_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1349
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1350
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    :cond_2a
    return-void
.end method

.method public hideSeekBarIfNeed(Z)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public inflateViewIfNeed(I)V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public isCaptureButtonEnable()Z
    .registers 1

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_9

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSeekBarShowing()Z
    .registers 2

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationOrScrollerShowing()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureChanged(Ljava/lang/String;)V
    .registers 2

    .line 1432
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateIconBG(Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;ZZ)V
    .registers 7

    const/4 v0, 0x0

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 167
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    const-wide/16 v0, 0xbb8

    const/4 p1, 0x1

    if-eqz p2, :cond_52

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationOrScrollerShowing()Z

    move-result p2

    if-eqz p2, :cond_33

    if-nez p3, :cond_33

    .line 172
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    return-void

    .line 174
    :cond_33
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIState:I

    if-nez p2, :cond_3c

    .line 175
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->showSeekBar(I)V

    .line 177
    :cond_3c
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    .line 178
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 p3, 0x66

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_52
    if-eqz p3, :cond_65

    .line 183
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_65
    return-void
.end method

.method public onItemClickBefore(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 160
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public onItemValueChange(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 468
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    return-void
.end method

.method public onPictureSizeChanged(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_8b

    .line 494
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 496
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez v0, :cond_8b

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 497
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureSizeChanged pictureSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 499
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    .line 500
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_54

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 501
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 503
    :cond_54
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_81

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 504
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->bottom_bar_margin_offset_16_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 505
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_root_bottom_margin_offset_16_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerBottomMarginChanged:I

    .line 507
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8b
    return-void
.end method

.method public onPopupBarActionDown()V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPopupBarActionUp()V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPopupBarDissmiss(Z)V
    .registers 4

    if-eqz p1, :cond_17

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x59

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v1, "value_pro_seek_ui_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_17
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    return-void
.end method

.method public onPopupBarShow()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_pro_seek_ui_on"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 474
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeight:I

    .line 476
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mBottomBarHeightChanged:I

    .line 477
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    return-void
.end method

.method public onSeekBarActionDown()V
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onSeekBarActionUp(ZZZ)V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    if-eqz p1, :cond_12

    const-wide/16 v0, 0xbb8

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x0

    :goto_14
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public resetCapturingUI()V
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public seCaptureStopListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCaptureButtonEnable(Z)V
    .registers 2

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_7

    .line 563
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setCaptureState(Z)V
    .registers 2

    .line 1335
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsCapturing:Z

    return-void
.end method

.method public setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-void
.end method

.method public setGraduationViewEnable(Z)V
    .registers 3

    .line 1306
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_10

    .line 1307
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p0, :cond_17

    .line 1308
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 1311
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_17

    .line 1312
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_17
    return-void
.end method

.method public setPopSettingShow(Z)V
    .registers 2

    .line 1340
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public setSettingBarVisible(I)V
    .registers 4

    .line 1370
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mZoomScaling:Z

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 1373
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_2b

    .line 1374
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideRunnable:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-nez p1, :cond_25

    .line 1378
    const-string/jumbo p1, "value_pro_setting_bar_ui_on"

    goto :goto_28

    :cond_25
    const-string/jumbo p1, "value_pro_setting_bar_ui_off"

    .line 1377
    :goto_28
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 443
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 444
    const-string v0, "key_instant_zoom_ui_state"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startCapturingBeginAnim(J)V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->startDrawProgress(J)V

    :cond_16
    return-void
.end method

.method public startCapturingEndAnim()V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 542
    :cond_9
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 539
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mCapturingEndAnim or mCaptureStopButton is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopCapturingBeginAnim()V
    .registers 1

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz p0, :cond_7

    .line 532
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->stopDrawProgress()V

    :cond_7
    return-void
.end method

.method public stopCapturingEndAnim()V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 550
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mCapturingEndAnim drawable is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_c
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_pro_exposure_bg_capturing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz p0, :cond_1f

    const/16 v0, 0x8

    .line 556
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->doResetCapturingUI()V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_c

    const/16 v1, 0x59

    .line 288
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_25

    .line 291
    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v2, "value_pro_seek_ui_off"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_instant_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 294
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootUI:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupRootUI:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_40

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 307
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    return-void
.end method

.method protected updateProfessionalLayoutParams(IZZ)V
    .registers 6

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 596
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateRootRectHover(IZZ)V

    goto :goto_f

    .line 598
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateRootRect(I)V

    .line 600
    :goto_f
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalItemsLayoutParams(I)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v0, :cond_1b

    .line 602
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopup(II)V

    :cond_1b
    const/4 v0, 0x1

    if-nez p3, :cond_1f

    move p2, v0

    .line 608
    :cond_1f
    iget p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-eq p3, v0, :cond_29

    const/4 v0, 0x4

    if-eq p3, v0, :cond_29

    const/4 v0, 0x5

    if-ne p3, v0, :cond_2a

    :cond_29
    const/4 p2, 0x0

    .line 613
    :cond_2a
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p3, :cond_31

    .line 614
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 616
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_38

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_38
    return-void
.end method

.method public updateUIState(IZ)V
    .registers 4

    .line 449
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIState:I

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 p2, 0x3

    if-eq p1, p2, :cond_e

    return-void

    .line 459
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->disable()V

    return-void

    .line 456
    :cond_12
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hide(Z)V

    return-void

    .line 452
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->show()V

    return-void
.end method

.method public updateZoomState(ZZ)V
    .registers 6

    .line 1319
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateZoomState: isPopSettingShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " scaling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mInstantZoomShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsCapturing\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1321
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mZoomScaling:Z

    if-eqz p2, :cond_46

    .line 1323
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    .line 1324
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hide(Z)V

    return-void

    .line 1326
    :cond_42
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->disable()V

    return-void

    .line 1328
    :cond_46
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInstantZoomShow:Z

    if-nez p2, :cond_53

    if-nez p1, :cond_53

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsCapturing:Z

    if-nez p1, :cond_53

    .line 1329
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->show()V

    :cond_53
    return-void
.end method
