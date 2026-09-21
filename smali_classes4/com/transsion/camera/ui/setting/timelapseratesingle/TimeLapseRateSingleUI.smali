.class public Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final MSG_SELECT_INDICATOR:I = 0x4

.field private static final MSG_SHOW_AUTO_SELECTED_INFO:I = 0x1

.field private static final MSG_SHOW_HOLD_STEADY_INFO:I = 0x2

.field private static final MSG_UPDATE_TEXT_COLOR:I = 0x3

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_OFFSET:I


# instance fields
.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/widget/FrameLayout;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIndicator:Landroid/widget/TextView;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mIsPopSettingShow:Z

.field private mIsRecord:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollBarShown:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

.field private mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$TrR8qhRM_Zt7KCvFUIKGg7i72Fk(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wH0C_aKSdTCyBxXGOlFJ2MP4FOM(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 311
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 312
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperateActionControl(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicator(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabAdapter(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeLapseTab(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScrollBarShown(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monValueChanged(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetItemViewScale(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->resetItemViewScale(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAutoSelectedInfo(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showAutoSelectedInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHoldSteadyInfo(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showHoldSteadyInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextColor(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->updateTextColor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseRateSingleUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 59
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;

    invoke-direct {v1, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    .line 69
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    .line 75
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    .line 128
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    .line 129
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 130
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 131
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 132
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method private fadeIn()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 467
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    return-void
.end method

.method private fadeOut()V
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->time_lapse_select_view_height:I

    .line 493
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$3;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 516
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideScrollBar()V
    .registers 3

    .line 442
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-nez v0, :cond_5

    goto :goto_35

    .line 443
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_11

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x106

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_23

    .line 446
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->fadeOut()V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 458
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    if-nez p0, :cond_35

    .line 459
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    :cond_35
    :goto_35
    return-void
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .registers 3

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_5

    goto :goto_d

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_e

    :goto_d
    return-void

    .line 209
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_37

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result p1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_37

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showScrollBar()V

    return-void

    .line 215
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    return-void
.end method

.method private onValueChanged(Ljava/lang/String;)V
    .registers 4

    .line 520
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 525
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    const-string p1, "0"

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 534
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_4b

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_4b
    return-void
.end method

.method private resetItemViewScale(Landroid/view/View;)V
    .registers 2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 608
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 609
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private showAutoSelectedInfo()V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->video_time_lapse_auto_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_16
    return-void
.end method

.method private showHoldSteadyInfo()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->please_hold_camera_steady:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_16
    return-void
.end method

.method private showScrollBar()V
    .registers 4

    .line 418
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_9

    goto :goto_32

    .line 421
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 422
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->fadeIn()V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_32
    :goto_32
    return-void
.end method

.method private updateTextColor()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_36

    :cond_5
    const/4 v0, 0x0

    .line 151
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$color;->primary_highlight_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 162
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    sget v0, Lcom/transsion/camera/R$layout;->time_lapse_single_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 165
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 166
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/camera/R$id;->time_lapse_level_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/camera/R$id;->time_lapse_tab:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 172
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 174
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_79

    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p1, :cond_79

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 p3, 0xb4

    if-ne p2, p3, :cond_6b

    int-to-float p2, p2

    goto :goto_6c

    :cond_6b
    const/4 p2, 0x0

    :goto_6c
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-ne p2, p3, :cond_76

    move v1, p2

    :cond_76
    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onOrientationChanged(I)V

    .line 180
    :cond_79
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_94

    .line 183
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->time_lapse_select_view_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

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

    .line 341
    const-string p0, "key_time_lapse"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 241
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 244
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 248
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1c

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1c
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
    .registers 5

    if-eqz p1, :cond_94

    const/4 v0, 0x1

    if-eq p1, v0, :cond_94

    const/4 v1, 0x3

    if-eq p1, v1, :cond_94

    const/4 v1, 0x6

    if-eq p1, v1, :cond_94

    const/16 v1, 0x9

    if-eq p1, v1, :cond_94

    const/16 v1, 0x13

    if-eq p1, v1, :cond_94

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eq p1, v1, :cond_92

    const/16 v1, 0x20

    if-eq p1, v1, :cond_94

    const/16 v1, 0xf

    if-eq p1, v1, :cond_86

    const/16 v1, 0x10

    if-eq p1, v1, :cond_7e

    const/16 v1, 0x19

    if-eq p1, v1, :cond_53

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_43

    const/16 v1, 0xcf

    if-eq p1, v1, :cond_53

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_35

    goto :goto_7d

    .line 592
    :cond_35
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_7d

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    if-nez p0, :cond_7d

    .line 594
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 598
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_7d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    if-nez v0, :cond_7d

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    if-nez p0, :cond_7d

    .line 599
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 582
    :cond_53
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsPopSettingShow:Z

    .line 583
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_5e

    const/16 v0, 0x8

    .line 584
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :cond_5e
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScrollBarShown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-eqz p1, :cond_7d

    .line 588
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    :cond_7d
    :goto_7d
    return-void

    .line 577
    :cond_7e
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 572
    :cond_86
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    return-void

    .line 559
    :cond_92
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIsRecord:Z

    .line 568
    :cond_94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 569
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    .line 549
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    const/4 p0, 0x1

    return p0

    .line 552
    :cond_12
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 406
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    goto :goto_2b

    .line 409
    :cond_5
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 410
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p1, :cond_2b

    .line 411
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTabAdapter:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onOrientationChanged(I)V

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-ne p0, v1, :cond_27

    int-to-float p0, p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_2b
    :goto_2b
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

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 365
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 367
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 370
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_20

    .line 371
    const-string v0, "wide_camera"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 374
    :cond_20
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI-IA;)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_43

    .line 380
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_79

    .line 389
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_79
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    .line 400
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 229
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 258
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 260
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 263
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 264
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 267
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_23

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 276
    :cond_23
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 277
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 9

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 292
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 296
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 298
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2f

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->time_lapse_layout_hover_margin_bottom:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_39

    .line 302
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->time_lapse_layout_margin_bottom:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v1, v2, v1

    .line 306
    :goto_39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6b

    if-eqz p1, :cond_6b

    .line 307
    filled-new-array {v4, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 308
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 316
    :cond_6b
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 317
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
