.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;
    }
.end annotation


# static fields
.field public static final CLICK_FB_BAR:I = 0x1

.field private static final CLICK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLICK_MU_BAR:I = 0x3

.field public static final CLICK_SB_BAR:I = 0x2

.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static isPressBack:Z


# instance fields
.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContractBar:Landroid/view/View;

.field private mContrastBarAnim:Landroid/animation/ObjectAnimator;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mContrastState:Z

.field private mFaceBeautyBar:Landroid/view/View;

.field private mFaceBeautyType:I

.field private final mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsNeedAnimation:Z

.field private mIsSupportMakeup:Z

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private mMakeUpBar:Landroid/view/View;

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mSeekBarAnim:Landroid/animation/ObjectAnimator;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

.field private mSlimBodyBar:Landroid/view/View;

.field private mState:I

.field private mSwitchContainer:Landroid/view/View;

.field private mSwitchContainerAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic $r8$lambda$cm1U3HrE1KB-FLhacPkaZ7SXnLI(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSeekBarVisible(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onSeekBarVisible()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpTopUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->CLICK_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 305
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    .line 69
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 70
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    const/4 p2, 0x1

    .line 38
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    .line 69
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 70
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p2, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$bool;->is_support_makeup:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/makeup/R$integer;->face_beauty_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .registers 3

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 342
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_7
    return-void
.end method

.method private onSeekBarVisible()V
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    if-eqz v0, :cond_14

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_10

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 223
    :goto_11
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    :cond_14
    return-void
.end method

.method private setTopBarOnTouchListener()V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 237
    :cond_4
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p3, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, p1

    :goto_f
    if-eqz p3, :cond_13

    move v3, p1

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    const/4 v4, 0x0

    if-eqz p4, :cond_4b

    const/4 p1, 0x2

    .line 242
    new-array p1, p1, [F

    aput v2, p1, v4

    const/4 p4, 0x1

    aput v3, p1, p4

    const-string p4, "alpha"

    invoke-static {p2, p4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_3a

    .line 245
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    new-instance p3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_47

    .line 260
    :cond_3a
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    new-instance p3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$3;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    :goto_47
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-object p1

    :cond_4b
    if-eqz p3, :cond_54

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5c

    .line 276
    :cond_54
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 p0, 0x8

    .line 277
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_5c
    return-object v0
.end method


# virtual methods
.method public getState()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    return p0
.end method

.method public isNotSupportItdAndMakeUp()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    if-nez v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_7

    .line 149
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_7
    return-void
.end method

.method public notifySelect(IZ)V
    .registers 4

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-void

    .line 299
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 296
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 293
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public notifyState(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyState(IZ)V
    .registers 6

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    .line 188
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_ba

    if-eq p1, v0, :cond_8d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_60

    const/4 v2, 0x3

    if-eq p1, v2, :cond_32

    goto/16 :goto_e6

    .line 212
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_e6

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_e6

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto/16 :goto_e6

    .line 205
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_e6

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_e6

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_e6

    .line 198
    :cond_8d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_e6

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_e6

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_e6

    .line 191
    :cond_ba
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_e6

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_e6

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    .line 219
    :cond_e6
    :goto_e6
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onSeekBarVisible()V

    return-void
.end method

.method public notifyState(IZZZ)V
    .registers 5

    .line 0
    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 168
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 169
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz v1, :cond_1d

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v3, :cond_1d

    .line 171
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 172
    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_1d
    return v0

    :cond_1e
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2e

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    if-eqz v0, :cond_2e

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->CLICK_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;->barOnClick(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 323
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 324
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->face_beauty_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    const/4 v1, 0x1

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 326
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    .line 327
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 328
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->cw_btn_slimbody_south_asia:I

    goto :goto_22

    .line 329
    :cond_20
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->cw_btn_slimbody_universal:I

    .line 330
    :goto_22
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    .line 332
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setTopBarOnTouchListener()V

    .line 338
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    .line 339
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 340
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2a

    if-eq p2, v1, :cond_11

    const/4 v2, 0x3

    if-eq p2, v2, :cond_11

    goto :goto_40

    .line 87
    :cond_11
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p2, :cond_26

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, v2, :cond_26

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 89
    invoke-interface {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 92
    :cond_26
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_40

    .line 78
    :cond_2a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p2, :cond_3a

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, v2, :cond_3a

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 80
    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->openContrast()V

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3a
    const p0, 0x3f4ccccd    # 0.8f

    .line 83
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    :goto_40
    return v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 350
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    const/4 p2, 0x0

    .line 353
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 354
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_18
    return-void
.end method

.method public resetToInitState()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/16 v2, 0x8

    .line 361
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    if-eqz v0, :cond_11

    .line 363
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 366
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz v0, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V
    .registers 5

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 161
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 162
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 163
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    return-void
.end method

.method public setMakeUpBarState(Z)V
    .registers 5

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMakeUpBarState], isSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 142
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSlimBodyBarState(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 133
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    .line 379
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast_low_light:I

    goto :goto_b

    .line 380
    :cond_9
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast:I

    .line 381
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 385
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1d

    .line 387
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->cw_btn_bf_south_asia_lowlight:I

    goto :goto_27

    .line 388
    :cond_1d
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->cw_btn_bf_south_asia:I

    goto :goto_27

    :cond_20
    if-eqz p1, :cond_25

    .line 390
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->cw_btn_bf_universal_lowlight:I

    goto :goto_27

    .line 391
    :cond_25
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->cw_btn_bf_universal:I

    .line 392
    :goto_27
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 395
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 396
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_3b

    .line 398
    sget p1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->cw_btn_makeup_south_asia_low_light:I

    goto :goto_45

    .line 399
    :cond_3b
    sget p1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->cw_btn_makeup_south_asia:I

    goto :goto_45

    :cond_3e
    if-eqz p1, :cond_43

    .line 401
    sget p1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->cw_btn_makeup_universal_low_light:I

    goto :goto_45

    .line 402
    :cond_43
    sget p1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->cw_btn_makeup_universal:I

    .line 403
    :goto_45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4a
    return-void
.end method
