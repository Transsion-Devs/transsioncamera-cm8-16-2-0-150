.class public Lcom/transsion/camera/app/ui/PreviewUI5;
.super Lcom/transsion/camera/app/ui/PreviewUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    }
.end annotation


# static fields
.field private static final SELFTIMER_CAPTURE_INTERRUPT_RESET_SCENES:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

.field private mIsNeedMoveDown:Z

.field private final mMovePreviewLaterRunnable:Ljava/lang/Runnable;

.field private mNextUIType:I

.field private final mNoNeedMoveScene:Landroid/util/SparseArray;

.field private mNoNeedMoveSceneFlags:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mPreviewMoveAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mPreviousPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

.field private mShowedFlags:I

.field private final mValueAnimators:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$1rk4Tn47Rea7fSUmYKkFAJw3g_w(Lcom/transsion/camera/app/ui/PreviewUI5;I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onPMasterUIStateChange$18(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1uddfKrVYaLFCwyrg8yxQqyzpw8(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onCelebrityUIStateChange$25()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2Gd4utz7MFZ1IO030B6qjGs6py0(Lcom/transsion/camera/app/ui/PreviewUI5;Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$cameraOperateAction$6(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AsuYzwbaR9ftqaadyjOrJuJZm6s(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$cameraOperateAction$8()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cp8vJTsdb9XHp0BXAtzrz0eRm5g(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onSkyMenuUIStateChange$10()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CqrxwnPNmZfBlqzEZdHv1RKY_rE(Lcom/transsion/camera/app/ui/PreviewUI5;Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$cameraOperateAction$7(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJB4fF4WSMdxMjfTooFL1NjlOIQ(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onLongExposureSeekbarStateChange$23()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F6fe3qLr1rkLufMIA21Jq09qnR4(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onSwitchMode$4()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GT1RddHDf8s8QLsTzoh9ddjPspk(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onFilterUIStateChange$11()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KwpwRhZ2hOggyjyIazN618oStuc(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onPMasterUIStateChange$19()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rw3-NPey3-Odg4ohFXOgXTuC5Dk(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UcRz3awyu4R0nCmO09XCYSSr4m4(Lcom/transsion/camera/app/ui/PreviewUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XKVCR06ipWinR6t9qH6AkmJA-FY(Lcom/transsion/camera/app/ui/PreviewUI5;II)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onStblurLevelUIStateChange$14(II)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XdQF4r4-37Hbo3bILC8QsYzqtIY(Lcom/transsion/camera/app/ui/PreviewUI5;Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$cameraOperateAction$5(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xx85LneTTv7RxDzK-MRTjv0v0Jc(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onFaceBeautyTopUIStateChange$17()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_zn4EdLUP3mPd6_Sg2_EpepKEh0(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onAIGCUIStateChange$20()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a9kZqRVmW--DIva1WsgnftA3d2U(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onProfessionalSeekbarStateChange$22()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cyLDW48CCWMRqxK-PKhBTznlZGs(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onLongExposureSeekbarStateChange$24()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iIO5oDoRJrAGhAysdbtEHRtX43I(Lcom/transsion/camera/app/ui/PreviewUI5;D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$setPreviewAspectRatio$3(D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kZBlTagPCbfcOJ5tpzYlmxRYq2A(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onPopSettingViewStateChange$13()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lYmC4FsVfsr4P1bjsm1957RjvSw(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onAIArtMuseumUIStateChange$21()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$meRKEWYw_7myaan_z5n5Cgs0lE4(Lcom/transsion/camera/app/ui/PreviewUI5;I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onStblurLevelUIStateChange$15(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$psJTiYtBoGvcTIKFVJM4SCckcFg(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$cameraOperateAction$9()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pvUBAJcP9JLMaCsUCWMpARmZceg(Lcom/transsion/camera/app/ui/PreviewUI5;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$new$2(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rhpS3rp7WwhTxOmYoxYjUD_9L3M(Lcom/transsion/camera/app/ui/PreviewUI5;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v78lNBafps5CQLome8aJ38Cxh2k(Lcom/transsion/camera/app/ui/PreviewUI5;I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onFaceBeautyTopUIStateChange$16(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w-qDtzLeKTk-qeBrLKU8TE1aEUY(Lcom/transsion/camera/app/ui/PreviewUI5;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->lambda$onImageStyleUIStateChange$12()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monPreviewViewTranslation(Lcom/transsion/camera/app/ui/PreviewUI5;IZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPreviewViewTranslation(IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x178

    const/16 v1, 0x179

    .line 63
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->SELFTIMER_CAPTURE_INTERRUPT_RESET_SCENES:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PreviewUI;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    .line 68
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mValueAnimators:Ljava/util/List;

    .line 70
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p1, v0, p2, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 72
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviewMoveAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 75
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mMovePreviewLaterRunnable:Ljava/lang/Runnable;

    .line 84
    const-string p1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentMode:Ljava/lang/String;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->initNoNeedMoveScene()V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    new-instance p2, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewMoveDistance(Ljava/util/function/ToIntFunction;)V

    return-void
.end method

.method private applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
    .registers 6

    .line 722
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPauseNextScene: mNoNeedMoveSceneFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedMoveDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 724
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    if-nez v1, :cond_2b

    return-object p1

    .line 727
    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviousPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    if-nez v1, :cond_58

    .line 728
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->clone()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setPreviousPreviewMoveHolder(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)V

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPauseNextScene["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: mPreviousPreviewMoveHolder = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviousPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 731
    :cond_58
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    const/4 p0, 0x0

    return-object p0
.end method

.method private applyPreviewMoveAnimation(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Ljava/util/function/Supplier;)V
    .registers 6

    if-nez p2, :cond_3

    goto :goto_73

    :cond_3
    if-nez p1, :cond_d

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->clone()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    .line 137
    :cond_d
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    if-nez p2, :cond_16

    goto :goto_73

    .line 141
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPreviewMoveAnimation: previous = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->compareTo(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)I

    move-result v0

    if-eqz v0, :cond_73

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviewMoveAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getMoveAnimatorInstance(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 145
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mValueAnimators:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_48
    :goto_48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_48

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 147
    :cond_62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_48

    .line 150
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mValueAnimators:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mValueAnimators:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->startPreviewMoveAnimation(Landroid/animation/Animator;)V

    :cond_73
    :goto_73
    return-void
.end method

.method private applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V
    .registers 3

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Ljava/util/function/Supplier;)V

    return-void
.end method

.method private calibrateNoNeedMoveScene(I)V
    .registers 3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_d

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_d

    const/16 v0, 0xe9

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 1107
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateNoNeedMoveSceneFlag(IZ)V

    return-void
.end method

.method private getMoveAnimatorInstance(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .registers 7

    .line 179
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoveAnimatorInstance: start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p3, :cond_2b

    .line 182
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    :cond_2b
    new-instance p3, Lcom/transsion/camera/app/ui/PreviewUI5$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewUI5$1;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;II)V

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getMoveAnimatorInstance(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .registers 5

    .line 172
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->compareTo(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 173
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance()I

    move-result p2

    neg-int p2, p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PreviewUI5;->getMoveAnimatorInstance(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNoNeedMoveSceneFlags()I
    .registers 1

    .line 1119
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    return p0
.end method

.method private getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    if-nez v0, :cond_1d

    .line 800
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentMode:Ljava/lang/String;

    .line 801
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentMode(Ljava/lang/String;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    .line 802
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setPreviewAspectRatio(D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    .line 804
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    return-object p0
.end method

.method private getPreviousPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 1

    .line 1115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviousPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    return-object p0
.end method

.method private getShowedFlag()I
    .registers 1

    .line 1031
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    return p0
.end method

.method private hasFlag(I)Z
    .registers 3

    .line 1039
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(II)Z

    move-result p0

    return p0
.end method

.method private hasFlag(II)Z
    .registers 3

    .line 0
    and-int p0, p1, p2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private hasPopUIFlag()Z
    .registers 2

    .line 1047
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag(I)Z

    move-result p0

    return p0
.end method

.method private hasPopUIFlag(I)Z
    .registers 3

    const/4 v0, 0x4

    .line 1051
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(II)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method private initNoNeedMoveScene()V
    .registers 4

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/4 v1, 0x4

    .line 1071
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x178

    .line 1070
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0xee

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v1, 0x8

    .line 1076
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x179

    .line 1075
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1077
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0x112

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x101

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0x102

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v2, 0xea

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    const/16 v0, 0xd3

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private isFlagEmpty()Z
    .registers 1

    .line 1018
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$cameraOperateAction$5(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 4

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mMovePreviewLaterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$cameraOperateAction$6(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mMovePreviewLaterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cameraOperateAction$7(Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V
    .registers 4

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mMovePreviewLaterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$cameraOperateAction$8()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 315
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$cameraOperateAction$9()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setPausedState(Z)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 73
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPreviewViewTranslation(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 4

    .line 76
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMovePreviewLaterRunnable: mNoNeedMoveSceneFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getNoNeedMoveSceneFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getNoNeedMoveSceneFlags()I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setIsNeedMoveDown(Z)V

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviousPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;Ljava/util/function/Supplier;)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setPreviousPreviewMoveHolder(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)V

    :cond_34
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;)I
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onAIArtMuseumUIStateChange$21()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    const/16 v0, 0x800

    .line 620
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 621
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_21

    .line 622
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_20

    .line 623
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onAIGCUIStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    if-nez v0, :cond_24

    return-object v1

    .line 628
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAIGCUIStateChange$20()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    const/16 v0, 0x200

    .line 601
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 602
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_21

    .line 603
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_20

    .line 604
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onAIGCUIStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    if-nez v0, :cond_24

    return-object v1

    .line 609
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCelebrityUIStateChange$25()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 697
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCelebrityUIStateChange: mNextUIFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x400

    .line 698
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 699
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_44

    .line 700
    :cond_24
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_43

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_43

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_43

    .line 701
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 702
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onPopSettingViewStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_44

    :cond_43
    move-object v0, v1

    :goto_44
    if-nez v0, :cond_47

    return-object v1

    .line 707
    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFaceBeautyTopUIStateChange$16(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 6

    const v0, 0x8000

    .line 507
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 508
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_25

    .line 509
    :cond_d
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    const-string v3, "onFaceBeautyTopUIStateChange"

    if-eq v0, v2, :cond_21

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag(I)Z

    move-result p1

    if-nez p1, :cond_21

    .line 510
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    goto :goto_25

    .line 513
    :cond_21
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    :goto_25
    if-nez p1, :cond_28

    return-object v1

    .line 515
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFaceBeautyTopUIStateChange$17()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const v0, 0x8000

    .line 527
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->onlyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 528
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_14

    .line 530
    :cond_c
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "onFaceBeautyTopUIStateChange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 533
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFilterUIStateChange$11()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 363
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterUIStateChange: mNextUIFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 364
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 365
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_45

    .line 366
    :cond_23
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_44

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_44

    const/16 v0, 0x400

    .line 367
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 368
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onFilterUIStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_45

    :cond_44
    move-object v0, v1

    :goto_45
    if-nez v0, :cond_48

    return-object v1

    .line 373
    :cond_48
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onImageStyleUIStateChange$12()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 392
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageStyleUIStateChange: mNextUIFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 393
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 394
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_47

    .line 395
    :cond_24
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_46

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_46

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_46

    const/16 v0, 0x400

    .line 396
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 397
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onImageStyleUIStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_47

    :cond_46
    move-object v0, v1

    :goto_47
    if-nez v0, :cond_4a

    return-object v1

    .line 402
    :cond_4a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onLongExposureSeekbarStateChange$23()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const/16 v0, 0x8

    .line 660
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 661
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_16

    .line 662
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_15

    .line 663
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-nez v0, :cond_19

    return-object v1

    .line 667
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onLongExposureSeekbarStateChange$24()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const/16 v0, 0x10

    .line 676
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 677
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_13

    .line 679
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "onLongExposureSeekbarStateChange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 682
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPMasterUIStateChange$18(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 6

    const/16 v0, 0x40

    .line 552
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 553
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_24

    .line 554
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x1

    const-string v3, "onPMasterUIStateChange"

    if-eq v0, v2, :cond_20

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag(I)Z

    move-result p1

    if-nez p1, :cond_20

    .line 555
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    goto :goto_24

    .line 558
    :cond_20
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    :goto_24
    if-nez p1, :cond_27

    return-object v1

    .line 560
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPMasterUIStateChange$19()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const/16 v0, 0x80

    .line 575
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 576
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_2f

    :cond_b
    const/16 v0, 0x100

    .line 577
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 578
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_2f

    :cond_16
    const/16 v0, 0x40

    .line 579
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->onlyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 580
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "onPMasterUIStateChangeFirst"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_2f

    .line 583
    :cond_27
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "onPMasterUIStateChange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    :goto_2f
    if-nez v0, :cond_33

    const/4 p0, 0x0

    return-object p0

    .line 586
    :cond_33
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPopSettingViewStateChange$13()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 417
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopSettingViewStateChange: mNextUIFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedMoveDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 419
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_4e

    .line 420
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4d

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4d

    const/16 v0, 0x400

    .line 421
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 422
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v2, "onPopSettingViewStateChange"

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    goto :goto_4e

    :cond_4d
    move-object v0, v1

    :goto_4e
    if-nez v0, :cond_51

    return-object v1

    .line 427
    :cond_51
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onProfessionalSeekbarStateChange$22()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const/16 v0, 0x20

    .line 639
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 640
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_13

    .line 642
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "onProfessionalSeekbarStateChange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 645
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSkyMenuUIStateChange$10()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    const/4 v0, 0x1

    .line 345
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 346
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_15

    .line 347
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag()Z

    move-result v0

    if-nez v0, :cond_14

    .line 348
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    if-nez v0, :cond_18

    return-object v1

    .line 352
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onStblurLevelUIStateChange$14(II)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 6

    const/16 v0, 0x149

    const/4 v1, 0x0

    .line 454
    const-string v2, "onStblurLevelUIStateChange"

    if-ne p1, v0, :cond_e

    .line 455
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    goto :goto_2f

    :cond_e
    const/16 p1, 0x4000

    .line 458
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 459
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_2f

    .line 460
    :cond_19
    iget p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasPopUIFlag(I)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 461
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    goto :goto_2f

    .line 464
    :cond_2b
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    :goto_2f
    if-nez p1, :cond_32

    return-object v1

    .line 466
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onStblurLevelUIStateChange$15(I)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    const/16 v0, 0x149

    .line 479
    const-string v1, "onStblurLevelUIStateChange"

    if-ne p1, v0, :cond_d

    .line 480
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    goto :goto_1e

    :cond_d
    const/16 p1, 0x4000

    .line 483
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onlyFlag(I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 484
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    goto :goto_1e

    .line 486
    :cond_18
    sget-object p1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPauseNextScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    :goto_1e
    if-nez p1, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 489
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSwitchMode$4()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentMode(Ljava/lang/String;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setPreviewAspectRatio$3(D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 5

    const/4 v0, 0x4

    .line 109
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    goto :goto_22

    :cond_11
    const/16 v0, 0x1000

    .line 111
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    .line 114
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setPreviewAspectRatio(D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method private onAIArtMuseumUIStateChange(I)V
    .registers 6

    .line 615
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAIArtMuseumUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 617
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 618
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_30
    return-void
.end method

.method private onAIGCUIStateChange(I)V
    .registers 6

    .line 596
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAIGCUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 598
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 599
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda26;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_30
    return-void
.end method

.method private onFaceBeautyTopUIStateChange(I)V
    .registers 8

    .line 499
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getShowedFlag()I

    move-result v0

    .line 500
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 501
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v1

    const/16 v2, 0x19b

    const/16 v3, 0x19a

    if-eqz v1, :cond_28

    if-eq p1, v3, :cond_1f

    if-eq p1, v2, :cond_1f

    goto :goto_41

    .line 505
    :cond_1f
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;I)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    return-void

    .line 521
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_41

    if-eq p1, v3, :cond_39

    if-eq p1, v2, :cond_39

    goto :goto_41

    .line 525
    :cond_39
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private onLongExposureSeekbarStateChange(I)V
    .registers 6

    .line 651
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongExposureSeekbarStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewAspectRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    const/16 v0, 0x113

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x114

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x164

    if-eq p1, v0, :cond_36

    const/16 v0, 0x165

    if-eq p1, v0, :cond_36

    goto :goto_62

    .line 673
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 674
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    return-void

    .line 657
    :cond_4b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 658
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private onPMasterUIStateChange(I)V
    .registers 8

    .line 543
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPMasterUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewAspectRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getShowedFlag()I

    move-result v0

    .line 545
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 546
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v1

    const/16 v2, 0xf8

    const/16 v3, 0xf7

    if-eqz v1, :cond_4a

    if-eq p1, v3, :cond_41

    if-eq p1, v2, :cond_41

    goto :goto_66

    .line 550
    :cond_41
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda23;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;I)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    return-void

    .line 566
    :cond_4a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_66

    if-eq p1, v3, :cond_5e

    if-eq p1, v2, :cond_5e

    packed-switch p1, :pswitch_data_68

    goto :goto_66

    .line 573
    :cond_5e
    :pswitch_5e
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda24;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x166
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method private onPreviewViewTranslation(I)V
    .registers 3

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPreviewViewTranslation(IZZ)V

    return-void
.end method

.method private onPreviewViewTranslation(IZZ)V
    .registers 7

    .line 745
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    int-to-float v1, p1

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 749
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxPreviewView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    int-to-float v1, p1

    .line 751
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 753
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxExpandView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    int-to-float v1, p1

    .line 755
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 757
    :cond_26
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewController()Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_34

    int-to-float v0, p1

    .line 759
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 764
    :cond_34
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 765
    :goto_3f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 766
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    .line 767
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;->onAnimationUpdate(Ljava/lang/Object;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_55
    return-void
.end method

.method private onProfessionalSeekbarStateChange(I)V
    .registers 6

    .line 634
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfessionalSeekbarStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 636
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 637
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_2d
    return-void
.end method

.method private onShowedActionChange(I)Z
    .registers 18

    move-object/from16 v0, p0

    const/16 v2, 0x20

    const/16 v3, 0x2000

    const/16 v4, 0x40

    const/4 v5, 0x4

    const/16 v6, 0x200

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/16 v9, 0x400

    const/16 v10, 0x800

    const/16 v11, 0x4000

    const v12, 0x8000

    const/16 v14, 0x100

    const/16 v15, 0x80

    const/4 v13, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_c8

    goto/16 :goto_c7

    .line 1009
    :sswitch_23
    invoke-direct {v0, v12, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 1006
    :sswitch_28
    invoke-direct {v0, v12, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 1003
    :sswitch_2d
    invoke-direct {v0, v11, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 1000
    :sswitch_32
    invoke-direct {v0, v11, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 991
    :sswitch_37
    invoke-direct {v0, v10, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 988
    :sswitch_3c
    invoke-direct {v0, v10, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 997
    :sswitch_41
    invoke-direct {v0, v9, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 994
    :sswitch_46
    invoke-direct {v0, v9, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 978
    :sswitch_4b
    invoke-direct {v0, v15, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    .line 979
    invoke-direct {v0, v14, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 970
    :sswitch_53
    invoke-direct {v0, v15, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    .line 971
    invoke-direct {v0, v14, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 974
    :sswitch_5b
    invoke-direct {v0, v15, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    .line 975
    invoke-direct {v0, v14, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 952
    :sswitch_63
    invoke-direct {v0, v8, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 949
    :sswitch_68
    invoke-direct {v0, v8, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto/16 :goto_c7

    .line 913
    :sswitch_6d
    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 910
    :sswitch_71
    invoke-direct {v0, v1, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 946
    :sswitch_75
    invoke-direct {v0, v7, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 943
    :sswitch_79
    invoke-direct {v0, v7, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 985
    :sswitch_7d
    invoke-direct {v0, v6, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 982
    :sswitch_81
    invoke-direct {v0, v6, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 928
    :sswitch_85
    invoke-direct {v0, v5, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 965
    :sswitch_89
    invoke-direct {v0, v4, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    .line 966
    invoke-direct {v0, v15, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    .line 967
    invoke-direct {v0, v14, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 962
    :sswitch_93
    invoke-direct {v0, v4, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 925
    :sswitch_97
    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 922
    :sswitch_9b
    invoke-direct {v0, v3, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 931
    :sswitch_9f
    invoke-direct {v0, v5, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 959
    :sswitch_a3
    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    .line 955
    :sswitch_a7
    invoke-direct {v0, v2, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    :sswitch_ab
    const/4 v2, 0x2

    .line 919
    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    :sswitch_b0
    const/4 v2, 0x2

    .line 916
    invoke-direct {v0, v2, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    :sswitch_b5
    const/16 v2, 0x1000

    .line 937
    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->hasFlag(I)Z

    move-result v3

    if-nez v3, :cond_be

    return v1

    .line 940
    :cond_be
    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    goto :goto_c7

    :sswitch_c2
    const/16 v2, 0x1000

    .line 934
    invoke-direct {v0, v2, v13}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateFlag(IZ)V

    :goto_c7
    return v13

    :sswitch_data_c8
    .sparse-switch
        0x1d -> :sswitch_c2
        0x1e -> :sswitch_b5
        0x30 -> :sswitch_b0
        0x31 -> :sswitch_ab
        0x58 -> :sswitch_a7
        0x59 -> :sswitch_a3
        0xd0 -> :sswitch_9f
        0xf2 -> :sswitch_9b
        0xf3 -> :sswitch_97
        0xf7 -> :sswitch_93
        0xf8 -> :sswitch_89
        0xf9 -> :sswitch_85
        0x103 -> :sswitch_81
        0x104 -> :sswitch_7d
        0x113 -> :sswitch_79
        0x114 -> :sswitch_75
        0x160 -> :sswitch_71
        0x162 -> :sswitch_6d
        0x164 -> :sswitch_68
        0x165 -> :sswitch_63
        0x166 -> :sswitch_5b
        0x167 -> :sswitch_53
        0x168 -> :sswitch_4b
        0x175 -> :sswitch_a3
        0x183 -> :sswitch_46
        0x184 -> :sswitch_41
        0x18e -> :sswitch_3c
        0x18f -> :sswitch_37
        0x198 -> :sswitch_32
        0x199 -> :sswitch_2d
        0x19a -> :sswitch_28
        0x19b -> :sswitch_23
    .end sparse-switch
.end method

.method private onStblurLevelUIStateChange(I)V
    .registers 9

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getShowedFlag()I

    move-result v0

    .line 446
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 447
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v1

    const/16 v2, 0x199

    const/16 v3, 0x198

    const/16 v4, 0x149

    if-eqz v1, :cond_2c

    if-eq p1, v4, :cond_23

    if-eq p1, v3, :cond_23

    if-eq p1, v2, :cond_23

    goto :goto_47

    .line 452
    :cond_23
    new-instance v1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;II)V

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    return-void

    .line 472
    :cond_2c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_47

    if-eq p1, v4, :cond_3f

    if-eq p1, v3, :cond_3f

    if-eq p1, v2, :cond_3f

    goto :goto_47

    .line 477
    :cond_3f
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;I)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_47
    :goto_47
    return-void
.end method

.method private onlyFlag(I)Z
    .registers 2

    .line 1035
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private resetNextUITypeIfNeed(I)V
    .registers 3

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    const/4 p1, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    return-void
.end method

.method private setNextUIType(I)V
    .registers 4

    .line 903
    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    .line 904
    sget-object p1, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNextUIFlag: mNextUIType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startPreviewMoveAnimation(Landroid/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_2c

    .line 159
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 162
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewMoveAnimation:  animator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1c2

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 165
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private updateFlag(IZ)V
    .registers 4

    if-eqz p2, :cond_9

    .line 1023
    iget p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    goto :goto_e

    .line 1025
    :cond_9
    iget p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    .line 1027
    :goto_e
    sget-object p1, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFlag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNextUIType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateNoNeedMoveSceneFlag(IZ)V
    .registers 4

    if-eqz p2, :cond_9

    .line 1095
    iget p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    goto :goto_e

    .line 1097
    :cond_9
    iget p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    .line 1099
    :goto_e
    sget-object p1, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateNoNeedMoveSceneFlag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 9

    const/4 v0, 0x0

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 207
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->resetNextUITypeIfNeed(I)V

    .line 208
    const-string v2, "cameraOperateAction: action = "

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_124

    goto/16 :goto_120

    .line 300
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onFaceBeautyTopUIStateChange(I)V

    goto/16 :goto_120

    .line 296
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onStblurLevelUIStateChange(I)V

    goto/16 :goto_120

    .line 223
    :sswitch_1a
    sget-object v2, Lcom/transsion/camera/app/ui/PreviewUI5;->SELFTIMER_CAPTURE_INTERRUPT_RESET_SCENES:[I

    array-length v4, v2

    :goto_1d
    if-ge v0, v4, :cond_120

    aget v5, v2, v0

    .line 224
    iget-object v6, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 225
    invoke-direct {p0, v5, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateNoNeedMoveSceneFlag(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 312
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onAIArtMuseumUIStateChange(I)V

    goto/16 :goto_120

    :sswitch_38
    const/4 v0, 0x3

    .line 220
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    goto/16 :goto_120

    .line 270
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onCelebrityUIStateChange(I)V

    goto/16 :goto_120

    :sswitch_43
    const/4 v0, 0x2

    .line 217
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    goto/16 :goto_120

    .line 214
    :sswitch_49
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    goto/16 :goto_120

    .line 274
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onSkyMenuUIStateChange(I)V

    goto/16 :goto_120

    .line 303
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onStblurLevelUIStateChange(I)V

    .line 304
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onFaceBeautyTopUIStateChange(I)V

    goto/16 :goto_120

    .line 280
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onLongExposureSeekbarStateChange(I)V

    goto/16 :goto_120

    .line 308
    :sswitch_60
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onAIGCUIStateChange(I)V

    goto/16 :goto_120

    .line 292
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPMasterUIStateChange(I)V

    goto/16 :goto_120

    .line 266
    :sswitch_6a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onImageStyleUIStateChange(I)V

    goto/16 :goto_120

    .line 210
    :sswitch_6f
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->calibrateNoNeedMoveScene(I)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_120

    .line 285
    :sswitch_82
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onProfessionalSeekbarStateChange(I)V

    goto/16 :goto_120

    .line 262
    :sswitch_87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onFilterUIStateChange(I)V

    goto/16 :goto_120

    .line 318
    :sswitch_8c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setPausedState(Z)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    goto/16 :goto_120

    .line 258
    :sswitch_95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPopSettingViewStateChange(I)V

    goto/16 :goto_120

    .line 321
    :sswitch_9a
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    goto/16 :goto_120

    .line 236
    :sswitch_a4
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->calibrateNoNeedMoveScene(I)V

    .line 237
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateNoNeedMoveSceneFlag(IZ)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setIsNeedMoveDown(Z)V

    .line 240
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedMoveDown = false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_120

    .line 315
    :sswitch_e1
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    goto :goto_120

    .line 250
    :sswitch_ea
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveScene:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/PreviewUI5;->updateNoNeedMoveSceneFlag(IZ)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 252
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedMoveDown = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    :cond_120
    :goto_120
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->cameraOperateAction(I)V

    return-void

    :sswitch_data_124
    .sparse-switch
        0xc -> :sswitch_ea
        0x13 -> :sswitch_e1
        0x15 -> :sswitch_a4
        0x16 -> :sswitch_ea
        0x18 -> :sswitch_ea
        0x1c -> :sswitch_9a
        0x1d -> :sswitch_95
        0x1e -> :sswitch_95
        0x20 -> :sswitch_8c
        0x30 -> :sswitch_87
        0x31 -> :sswitch_87
        0x58 -> :sswitch_82
        0x59 -> :sswitch_82
        0xd0 -> :sswitch_95
        0xd2 -> :sswitch_a4
        0xd3 -> :sswitch_ea
        0xdc -> :sswitch_6f
        0xe9 -> :sswitch_a4
        0xea -> :sswitch_ea
        0xee -> :sswitch_ea
        0xf2 -> :sswitch_6a
        0xf3 -> :sswitch_6a
        0xf7 -> :sswitch_65
        0xf8 -> :sswitch_65
        0xf9 -> :sswitch_95
        0x101 -> :sswitch_a4
        0x102 -> :sswitch_ea
        0x103 -> :sswitch_60
        0x104 -> :sswitch_60
        0x112 -> :sswitch_ea
        0x113 -> :sswitch_5b
        0x114 -> :sswitch_5b
        0x149 -> :sswitch_53
        0x15e -> :sswitch_a4
        0x15f -> :sswitch_a4
        0x160 -> :sswitch_4e
        0x162 -> :sswitch_4e
        0x164 -> :sswitch_5b
        0x165 -> :sswitch_5b
        0x166 -> :sswitch_65
        0x167 -> :sswitch_65
        0x168 -> :sswitch_65
        0x169 -> :sswitch_49
        0x16a -> :sswitch_43
        0x175 -> :sswitch_82
        0x178 -> :sswitch_a4
        0x179 -> :sswitch_a4
        0x183 -> :sswitch_3e
        0x184 -> :sswitch_3e
        0x188 -> :sswitch_38
        0x18e -> :sswitch_33
        0x18f -> :sswitch_33
        0x191 -> :sswitch_1a
        0x198 -> :sswitch_15
        0x199 -> :sswitch_15
        0x19a -> :sswitch_10
        0x19b -> :sswitch_10
    .end sparse-switch
.end method

.method protected createAnimationManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)Lcom/transsion/camera/app/ui/anim/AnimationManager;
    .registers 3

    .line 794
    new-instance p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    return-object p0
.end method

.method protected doUpdatePreviewLayoutForRatio()V
    .registers 5

    .line 100
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayoutForRatio()V

    .line 101
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdatePreviewLayoutForRatio: mPreviewAspectRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected getPreviewMarginInfo(I)V
    .registers 2

    .line 789
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewMarginInfo(I)V

    return-void
.end method

.method public onCelebrityUIStateChange(I)V
    .registers 6

    .line 692
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCelebrityUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 693
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 694
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 695
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    goto :goto_4c

    .line 710
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getCurrentScene()Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    .line 711
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->isFlagEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p1, v0, :cond_4c

    .line 712
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    .line 715
    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_55

    const/4 p1, 0x0

    .line 716
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    :cond_55
    return-void
.end method

.method public onFilterUIStateChange(I)V
    .registers 6

    .line 358
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 361
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    goto :goto_4c

    .line 376
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getCurrentScene()Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object p1

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->isFlagEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    if-ne p1, v0, :cond_4c

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->getPreviewMoveHolder()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    .line 381
    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    const/4 p1, 0x0

    .line 382
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    :cond_55
    return-void
.end method

.method public onImageStyleUIStateChange(I)V
    .registers 6

    .line 387
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageStyleUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 390
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda21;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    .line 405
    :cond_30
    iget p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    const/4 p1, 0x0

    .line 406
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    :cond_39
    return-void
.end method

.method public onPause(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    .line 781
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->onPreviewViewTranslation(I)V

    const/4 v1, 0x1

    .line 782
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setIsNeedMoveDown(Z)V

    .line 783
    iput v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNoNeedMoveSceneFlags:I

    .line 784
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onPause(Z)V

    return-void
.end method

.method public onPopSettingViewStateChange(I)V
    .registers 6

    .line 411
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopSettingViewStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_55

    .line 415
    :cond_1d
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda25;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    .line 429
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 430
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    goto :goto_4c

    .line 431
    :cond_35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_45

    .line 432
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    goto :goto_4c

    .line 435
    :cond_45
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    if-nez v0, :cond_4c

    .line 436
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    .line 439
    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_55

    const/4 p1, 0x0

    .line 440
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->setNextUIType(I)V

    :cond_55
    :goto_55
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 773
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onResume()V

    .line 774
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: [ mIsNeedMoveDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShowedFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mShowedFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNextUIType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mNextUIType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSkyMenuUIStateChange(I)V
    .registers 6

    .line 340
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSkyMenuUIStateChange: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->onShowedActionChange(I)Z

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 343
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda22;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_30
    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;I)V
    .registers 5

    .line 120
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->onSwitchMode(Ljava/lang/String;I)V

    .line 121
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentMode:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2b

    .line 122
    sget-object p2, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchMode: newMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mCurrentMode:Ljava/lang/String;

    .line 124
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    :cond_2b
    return-void
.end method

.method public setIsNeedMoveDown(Z)V
    .registers 2

    .line 1055
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mIsNeedMoveDown:Z

    return-void
.end method

.method protected setPreviewAspectRatio(D)V
    .registers 6

    .line 106
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewAspectRatio(D)V

    .line 107
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewAspectRatio: ratio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/PreviewUI5;D)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5;->applyPreviewMoveAnimation(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public setPreviousPreviewMoveHolder(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)V
    .registers 2

    .line 1059
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5;->mPreviousPreviewMoveHolder:Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    return-void
.end method
