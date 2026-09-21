.class public Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mControlPadding:I

.field protected mControlView:Landroid/widget/FrameLayout;

.field protected mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mControlViewContent:Landroid/view/ViewGroup;

.field protected mCurrentSelectStyle:Ljava/lang/String;

.field protected mCurrentSelectTabSwitch:Landroid/widget/LinearLayout;

.field protected mDefaultControlViewHeight:I

.field protected mDotsMarginBottom:I

.field protected mEffectRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mEffectSwitch:Landroid/widget/LinearLayout;

.field protected mEffectSwitchDot:Landroid/view/View;

.field protected mEffectSwitchText:Landroid/widget/TextView;

.field protected mFilterRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mFilterSwitch:Landroid/widget/LinearLayout;

.field protected mFilterSwitchDot:Landroid/view/View;

.field protected mFilterSwitchText:Landroid/widget/TextView;

.field protected mFrameRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mFrameSwitch:Landroid/widget/LinearLayout;

.field protected mFrameSwitchDot:Landroid/view/View;

.field protected mFrameSwitchText:Landroid/widget/TextView;

.field protected mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mSelected:Z

.field protected mSelectedColor:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateList:Landroid/content/res/ColorStateList;

.field private mStateListBlack:Landroid/content/res/ColorStateList;

.field protected mSupportCount:I

.field protected mUnSelectedColor:I

.field protected mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

.field protected mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

.field protected mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

.field protected final mVssSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            ">;"
        }
    .end annotation
.end field

.field protected mbSupportEffect:Z

.field protected mbSupportFilter:Z

.field protected mbSupportFrame:Z


# direct methods
.method public static synthetic $r8$lambda$4OUVJppJGDt9vvIpXeetLZplJVc(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5e9zDRgSkgmDMz2CLMxOGha27Jw(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HgMvccm3qM8K5NzYt9t5zvIQj4(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SVDtMJ2Sza3QhXnx21TwLLOpvyU(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$4(IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uxur_XyAuvIbmIxm8-sKvFORyQk(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$6(IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_yh7sQplA9HwYQEQJ29CoNzrKs(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initMainSwitchListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ku6DWNMd2SAk-_ECItkd7Jjsi6w(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$5(IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VidSigShockUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a1

    .line 111
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 112
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->NORMAL_STATE_SET:[I

    .line 115
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->sStates:[[I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    .line 71
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 101
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    .line 102
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    .line 103
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    .line 105
    const-string v0, "key_video_effect_style"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 9

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    .line 71
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 101
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    .line 102
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    .line 103
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    .line 105
    const-string v0, "key_video_effect_style"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "supportEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " supportFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_63

    .line 128
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    .line 129
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_63
    if-eqz p2, :cond_72

    .line 132
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 133
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_72
    if-eqz p3, :cond_81

    .line 136
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    .line 137
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 140
    :cond_81
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    .line 141
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    .line 142
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_23

    .line 685
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasNoEffectValueInStore()Z
    .registers 2

    .line 673
    const-string v0, "key_video_effect_style"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private hasNoFilterValueInStore()Z
    .registers 2

    .line 665
    const-string v0, "key_video_filter_style"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 669
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private hasNoFrameValueInStore()Z
    .registers 2

    .line 677
    const-string v0, "key_video_frame_style"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$adjustControlView$4(IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 16

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 732
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    .line 733
    :goto_13
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :cond_1d
    add-int/2addr v0, p2

    .line 735
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, p2

    .line 736
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p2

    .line 737
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 738
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 739
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 740
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 v3, 0x1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void

    :cond_40
    move v4, p3

    move p4, p5

    move p5, p6

    .line 743
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 p1, 0x0

    iget p3, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p2, v4

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void
.end method

.method private synthetic lambda$adjustControlView$5(IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 16

    .line 751
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 752
    :goto_d
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 753
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_1d

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_1d
    add-int/2addr v0, p2

    .line 756
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, p2

    .line 757
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, p2

    .line 758
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 759
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 760
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 761
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 v3, 0x1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void

    :cond_40
    move v4, p3

    move p4, p5

    move p5, p6

    .line 764
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 p1, 0x0

    iget p3, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p2, v4

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void
.end method

.method private synthetic lambda$adjustControlView$6(IIIIIILandroid/view/ViewGroup$LayoutParams;)V
    .registers 16

    .line 772
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 773
    :goto_d
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 774
    :cond_17
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, p2

    .line 777
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, p2

    .line 778
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p2

    .line 779
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 780
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 781
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 782
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 v3, 0x1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void

    :cond_40
    move v4, p3

    move p4, p5

    move p5, p6

    .line 785
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    const/4 p1, 0x0

    iget p3, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p2, v4

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSeekBarLayout(ZIIII)V

    return-void
.end method

.method private synthetic lambda$initMainSwitchListener$0(Landroid/view/View;)V
    .registers 3

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 268
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->resetTabState()V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$1(Landroid/view/View;)V
    .registers 2

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 286
    :cond_9
    const-string p1, "key_video_filter_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$2(Landroid/view/View;)V
    .registers 2

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 296
    :cond_9
    const-string p1, "key_video_effect_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$3(Landroid/view/View;)V
    .registers 2

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 306
    :cond_9
    const-string p1, "key_video_frame_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private selectFilterTab(Ljava/lang/String;)V
    .registers 10

    .line 576
    const-string v0, "key_video_filter_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 577
    const-string v1, "key_video_effect_style"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 578
    const-string v2, "key_video_frame_style"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 580
    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 581
    const-string v4, "sans-serif"

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 582
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    if-eqz v5, :cond_68

    iget-boolean v7, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v7, :cond_68

    .line 583
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    .line 584
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_53

    if-eqz v0, :cond_53

    .line 585
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->showSelectTabAnim(Landroid/widget/FrameLayout;)V

    .line 586
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_44

    .line 587
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 589
    :cond_44
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_4b

    .line 590
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 592
    :cond_4b
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz v5, :cond_61

    .line 593
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_61

    .line 596
    :cond_53
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v0, :cond_5d

    move v7, v3

    goto :goto_5e

    :cond_5d
    move v7, v6

    :goto_5e
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    :goto_61
    if-eqz v0, :cond_68

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->showFilterSeekBar()V

    .line 603
    :cond_68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_af

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v5, :cond_af

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 605
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_9a

    if-eqz v1, :cond_9a

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->showSelectTabAnim(Landroid/widget/FrameLayout;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_8b

    .line 608
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 610
    :cond_8b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_92

    .line 611
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 613
    :cond_92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_a8

    .line 614
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_a8

    .line 617
    :cond_9a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v1, :cond_a4

    move v5, v3

    goto :goto_a5

    :cond_a4
    move v5, v6

    :goto_a5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a8
    :goto_a8
    if-eqz v1, :cond_af

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->hideFilterSeekBar()V

    .line 624
    :cond_af
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f5

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v1, :cond_f5

    .line 625
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 626
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_e1

    if-eqz p1, :cond_e1

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->showSelectTabAnim(Landroid/widget/FrameLayout;)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_d2

    .line 629
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 631
    :cond_d2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_d9

    .line 632
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 634
    :cond_d9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz v0, :cond_ee

    .line 635
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_ee

    .line 638
    :cond_e1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_ea

    goto :goto_eb

    :cond_ea
    move v3, v6

    :goto_eb
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_ee
    :goto_ee
    if-eqz p1, :cond_f5

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->hideFilterSeekBar()V

    :cond_f5
    return-void
.end method

.method private showSelectTabAnim(Landroid/widget/FrameLayout;)V
    .registers 5

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 805
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 806
    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 810
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMainSwitchStateIfNeed()V
    .registers 5

    .line 647
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto/16 :goto_95

    .line 650
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_30

    .line 651
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v3

    if-eqz v3, :cond_2c

    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 653
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_52

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-nez v3, :cond_52

    .line 654
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v1

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 656
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_74

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_74

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-nez v3, :cond_74

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_74

    .line 657
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v3

    if-eqz v3, :cond_70

    move v3, v1

    goto :goto_71

    :cond_70
    move v3, v2

    :goto_71
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 659
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_95

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-nez v3, :cond_95

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_95

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_95

    .line 660
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result p0

    if-eqz p0, :cond_91

    goto :goto_92

    :cond_91
    move v1, v2

    :goto_92
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_95
    :goto_95
    return-void
.end method

.method private updateTabDotState(ZLjava/lang/String;)V
    .registers 10

    .line 514
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto/16 :goto_82

    .line 517
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v2, "key_video_filter_style"

    const-string v3, "key_video_frame_style"

    const-string v4, "key_video_effect_style"

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_84

    :goto_19
    move v1, v6

    goto :goto_33

    :sswitch_1b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_19

    :cond_22
    const/4 v1, 0x2

    goto :goto_33

    :sswitch_24
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto :goto_19

    :sswitch_2b
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    goto :goto_19

    :cond_32
    move v1, v5

    :cond_33
    :goto_33
    const/4 p2, 0x4

    packed-switch v1, :pswitch_data_92

    goto :goto_82

    .line 519
    :pswitch_38
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_82

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v5, p2

    :goto_42
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 533
    :pswitch_51
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_82

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v5, p2

    :goto_5b
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 526
    :pswitch_6a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_82

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_73

    goto :goto_74

    :cond_73
    move v5, p2

    :goto_74
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_82
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        -0x4f42cb59 -> :sswitch_2b
        0x9a484bb -> :sswitch_24
        0x46cdfd4e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_51
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public adjustControlView(IIIII)V
    .registers 16

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    goto/16 :goto_62

    .line 720
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/transsion/camera/R$dimen;->video_sight_shock_support_one_seek_bar_bottom_margin:I

    .line 721
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 723
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    .line 724
    iput p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    .line 725
    iput p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    .line 726
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_39

    .line 727
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda3;

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 747
    :cond_39
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_4e

    .line 748
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda4;

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 768
    :cond_4e
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_62

    .line 769
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda5;

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IIIIIILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_62
    :goto_62
    return-void
.end method

.method protected getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1a

    .line 693
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method protected initMainSwitchListener()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method protected initTabColor(Landroid/view/View;)V
    .registers 6

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->video_sight_shock_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_unselected_screen_light_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 316
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->sStates:[[I

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mUnSelectedColor:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    .line 317
    new-instance v0, Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelectedColor:I

    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method

.method protected initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 16

    .line 196
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_effect:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    .line 197
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->effect_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 198
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_effect_dot:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    .line 199
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_effect_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 202
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_effect_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 203
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_65

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_65
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_6e

    .line 208
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 209
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_6e
    return-void
.end method

.method protected initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 16

    .line 178
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_filter:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    .line 179
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->filter_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 180
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_filter_dot:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    .line 181
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_filter_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_filter_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 185
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_65

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_65
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_6e

    .line 190
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 191
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_6e
    return-void
.end method

.method protected initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 16

    .line 220
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_frame:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    .line 221
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->frame_rotate_layout:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 222
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_frame_dot:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    .line 223
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/camera/R$id;->video_frame_text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$color;->video_sight_shock_item_selected_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 226
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_frame_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 227
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_65

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_65
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_6e

    .line 232
    invoke-virtual {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 233
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_6e
    return-void
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 15

    .line 148
    sget v0, Lcom/transsion/camera/R$layout;->video_sight_shock_control_panel_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 149
    sget v0, Lcom/transsion/camera/R$id;->video_sight_shock_control:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    .line 150
    sget v0, Lcom/transsion/camera/R$id;->control_view_container:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 151
    sget v0, Lcom/transsion/camera/R$id;->control_view_content:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContent:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    if-eqz v0, :cond_38

    .line 154
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 156
    :cond_38
    iget-boolean p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/16 p1, 0x8

    if-nez p0, :cond_49

    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/camera/R$id;->video_filter:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_49
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz p0, :cond_50

    .line 159
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 161
    :cond_50
    iget-boolean p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-nez p0, :cond_5f

    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/camera/R$id;->video_effect:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_5f
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_66

    .line 164
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 166
    :cond_66
    iget-boolean p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-nez p0, :cond_75

    iget-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/camera/R$id;->video_frame:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_75
    sget p0, Lcom/transsion/camera/R$id;->video_sight_shock_switch:I

    invoke-virtual {v3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p0, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 169
    iget p2, v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    if-ne p2, v1, :cond_86

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_86
    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initTabColor(Landroid/view/View;)V

    .line 174
    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initViewListenerIfNeed()V

    return-void
.end method

.method protected initViewListenerIfNeed()V
    .registers 5

    .line 276
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_46

    .line 279
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initMainSwitchListener()V

    .line 281
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_20

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 291
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_33

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 301
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_46

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {p0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public isSeekBarZero(Ljava/lang/String;Z)V
    .registers 3

    xor-int/lit8 p2, p2, 0x1

    .line 548
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public onInitialFinished(ZLjava/lang/String;)V
    .registers 3

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    return-void
.end method

.method public onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 4

    .line 509
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateMainSwitchStateIfNeed()V

    .line 510
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mItemStyle:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    if-eqz v0, :cond_7

    .line 482
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onOrientationChanged(I)V

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v0, :cond_e

    .line 486
    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->onOrientationChanged(I)V

    .line 489
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_15

    .line 490
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onOrientationChanged(I)V

    :cond_15
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    if-eqz v0, :cond_7

    .line 497
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onScreenFormChanged(IZ)V

    .line 499
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v0, :cond_e

    .line 500
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->onScreenFormChanged(IZ)V

    .line 502
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_15

    .line 503
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onScreenFormChanged(IZ)V

    :cond_15
    return-void
.end method

.method public recoverSettingValueAndUI()V
    .registers 8

    .line 446
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x1

    const-string v2, "on"

    const-string v3, "off"

    const/4 v4, 0x0

    if-eqz v0, :cond_3b

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v0

    const-string v5, "key_video_filter_style"

    if-eqz v0, :cond_20

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->hideFilterSeekBar()V

    .line 450
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_3b

    .line 451
    :cond_20
    const-string v0, "key_video_filter"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 452
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 457
    :cond_3b
    :goto_3b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_6b

    .line 458
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v0

    const-string v5, "key_video_frame_style"

    if-eqz v0, :cond_50

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    .line 460
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_6b

    .line 461
    :cond_50
    const-string v0, "key_video_frame"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 462
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 467
    :cond_6b
    :goto_6b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_9b

    .line 468
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v0

    const-string v5, "key_video_effect_style"

    if-eqz v0, :cond_80

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 470
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_9b

    .line 471
    :cond_80
    const-string v0, "key_video_effect"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 472
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 476
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method protected resetTabState()V
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->hideFilterSeekBar()V

    .line 239
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x4

    const-string v2, "0"

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    .line 240
    new-instance v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    const-string v4, "100"

    invoke-direct {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v4, "key_video_filter_style"

    invoke-virtual {p0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 243
    const-string v0, "key_video_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "filter_default"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_40
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    const-string v4, "off"

    if-eqz v0, :cond_6c

    .line 249
    const-string v0, "key_video_effect_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 250
    const-string v0, "key_video_effect"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_6c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_96

    .line 256
    const-string v0, "key_video_frame_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 257
    const-string v0, "key_video_frame"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_96
    return-void
.end method

.method public resetUIState(Ljava/lang/String;)V
    .registers 4

    .line 552
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    const-string v0, "filter_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->hideFilterSeekBar()V

    .line 557
    const-string v0, "key_video_filter_style"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 560
    :cond_22
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_33

    const-string v0, "effect_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 564
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_44

    const-string v0, "frame_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->recoverPanelToDefault(Z)V

    :cond_44
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    if-eqz p0, :cond_7

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    :cond_7
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;",
            "Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;",
            ")V"
        }
    .end annotation

    .line 697
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 698
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_4

    :cond_1f
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 422
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->setEnable(Z)V

    .line 425
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_12

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->setEnable(Z)V

    .line 428
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_1b

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->setEnable(Z)V

    :cond_1b
    return-void
.end method

.method protected setVideoSightMode(Ljava/lang/String;)V
    .registers 2

    .line 570
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 571
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateMainSwitchStateIfNeed()V

    .line 572
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->selectFilterTab(Ljava/lang/String;)V

    return-void
.end method

.method protected updateControlViewLayout(II)V
    .registers 14

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 323
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateSwitchTextOrientation(I)V

    const/4 v2, 0x1

    const/16 v3, 0x33

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/16 v10, 0xb4

    if-ne p1, v2, :cond_b8

    const/16 v2, 0x168

    if-eqz p2, :cond_8c

    if-eq p2, v9, :cond_6b

    if-eq p2, v10, :cond_4c

    if-eq p2, v8, :cond_2b

    if-eq p2, v2, :cond_8c

    goto/16 :goto_aa

    :cond_2b
    const/16 v3, 0x35

    .line 337
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 338
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_top_90:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 339
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left_90:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_aa

    .line 332
    :cond_4c
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 333
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_top_0:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 334
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left_0:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_aa

    :cond_6b
    const/16 v3, 0x53

    .line 327
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_top_90:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 329
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left_90:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_aa

    .line 343
    :cond_8c
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_top_0:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 345
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left_0:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 349
    :goto_aa
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v7, p2, 0x10e

    rem-int/2addr v7, v2

    invoke-virtual {v3, v7, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 350
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v9, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_12b

    :cond_b8
    const/4 v2, 0x4

    if-ne p1, v2, :cond_df

    .line 352
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 354
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 355
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v9, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_12b

    :cond_df
    const/4 v2, 0x5

    if-ne p1, v2, :cond_106

    .line 358
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 361
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v8, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_12b

    :cond_106
    const/16 v2, 0x50

    .line 363
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 364
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_switch_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 365
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_panel_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 366
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 368
    :goto_12b
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDotsMarginBottom:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mDefaultControlViewHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlPadding:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->adjustControlView(IIIII)V

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_175

    if-nez p1, :cond_175

    .line 372
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_156

    .line 373
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz p2, :cond_152

    if-ne p2, v10, :cond_150

    goto :goto_152

    :cond_150
    move v3, v2

    goto :goto_153

    :cond_152
    :goto_152
    int-to-float v3, p2

    :goto_153
    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 375
    :cond_156
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v1, :cond_167

    .line 376
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz p2, :cond_163

    if-ne p2, v10, :cond_161

    goto :goto_163

    :cond_161
    move v3, v2

    goto :goto_164

    :cond_163
    :goto_163
    int-to-float v3, p2

    :goto_164
    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 378
    :cond_167
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v1, :cond_175

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz p2, :cond_171

    if-ne p2, v10, :cond_172

    :cond_171
    int-to-float v2, p2

    :cond_172
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    :cond_175
    return-void
.end method

.method public updateIndicatorRingScreenLight(Z)V
    .registers 4

    .line 400
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_25

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_16

    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_20

    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background_screen_light:I

    goto :goto_22

    :cond_20
    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background:I

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 406
    :cond_25
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_4a

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_39

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_3b

    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_45

    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background_screen_light:I

    goto :goto_47

    :cond_45
    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background:I

    :goto_47
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 412
    :cond_4a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_6f

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_5e

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_60

    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_6a

    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background_screen_light:I

    goto :goto_6c

    :cond_6a
    sget v1, Lcom/transsion/camera/R$drawable;->vss_tab_dot_background:I

    :goto_6c
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 418
    :cond_6f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_76

    sget p1, Lcom/transsion/camera/R$drawable;->vss_tab_control_switch_screen_light:I

    goto :goto_78

    :cond_76
    sget p1, Lcom/transsion/camera/R$drawable;->vss_tab_control_switch:I

    :goto_78
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz p0, :cond_7

    .line 795
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public updateRecyclerViewScrollState(I)V
    .registers 3

    .line 434
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateRecyclerViewScrollState(I)V

    .line 437
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->updateRecyclerViewScrollState(I)V

    .line 440
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_1b

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updateRecyclerViewScrollState(I)V

    :cond_1b
    return-void
.end method

.method public updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V
    .registers 18

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    if-eqz v0, :cond_11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 386
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    .line 388
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v0, :cond_22

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 389
    invoke-interface/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    .line 391
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    if-eqz v0, :cond_33

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 392
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    :cond_33
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p3, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onScreenFormChanged(IZ)V

    .line 395
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateControlViewLayout(II)V

    return-void
.end method

.method protected updateSwitchTextOrientation(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/16 p1, 0x5a

    goto :goto_8

    :cond_7
    move p1, v1

    .line 705
    :goto_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_f

    .line 706
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 708
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_16

    .line 709
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 711
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_1d

    .line 712
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1d
    return-void
.end method
