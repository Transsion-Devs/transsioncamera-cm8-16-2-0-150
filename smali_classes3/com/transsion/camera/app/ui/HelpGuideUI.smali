.class public Lcom/transsion/camera/app/ui/HelpGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHelpGuideUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mGuideRootView:Landroid/view/ViewGroup;

.field protected mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mLowLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mOrientation:I

.field protected final mPreviewViewRect:Landroid/graphics/Rect;

.field protected mResources:Landroid/content/res/Resources;

.field protected final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field protected mTopMargin:I


# direct methods
.method public static synthetic $r8$lambda$MswLq6vaBa-DQxXwLClfwhH2R8Q(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->lambda$ringScreenLightUpdateUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/HelpGuideUI;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HelpGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOrientation:I

    .line 157
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    new-instance v0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/HelpGuideUI$1;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$0()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mLowLightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 49
    sget v0, Lcom/transsion/camera/R$layout;->help_guide_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_guide_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMargin:I

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mResources:Landroid/content/res/Resources;

    .line 52
    sget v0, Lcom/transsion/camera/R$id;->help_guide_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideRootView:Landroid/view/ViewGroup;

    .line 53
    sget v0, Lcom/transsion/camera/R$id;->img_help_guide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 54
    iget v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 55
    iget p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOrientation:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateHelpGuideLayoutParams(IZ)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_guide_unselected:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mLowLightDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p2, -0x1000000

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 60
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 112
    iput p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOrientation:I

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_9

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_9
    return-void
.end method

.method public onSetupViews()V
    .registers 1

    return-void
.end method

.method public refreshIconState()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    :cond_b
    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 120
    sget-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] , enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_1d

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1d
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 107
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected updateHelpGuideLayoutParams(IZ)V
    .registers 9

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideRootView:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    return-void

    .line 140
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x35

    .line 141
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_guide_end_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenWidth()I

    move-result p2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 145
    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenHeight()I

    move-result v2

    .line 144
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 146
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenWidth()I

    move-result p2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 147
    invoke-interface {v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenHeight()I

    move-result v3

    .line 146
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int v5, v3

    .line 149
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 150
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v3

    iget-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 151
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v4

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result p2

    .line 152
    iget v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMargin:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v0, p2

    .line 153
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateIcon(ZLandroid/view/View$OnClickListener;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez v0, :cond_13

    .line 131
    iget p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOrientation:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateHelpGuideLayoutParams(IZ)V

    :cond_13
    return-void
.end method

.method public updateVisibility(Z)V
    .registers 5

    .line 86
    sget-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_23

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    const/4 p1, 0x4

    .line 88
    :goto_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    return-void
.end method
