.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;
    }
.end annotation


# static fields
.field public static final CLICK_MU_BAR:I = 0x1

.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mContext:Landroid/content/Context;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

.field protected mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

.field private mMakeUpBar:Landroid/view/View;

.field private mScreenFormType:I

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field protected mSeekBarAnimator:Landroid/animation/Animator;

.field protected mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

.field private mState:I

.field private mSwitchContainer:Landroid/view/View;

.field private mSwitchContainerAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$wG-_asQbPPlxZ7D39Fy8Uphx9fk(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifySeekBarVisibleChanged(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMakeUpTopUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 317
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mScreenFormType:I

    .line 63
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 64
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p2, v0, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 318
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSeekBarVisible()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .registers 3

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 341
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_7
    return-void
.end method

.method private notifySeekBarVisibleChanged(Z)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz p0, :cond_7

    .line 243
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    :cond_7
    return-void
.end method

.method private updateSwitchContainerVisibility(ZZ)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-nez v0, :cond_c

    .line 249
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSwitchContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1b
    if-eqz p2, :cond_2e

    .line 256
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    .line 285
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 287
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_34

    const/4 p2, 0x0

    goto :goto_36

    :cond_34
    const/16 p2, 0x8

    :goto_36
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSwitchContainerVisibility visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public currentState()I
    .registers 1

    .line 304
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    return p0
.end method

.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_7
    return-void
.end method

.method public notifySelect(IZ)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 311
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_a
    return-void
.end method

.method public notifyState(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyState(IZ)V
    .registers 6

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_51

    const/16 v0, 0x83

    const/4 v1, 0x1

    if-eq p1, v1, :cond_45

    const/4 v2, 0x2

    if-eq p1, v2, :cond_39

    const/4 v2, 0x3

    if-eq p1, v2, :cond_45

    return-void

    .line 181
    :cond_39
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 182
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 176
    :cond_45
    invoke-virtual {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 177
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 169
    :cond_51
    invoke-virtual {p0, p2, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 170
    invoke-direct {p0, p2, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x84

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public notifyState(IZZZ)V
    .registers 5

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    const/4 v0, 0x1

    .line 151
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 152
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 153
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return v0

    :cond_c
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x1

    .line 94
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;->barOnClick(I)V

    :cond_8
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 323
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 324
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_61

    .line 325
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    .line 326
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 328
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 332
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_makeup_top_seekbar_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 333
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 335
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 338
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->makeup_top_seekbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    :cond_61
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_21

    if-eq p2, v1, :cond_11

    const/4 v2, 0x3

    if-eq p2, v2, :cond_11

    goto :goto_2f

    .line 82
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    if-eqz p0, :cond_2f

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2f

    const/4 p2, 0x0

    .line 83
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2f

    .line 75
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    if-eqz p0, :cond_2f

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2f

    .line 76
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;->openContrast()V

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2f
    :goto_2f
    return v1
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbc

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 349
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 352
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 354
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_27

    .line 355
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_27
    return-void
.end method

.method public setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;)V
    .registers 5

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    .line 145
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    .line 146
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    .line 147
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    return-void
.end method

.method public updateLayout(II)V
    .registers 15

    .line 360
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mScreenFormType:I

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 366
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationY(F)V

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/16 v6, 0x33

    const/16 v7, 0x55

    const/16 v8, 0x35

    const/16 v9, 0xb4

    const/16 v10, 0x5a

    const/16 v11, 0x10e

    if-ne p1, v4, :cond_a9

    .line 368
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 369
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_parent_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq p2, v10, :cond_81

    if-eq p2, v9, :cond_6e

    if-eq p2, v11, :cond_5b

    const/16 v4, 0x53

    .line 389
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 390
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 391
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_93

    .line 382
    :cond_5b
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 383
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_93

    .line 377
    :cond_6e
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 379
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_93

    .line 372
    :cond_81
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 374
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_90_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 394
    :goto_93
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v6, p2, 0x10e

    rem-int/lit16 v6, v6, 0x168

    invoke-virtual {v4, v6, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 395
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 396
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto/16 :goto_1f5

    :cond_a9
    if-ne p1, v5, :cond_113

    .line 399
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 400
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 401
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 402
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_size:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 403
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_right_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p2, :cond_f7

    if-eq p2, v10, :cond_e7

    if-eq p2, v9, :cond_d7

    if-eq p2, v11, :cond_e7

    goto :goto_106

    .line 412
    :cond_d7
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 413
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_180_seekbar_top_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 414
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v9, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_106

    .line 407
    :cond_e7
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 408
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_90_seekbar_top_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 409
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v9, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_106

    .line 417
    :cond_f7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_0_seekbar_bottom_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 419
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 423
    :goto_106
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto/16 :goto_1f5

    :cond_113
    const/16 v4, 0x51

    if-nez p1, :cond_14e

    .line 427
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 428
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 429
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_13c

    if-ne p2, v10, :cond_133

    move v10, v11

    goto :goto_137

    :cond_133
    if-ne p2, v11, :cond_136

    goto :goto_137

    :cond_136
    move v10, p2

    .line 437
    :goto_137
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v10}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 439
    :cond_13c
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 440
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 441
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto/16 :goto_1f5

    :cond_14e
    const/4 v8, 0x2

    if-ne p1, v8, :cond_175

    .line 444
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 445
    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 446
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 447
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 448
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto/16 :goto_1f5

    .line 451
    :cond_175
    iget v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mScreenFormType:I

    const/4 v8, 0x4

    const/high16 v9, 0x43340000    # 180.0f

    if-ne v4, v8, :cond_1bb

    .line 452
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 453
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 454
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 455
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v9}, Landroid/view/View;->setRotationY(F)V

    .line 456
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 457
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sget v6, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    .line 458
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 459
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, p2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 460
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 461
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto :goto_1f5

    :cond_1bb
    const/4 v7, 0x5

    if-ne v4, v7, :cond_1f5

    .line 464
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 465
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 466
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 467
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v9}, Landroid/view/View;->setRotationY(F)V

    .line 468
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 469
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 470
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, p2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 471
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v4, :cond_1f5

    .line 472
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 475
    :cond_1f5
    :goto_1f5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v5, p1, :cond_225

    .line 477
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 478
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v6, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 479
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 481
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 482
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 478
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 483
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->flip_video_makeup_top_ui_margin_bottom:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_25b

    .line 485
    :cond_225
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 486
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v6, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 487
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 489
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 490
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 486
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 491
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_253

    .line 492
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_top_bar_margin_bottom:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_25b

    .line 494
    :cond_253
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 497
    :goto_25b
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    return-void
.end method

.method public updateProgressText(II)V
    .registers 3

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateSeekBarVisibility(ZZ)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 195
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mSeekBar is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    return-void

    .line 199
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1f
    if-eqz p2, :cond_32

    .line 203
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    .line 233
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 235
    :cond_32
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_37

    goto :goto_39

    :cond_37
    const/16 v1, 0x8

    :goto_39
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSeekBarVisibility visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    return-void
.end method

.method protected visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/4 v1, 0x2

    .line 295
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 296
    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_20

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_22

    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    :goto_22
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 298
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 299
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
