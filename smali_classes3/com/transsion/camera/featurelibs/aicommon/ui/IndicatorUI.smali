.class public Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

.field private mCaptureShot:Z

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFeature:Ljava/lang/String;

.field private mFragmentShow:Z

.field private mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field private mGuideBubbleShow:Z

.field private mGuideCouldShow:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorAnimator:Landroid/animation/AnimatorSet;

.field private mIndicatorBackground:Landroid/widget/ImageView;

.field private mIndicatorCount:Landroid/widget/TextView;

.field private mIndicatorEntry:Landroid/widget/ImageView;

.field private mIndicatorEntryRoot:Landroid/view/View;

.field private mIndicatorExclamation:Landroid/widget/ImageView;

.field private final mIndicatorHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;

.field private mIndicatorRoot:Landroid/view/View;

.field private mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

.field private mPopSettingShow:Z

.field private mPopWindowShow:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mPreviewShot:Z

.field private mPreviewShotContainer:Landroidx/cardview/widget/CardView;

.field private mPreviewShotImage:Landroid/widget/ImageView;

.field private mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

.field private final mRequestListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;

.field private volatile mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

.field private mRootView:Landroid/view/ViewGroup;

.field private mShotAnimator:Landroid/animation/AnimatorSet;

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$4VHoKtb42oIzKlMqmjqeMA-BZIM(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Landroid/widget/FrameLayout$LayoutParams;IZLandroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->lambda$updateLayout$2(Landroid/widget/FrameLayout$LayoutParams;IZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENwl3Xf4Ty54SUXAXTsGbuVJ2ko(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UXQtUbB43JqlLIX-4v5lko1PTlQ(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->lambda$resume$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sm9Os36wx8_Nro5nqJ2hFLE1Gh0(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorEntryRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewShotImage(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRequestStatusInfo(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartShotAnimation(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->startShotAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIndicator(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicator(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreviewShot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updatePreviewShot()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 166
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Ljava/lang/String;)V
    .registers 5

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 164
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    .line 171
    new-instance p1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;

    .line 197
    new-instance p1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 190
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFeature:Ljava/lang/String;

    .line 191
    new-instance p1, Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-direct {p1, p3}, Lcom/transsion/camera/app/common/ai/AIManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    .line 192
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 193
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;

    .line 194
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IndicatorUI_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "key_ai_art_museum"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    const-string p3, "AIArt"

    goto :goto_56

    :cond_54
    const-string p3, "AIGC"

    :goto_56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private cancelIndicatorAnimation()V
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_f
    return-void
.end method

.method private cancelShotAnimation()V
    .registers 2

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mShotAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mShotAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method private hideIndicatorGuideIfNeeded()V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    if-eqz v0, :cond_13

    .line 407
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IMasterGuideControl;->hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideIndicatorGuide"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private initView()V
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRootView:Landroid/view/ViewGroup;

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_indicator_layout:I

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    .line 419
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_entry_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_entry_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorBackground:Landroid/widget/ImageView;

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorCount:Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_exclamation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorExclamation:Landroid/widget/ImageView;

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntry:Landroid/widget/ImageView;

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_preview_shot_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_indicator_preview_shot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotImage:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorBackground()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    .line 435
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1c

    .line 438
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1c

    .line 441
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showRequestFragment"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showRequestFragment()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private synthetic lambda$resume$0()V
    .registers 2

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    return-void
.end method

.method private synthetic lambda$updateLayout$2(Landroid/widget/FrameLayout$LayoutParams;IZLandroid/animation/ValueAnimator;)V
    .registers 7

    .line 529
    const-string v0, "processBottomMargin"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 530
    const-string p2, "processHeight"

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 531
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    const-string p1, "processPadding"

    if-eqz p3, :cond_41

    .line 534
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result p2

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p2, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 537
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private showIndicatorGuideIfNeeded()V
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIndicatorGuideIfNeeded mCaptureShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mCaptureShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGuideCouldShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGuideBubbleShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideBubbleShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFragmentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFragmentShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPopWindowShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPopSettingShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIndicatorRoot(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIndicatorEntryRoot(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mCaptureShot:Z

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideBubbleShow:Z

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFragmentShow:Z

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFeature:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->showGuide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 391
    new-instance v1, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    .line 392
    const-string v2, " key_icon_bubble_guide_ui "

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setType(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_process_master_guide_margin_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setLeftMargin(I)V

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_process_master_guide_margin_bottom_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setBottomMargin(I)V

    .line 395
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$array;->ai_process_master_guide_ui_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setDescription([Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMasterGuideUIBean:Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IMasterGuideControl;->showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->increase(Ljava/lang/String;)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showIndicatorGuide"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_e7
    return-void
.end method

.method private showRequestFragment()V
    .registers 5

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    const-string v1, "review_fragment"

    const-string v2, "ai"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v1, "ai_feature"

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$anim;->ai_activity_anim_in:I

    const/4 v3, 0x0

    .line 622
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 621
    invoke-interface {v1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private startIndicatorAnimation(Z)V
    .registers 15

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelIndicatorAnimation()V

    .line 322
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3f0f5c29    # 0.56f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v1, 0x3f59999a    # 0.85f

    if-eqz p1, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    if-eqz p1, :cond_1e

    move v1, v4

    .line 327
    :cond_1e
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v9, 0x1

    aput v1, v7, v9

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v10, 0x12c

    .line 328
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 329
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v6, [F

    aput v2, v12, v8

    aput v1, v12, v9

    invoke-static {v5, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_52

    move v2, v0

    goto :goto_53

    :cond_52
    move v2, v4

    :goto_53
    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    move v4, v0

    .line 337
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    aput v2, v7, v8

    aput v4, v7, v9

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 339
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    .line 342
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v1, v4, v9

    aput-object v0, v4, v6

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startShotAnimation()V
    .registers 14

    .line 652
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelShotAnimation()V

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_145

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    if-nez v0, :cond_15

    goto/16 :goto_145

    .line 660
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 661
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, 0x2

    .line 663
    new-array v3, v2, [I

    .line 664
    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 666
    aget v5, v3, v4

    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    add-int/2addr v5, v6

    const/4 v6, 0x1

    .line 667
    aget v3, v3, v6

    iget-object v7, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v2

    add-int/2addr v3, v7

    sub-int v7, v5, v0

    sub-int v8, v3, v1

    .line 672
    iget-object v9, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startShotAnimation startX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startY: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endX: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endY: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    const v3, 0x3f19999a    # 0.6f

    const v5, 0x3ea3d70a    # 0.32f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v1, v3, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 676
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v5, v7

    new-array v7, v2, [F

    const/4 v9, 0x0

    aput v9, v7, v4

    aput v5, v7, v6

    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v10, 0x190

    .line 677
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 678
    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    int-to-float v7, v8

    new-array v8, v2, [F

    aput v9, v8, v4

    aput v7, v8, v6

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 680
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 681
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 683
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    fill-array-data v8, :array_172

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 684
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 685
    invoke-virtual {v7, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 686
    iget-object v7, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v2, [F

    fill-array-data v12, :array_17a

    invoke-static {v7, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 687
    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 688
    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_indicator_preview_shot_container_end_radius:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 692
    iget-object v8, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    new-array v10, v2, [F

    aput v9, v10, v4

    aput v0, v10, v6

    const-string v0, "radius"

    invoke-static {v8, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x12c

    .line 693
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 694
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 696
    iget-object v10, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    fill-array-data v12, :array_182

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 697
    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 698
    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mShotAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x6

    .line 701
    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v2

    const/4 v1, 0x3

    aput-object v7, v9, v1

    const/4 v1, 0x4

    aput-object v0, v9, v1

    const/4 v0, 0x5

    aput-object v10, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mShotAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mShotAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 655
    :cond_145
    :goto_145
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShotAnimation failed! mPreviewRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIndicatorRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewShotContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_172
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_17a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_182
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateIndicator(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 8

    .line 278
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->processingSize()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v0, :cond_62

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->queuingSize()I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_62

    .line 297
    :cond_12
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->currentDayFailedSize()I

    move-result p1

    if-lez p1, :cond_49

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelIndicatorAnimation()V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntry:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_fail:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorExclamation:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    return-void

    .line 309
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_55

    .line 310
    invoke-direct {p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->startIndicatorAnimation(Z)V

    goto :goto_5e

    .line 312
    :cond_55
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelIndicatorAnimation()V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :goto_5e
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->hideIndicatorGuideIfNeeded()V

    return-void

    .line 279
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->processingSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->queuingSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorCount:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mLowLight:Z

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/camera/featurelibs/aicommon/R$color;->ai_indicator_low_light_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_84

    :cond_83
    const/4 v4, -0x1

    :goto_84
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntry:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mLowLight:Z

    if-eqz v4, :cond_90

    .line 282
    sget v4, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_normal_low_light:I

    goto :goto_92

    .line 283
    :cond_90
    sget v4, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_normal:I

    .line 281
    :goto_92
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->processingSize()I

    move-result p1

    if-lez p1, :cond_ac

    iget-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShot:Z

    if-eqz p1, :cond_ac

    const/4 p1, 0x1

    .line 285
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->startIndicatorAnimation(Z)V

    goto :goto_c3

    .line 287
    :cond_ac
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelIndicatorAnimation()V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_c3
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorExclamation:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    return-void
.end method

.method private updateIndicatorBackground()V
    .registers 5

    .line 559
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mLowLight:Z

    if-eqz v0, :cond_19

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$color;->ai_indicator_low_light_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->setProgressBackgroundColor(I)V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorBackground:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_background_low_light:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 563
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mProgressView:Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$color;->ai_progress_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->setProgressBackgroundColor(I)V

    .line 564
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_61

    .line 566
    const-string v0, "key_aigc_effect_2"

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFeature:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 567
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_background_dark:I

    goto :goto_5b

    .line 569
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    const-string v1, "1:1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 572
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_59

    .line 575
    :cond_56
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_background_light:I

    goto :goto_5b

    .line 573
    :cond_59
    :goto_59
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_background_dark:I

    .line 578
    :goto_5b
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 580
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorBackground:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_indicator_background_dark:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateIndicatorRoot(Z)V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIndicatorRoot show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_1f

    :cond_1d
    const/16 p1, 0x8

    :goto_1f
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateLayout(Z)V
    .registers 11

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-nez v0, :cond_a

    goto/16 :goto_e2

    .line 490
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    .line 493
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x50

    .line 494
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 496
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 498
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 499
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ne v3, v1, :cond_2c

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 506
    :cond_2c
    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v1, v5, :cond_3a

    .line 507
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    move v5, v6

    goto :goto_4d

    .line 509
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 510
    iget-object v5, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v5

    .line 513
    :goto_4d
    iget-object v7, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v7

    if-ltz v7, :cond_57

    const/4 v8, 0x1

    goto :goto_58

    :cond_57
    move v8, v6

    :goto_58
    if-eqz p1, :cond_b1

    .line 517
    const-string v6, "processHeight"

    filled-new-array {v3, v1}, [I

    move-result-object v1

    .line 518
    invoke-static {v6, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v8, :cond_6d

    .line 520
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_73

    .line 521
    :cond_6d
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    :goto_73
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    filled-new-array {v3, v6}, [I

    move-result-object v3

    .line 520
    const-string v6, "processPadding"

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 522
    const-string v6, "processBottomMargin"

    filled-new-array {v4, v5}, [I

    move-result-object v4

    .line 523
    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 525
    filled-new-array {v1, v3, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    .line 526
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 528
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2, v8}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Landroid/widget/FrameLayout$LayoutParams;IZ)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_da

    .line 542
    :cond_b1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 543
    invoke-virtual {v0, v2, v6, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_d1

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v6, v0, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_da

    .line 551
    :cond_d1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 555
    :goto_da
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    return-void

    .line 485
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLayout failed mIndicatorEntryRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorEntryRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIndicatorRotate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRotate:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewShot()V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    if-nez v0, :cond_d

    goto :goto_3e

    .line 231
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1e

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updatePreviewShot layoutParams is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 227
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewShot mPreviewShotContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShotContainer:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 245
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShot:Z

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mCaptureShot:Z

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->initView()V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->registerStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    .line 256
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->buildRequestStatusInfo()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicator(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d0

    const/16 v0, 0x11

    const/4 v1, 0x1

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x12

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_d0

    const/16 v0, 0x103

    if-eq p1, v0, :cond_bf

    const/16 v0, 0x18e

    if-eq p1, v0, :cond_bf

    const/16 v0, 0x19e

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x19f

    if-eq p1, v0, :cond_af

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_c3

    const/16 v0, 0x66

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x67

    if-eq p1, v0, :cond_c3

    const/16 v0, 0x89

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_c3

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_cd

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_c3

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_ac

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_9b

    const/16 v0, 0xef

    if-eq p1, v0, :cond_cd

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_c3

    const/16 v0, 0xf4

    if-eq p1, v0, :cond_cd

    const/16 v0, 0xf5

    if-eq p1, v0, :cond_c3

    const/16 v0, 0x192

    if-eq p1, v0, :cond_97

    const/16 v0, 0x193

    if-eq p1, v0, :cond_93

    packed-switch p1, :pswitch_data_d4

    goto :goto_cc

    .line 802
    :pswitch_65
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 803
    iget-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    if-eqz p1, :cond_cc

    .line 804
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 796
    :pswitch_7c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 797
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    return-void

    .line 816
    :pswitch_85
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    .line 817
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFragmentShow:Z

    .line 818
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideBubbleShow:Z

    .line 819
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    .line 820
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopWindowShow:Z

    .line 821
    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorRoot(Z)V

    return-void

    .line 772
    :cond_93
    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorRoot(Z)V

    return-void

    .line 768
    :cond_97
    invoke-direct {p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorRoot(Z)V

    return-void

    .line 789
    :cond_9b
    iget-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    if-eqz p1, :cond_cc

    .line 790
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    .line 791
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 785
    :cond_ac
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPopSettingShow:Z

    return-void

    .line 780
    :cond_af
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideBubbleShow:Z

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 776
    :cond_bc
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideBubbleShow:Z

    return-void

    .line 812
    :cond_bf
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->hideIndicatorGuideIfNeeded()V

    return-void

    .line 756
    :cond_c3
    iput-boolean v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFragmentShow:Z

    .line 757
    iget-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    if-eqz p1, :cond_cc

    .line 758
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    :cond_cc
    :goto_cc
    return-void

    .line 746
    :cond_cd
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mFragmentShow:Z

    return-void

    .line 764
    :cond_d0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorBackground()V

    return-void

    :pswitch_data_d4
    .packed-switch 0x1c
        :pswitch_85
        :pswitch_7c
        :pswitch_65
    .end packed-switch
.end method

.method public onCaptureShot([B)V
    .registers 2

    .line 732
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureShot([B)V

    const/4 p1, 0x1

    .line 733
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mCaptureShot:Z

    .line 734
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->showIndicatorGuideIfNeeded()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 473
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onOrientationChanged(I)V

    const/4 p1, 0x1

    .line 474
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateLayout(Z)V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 5

    .line 627
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onPreviewShot([B)V

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShot:Z

    .line 631
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;

    const-string v2, "PreviewShot"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$4;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 479
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onScreenFormChanged(IZ)V

    .line 480
    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateLayout(Z)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 272
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGuideCouldShow:Z

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .registers 5

    .line 263
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->resume()V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 467
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->setScreenFormType(II)V

    const/4 p1, 0x0

    .line 468
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateLayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 450
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewShot:Z

    .line 452
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mCaptureShot:Z

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelShotAnimation()V

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->cancelIndicatorAnimation()V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mIndicatorRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->unregisterStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 2

    .line 587
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->updateRingScreenLight(Z)V

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    if-eqz p1, :cond_f

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mRequestStatusInfo:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicator(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    .line 591
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorBackground()V

    :cond_f
    return-void
.end method

.method public updateSelfTimerStatus(Ljava/lang/String;)V
    .registers 6

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelfTimerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_52

    goto :goto_45

    :sswitch_25
    const-string v0, "status_self_timer_begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v3, 0x2

    goto :goto_45

    :sswitch_30
    const-string v0, "status_self_timer_cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_45

    :cond_39
    move v3, v1

    goto :goto_45

    :sswitch_3b
    const-string v0, "status_self_timer_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    move v3, v2

    :goto_45
    packed-switch v3, :pswitch_data_60

    return-void

    .line 599
    :pswitch_49
    invoke-direct {p0, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorRoot(Z)V

    return-void

    .line 604
    :pswitch_4d
    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateIndicatorRoot(Z)V

    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        -0xaded465 -> :sswitch_3b
        -0x5096c46 -> :sswitch_30
        0x31566b69 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method
