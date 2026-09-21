.class public abstract Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/supernight/ui/IModeUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;
    }
.end annotation


# static fields
.field private static final SCALE_FACTOR:F = 0.5f

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final USE_LOG:Z = false


# instance fields
.field private mAccelerometerValues:[F

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAnimationStart:Z

.field private mIsSensorRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private mMagnetValues:[F

.field private mOffsetXAngle:F

.field private mOffsetYAngle:F

.field private mOffsetZAngle:F

.field private mOrientation:I

.field private mOrientationVectorValues:[F

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewSize:Landroid/util/Size;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation
.end field

.field private mProgressAnimDuration:I

.field protected mResources:Landroid/content/res/Resources;

.field private mRootResourceId:I

.field private mRootView:Landroid/view/View;

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field protected mSize:Landroid/util/Size;

.field private mStabilizer:Landroid/view/View;

.field private mStabilizerOrigin:Landroid/view/View;

.field private mStartAngleX:F

.field private mStartAngleY:F

.field private mStartAngleZ:F

.field private mSteadyHintMessage:Ljava/lang/String;

.field private mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

.field private removerX:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

.field private removerY:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

.field private removerZ:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

.field private xPosition:F

.field private yPosition:F

.field private zPosition:F


# direct methods
.method public static synthetic $r8$lambda$Ibcg_c5NOYrsKIn_MSDPItLTScM(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbGIV96e6Js5yOvaE8m7OhPnQjE(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLq0OKHNHzw5CixW0k8FbmsK3gU(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->lambda$new$2(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsAnimationStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetXAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetXAngle:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetYAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetYAngle:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffsetZAngle(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetZAngle:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewCover(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStabilizer(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStabilizerOrigin(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizerOrigin:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccelerometerValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAccelerometerValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationStart(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsAnimationStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMagnetValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mMagnetValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientationVectorValues(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;[F)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientationVectorValues:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartAngleX(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartAngleY(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartAngleZ(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleZ:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputxPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->xPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->yPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzPosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->zPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideProcessingAnim(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doHideProcessingAnim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInflateView(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doInflateView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowEndingAnim(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doShowEndingAnim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowProcessingAnim(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doShowProcessingAnim(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDevicePosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->updateDevicePosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePosition(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->updatePosition()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightModeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientation:I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsAnimationStart:Z

    .line 94
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsSensorRegistered:Z

    .line 96
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerX:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerY:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    .line 98
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerZ:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    .line 100
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    .line 132
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 171
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$1;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 108
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    .line 112
    sget v0, Lcom/transsion/camera/feature/supernight/R$layout;->layout_super_night_processing_root:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootResourceId:I

    .line 113
    sget v0, Lcom/transsion/camera/feature/supernight/R$string;->supernight_mode_steady_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSteadyHintMessage:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "super_night_capture_progress_duration"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    .line 115
    sget-object p1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProgressAnimDuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private computeDegreesByCos(FF)F
    .registers 7

    float-to-double v0, p2

    float-to-double v2, p1

    .line 492
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 493
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 494
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_22

    goto :goto_23

    :cond_22
    neg-float p2, p2

    .line 495
    :goto_23
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeDegree(F)F

    move-result p0

    return p0
.end method

.method private correctData()V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerX:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetXAngle:F

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->processData(F)Ljava/lang/Float;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerY:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetYAngle:F

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->processData(F)Ljava/lang/Float;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->removerZ:Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;

    iget v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetZAngle:F

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->processData(F)Ljava/lang/Float;

    move-result-object v2

    if-eqz v0, :cond_27

    .line 477
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleX:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeAngle(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->xPosition:F

    :cond_27
    if-eqz v1, :cond_36

    .line 480
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleY:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeAngle(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->yPosition:F

    :cond_36
    if-eqz v2, :cond_45

    .line 483
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStartAngleZ:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeAngle(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->zPosition:F

    :cond_45
    return-void
.end method

.method private doHideProcessStepCover()V
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideCustomPreviewCover()V

    return-void
.end method

.method private doHideProcessingAnim()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStopProcessingAnim()V

    :cond_12
    return-void
.end method

.method private doInflateView()V
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_3c

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 551
    sget v1, Lcom/transsion/camera/feature/supernight/R$id;->super_night_processing_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    .line 552
    sget v1, Lcom/transsion/camera/feature/supernight/R$id;->super_night_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/supernight/R$id;->stabilizer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/supernight/R$id;->stabilizer_origin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizerOrigin:Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onFinishInflate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->ringScreenLightUpdateUI(Z)V

    :cond_3c
    return-void
.end method

.method private doShowEndingAnim()V
    .registers 2

    .line 570
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideCapturingHint()V

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 572
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStartEndingAnim()V

    :cond_a
    return-void
.end method

.method private doShowProcessStepCover(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doShowProcessingAnim(Z)V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStartProcessingAnim(Z)V

    :cond_1a
    return-void
.end method

.method private hideCapturingHint()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_c

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->ringScreenLightUpdateUI(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private normalizeAngle(FF)I
    .registers 3

    sub-float/2addr p1, p2

    const/high16 p0, 0x43b40000    # 360.0f

    add-float/2addr p1, p0

    rem-float/2addr p1, p0

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_c

    sub-float/2addr p1, p0

    :cond_c
    float-to-int p0, p1

    return p0
.end method

.method private normalizeDegree(F)F
    .registers 2

    const/high16 p0, 0x43b40000    # 360.0f

    add-float/2addr p1, p0

    rem-float/2addr p1, p0

    return p1
.end method

.method private showCapturingHint()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSteadyHintMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private updateDevicePosition()V
    .registers 9

    const/16 v0, 0x9

    .line 241
    new-array v1, v0, [F

    .line 242
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAccelerometerValues:[F

    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mMagnetValues:[F

    if-eqz v3, :cond_10

    const/4 v4, 0x0

    .line 243
    invoke-static {v1, v4, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 247
    :cond_10
    new-instance v2, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;-><init>()V

    .line 248
    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->setFromMatrix([F)V

    const/4 v1, 0x4

    .line 251
    new-array v3, v1, [F

    .line 252
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientationVectorValues:[F

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    .line 253
    invoke-static {v4, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_23
    new-array v0, v0, [F

    .line 258
    invoke-static {v0, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v1, 0x3

    .line 261
    new-array v1, v1, [F

    .line 262
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x1

    .line 265
    aget v0, v1, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeDegree(F)F

    move-result v0

    .line 266
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->getYaw()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeDegree(F)F

    move-result v2

    .line 267
    aget v1, v1, v5

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->normalizeDegree(F)F

    move-result v1

    .line 269
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAccelerometerValues:[F

    if-eqz v3, :cond_89

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_89

    const/high16 v3, 0x43820000    # 260.0f

    cmpl-float v4, v2, v3

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43870000    # 270.0f

    if-lez v4, :cond_6f

    sub-float v2, v6, v2

    add-float/2addr v2, v6

    goto :goto_72

    :cond_6f
    sub-float v2, v5, v2

    add-float/2addr v2, v5

    :goto_72
    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v2, v4

    const/high16 v7, 0x43b40000    # 360.0f

    sub-float v2, v7, v2

    rem-float/2addr v2, v7

    cmpl-float v3, v0, v3

    if-lez v3, :cond_81

    sub-float/2addr v0, v6

    sub-float/2addr v6, v0

    goto :goto_85

    :cond_81
    sub-float v0, v5, v0

    add-float v6, v0, v5

    :goto_85
    sub-float/2addr v6, v4

    sub-float v0, v7, v6

    rem-float/2addr v0, v7

    .line 285
    :cond_89
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetXAngle:F

    .line 286
    iput v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetYAngle:F

    .line 287
    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOffsetZAngle:F

    return-void
.end method

.method private updatePosition()V
    .registers 7

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->updateDevicePosition()V

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->correctData()V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->yPosition:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    .line 410
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->xPosition:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    .line 411
    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->zPosition:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    .line 413
    new-array v2, v2, [F

    fill-array-data v2, :array_52

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x258

    .line 414
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    new-instance v4, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$6;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;FFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$7;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$7;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected abstract doStartEndingAnim()V
.end method

.method protected abstract doStartProcessingAnim(Z)V
.end method

.method protected abstract doStopProcessingAnim()V
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    .line 604
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideProcessingAnim()V
    .registers 3

    .line 461
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideCapturingHint()V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 121
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 122
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->registerSensorListeners()V

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_27

    .line 125
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_27
    return-void
.end method

.method protected abstract onFinishInflate(Landroid/view/View;)V
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 469
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientation:I

    return-void
.end method

.method public declared-synchronized registerSensorListeners()V
    .registers 6

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_45

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsSensorRegistered:Z

    if-nez v1, :cond_45

    .line 203
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 205
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 208
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v2, 0x3

    .line 211
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/16 v2, 0xb

    .line 214
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_43

    :catchall_41
    move-exception v0

    goto :goto_47

    .line 218
    :cond_43
    :goto_43
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsSensorRegistered:Z
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_41

    .line 220
    :cond_45
    monitor-exit p0

    return-void

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_41

    throw v0
.end method

.method protected abstract ringScreenLightUpdateUI(Z)V
.end method

.method public showProcessingAnim(IZ)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 446
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->showCapturingHint()V

    .line 448
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    if-ne p1, v0, :cond_2d

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 p2, 0xca

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    if-lez p1, :cond_2d

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2d
    return-void
.end method

.method public startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V
    .registers 16

    .line 299
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 303
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 304
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v10

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v2, v4

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewSize:Landroid/util/Size;

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v9, v2

    .line 307
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    if-eqz v2, :cond_153

    .line 308
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v7

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 309
    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v8

    .line 308
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 313
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 314
    invoke-static {v4, v5, v10, v11}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 315
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v6, :cond_78

    .line 316
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/supernight/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 318
    :cond_78
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 319
    sget-object v6, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startProcessStepAnim: screenWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", previewAspectRatio="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", marginTop="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", TopBarHeight="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 320
    invoke-interface {v4}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ModePlusBottomBarHeight="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 321
    invoke-interface {v4}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    new-instance v5, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;

    invoke-direct {v5, p0, v3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 329
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 330
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    div-int/2addr v4, p1

    const/4 p1, 0x2

    div-int/2addr v4, p1

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernight/R$dimen;->stabilizer_size:I

    .line 331
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/2addr v4, p1

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 332
    div-int/2addr v1, p1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/supernight/R$dimen;->stabilizer_size:I

    .line 333
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$3;

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$3;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 343
    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_107

    move p3, v1

    goto :goto_109

    :cond_107
    const/high16 p3, 0x3f800000    # 1.0f

    .line 348
    :goto_109
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    new-array v3, p1, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    const-string v6, "alpha"

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizer:Landroid/view/View;

    new-array v7, p1, [F

    aput p3, v7, v4

    aput v1, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 350
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mStabilizerOrigin:Landroid/view/View;

    new-array v8, p1, [F

    aput p3, v8, v4

    aput v1, v8, v5

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const/4 v1, 0x3

    .line 351
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long p1, p2

    .line 352
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 353
    new-instance p1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$4;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mPreviewCover:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$5;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$5;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_153
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13

    .line 141
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 143
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 146
    :cond_13
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->unRegisterSensorListeners()V

    .line 150
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    return-void
.end method

.method public declared-synchronized unRegisterSensorListeners()V
    .registers 3

    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsSensorRegistered:Z

    if-eqz v1, :cond_22

    .line 225
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1f

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1f

    :catchall_1d
    move-exception v0

    goto :goto_32

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIsSensorRegistered:Z

    .line 232
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_1d

    const/4 v1, 0x0

    .line 233
    :try_start_26
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAccelerometerValues:[F

    .line 234
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mMagnetValues:[F

    .line 235
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientationVectorValues:[F

    .line 236
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2f

    .line 237
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v1

    .line 236
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_1d

    throw v0
.end method
