.class public Lcom/ss/android/ttve/utils/CameraInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ASSERT_MSG:Ljava/lang/String; = "Camera Device detected as null! Please check!"

.field public static final DEFAULT_PREVIEW_RATE:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "CameraInstance"

.field private static mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;


# instance fields
.field private comparatorBigger:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorSmaller:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mDefaultCameraID:I

.field private mFacing:I

.field private mIsPreviewing:Z

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPreferPreviewHeight:I

.field private mPreferPreviewWidth:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    const/16 v1, 0x500

    .line 48
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    const/16 v2, 0x2d0

    .line 49
    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    .line 51
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    .line 52
    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    .line 54
    iput v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    .line 292
    new-instance v0, Lcom/ss/android/ttve/utils/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/utils/CameraInstance$1;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    .line 303
    new-instance v0, Lcom/ss/android/ttve/utils/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/utils/CameraInstance$2;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    return-void
.end method

.method private static clamp(I)I
    .registers 3

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    .line 556
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static clamp(III)I
    .registers 3

    .line 0
    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/ss/android/ttve/utils/CameraInstance;
    .registers 2

    const-class v0, Lcom/ss/android/ttve/utils/CameraInstance;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;

    if-nez v1, :cond_11

    .line 63
    new-instance v1, Lcom/ss/android/ttve/utils/CameraInstance;

    invoke-direct {v1}, Lcom/ss/android/ttve/utils/CameraInstance;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 65
    :cond_11
    :goto_11
    sget-object v1, Lcom/ss/android/ttve/utils/CameraInstance;->mThisInstance:Lcom/ss/android/ttve/utils/CameraInstance;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 574
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    .line 577
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 578
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 579
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 580
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 581
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 583
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 584
    iget v1, p1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 585
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 586
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 588
    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {p2, p0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 590
    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget p2, v0, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p3, p0, p1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;)V
    .registers 4

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    goto :goto_21

    :cond_19
    const/16 v0, 0x10e

    goto :goto_21

    :cond_1c
    const/16 v0, 0xb4

    goto :goto_21

    :cond_1f
    const/16 v0, 0x5a

    .line 136
    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->setOrientationDegrees(I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    return-void
.end method


# virtual methods
.method public calculateTapArea(FFFI)Landroid/graphics/Rect;
    .registers 10

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    .line 528
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v1, 0x3e8

    sub-int/2addr p1, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p2, v1

    .line 531
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    const/16 v2, -0x3e8

    invoke-static {p1, v2, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 532
    invoke-static {p2, v2, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(III)I

    move-result p2

    .line 533
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    add-int/2addr p1, p3

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    int-to-float p1, p1

    add-int/2addr p2, p3

    invoke-static {p2}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 534
    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p1, p2, p3, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 535
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 536
    invoke-direct {p0, p4, p2, p1}, Lcom/ss/android/ttve/utils/CameraInstance;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 537
    new-instance p0, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    iget p3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v1

    iget p4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 538
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 539
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 540
    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 541
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/ss/android/ttve/utils/CameraInstance;->clamp(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public focusAtPoint(FF)V
    .registers 4

    const v0, 0x3da3d70a    # 0.08f

    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->focusAtPoint(FFF)V

    return-void
.end method

.method public declared-synchronized focusAtPoint(FFF)V
    .registers 8

    monitor-enter p0

    .line 479
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_11

    .line 480
    const-string p1, "CameraInstance"

    const-string p2, "Error: focus after release."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 481
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto/16 :goto_ba

    .line 484
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 486
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_b1

    .line 487
    iget v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->calculateTapArea(FFFI)Landroid/graphics/Rect;

    move-result-object p1

    .line 488
    const-string p2, "CameraInstance"

    const-string p3, "FocusAreas: [%d, %d, %d, %d]"

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    new-instance p3, Landroid/hardware/Camera$Area;

    const/16 v0, 0x3e8

    invoke-direct {p3, p1, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_e

    .line 493
    :try_start_59
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 494
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string p3, "Multilaser"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_78

    const-string p3, "MS40"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 495
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_78

    :catch_76
    move-exception p1

    goto :goto_96

    .line 497
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 498
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    const-string p2, "continuous-video"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 500
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    new-instance p2, Lcom/ss/android/ttve/utils/CameraInstance$3;

    invoke-direct {p2, p0}, Lcom/ss/android/ttve/utils/CameraInstance$3;-><init>(Lcom/ss/android/ttve/utils/CameraInstance;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_95} :catch_76
    .catchall {:try_start_59 .. :try_end_95} :catchall_e

    goto :goto_b8

    .line 519
    :goto_96
    :try_start_96
    const-string p2, "CameraInstance"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: focusAtPoint failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 522
    :cond_b1
    const-string p1, "CameraInstance"

    const-string p2, "The device does not support metering areas..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_96 .. :try_end_b8} :catchall_e

    .line 525
    :goto_b8
    monitor-exit p0

    return-void

    :goto_ba
    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_e

    throw p1
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    return-object p0
.end method

.method public getCameraFacing()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    return p0
.end method

.method public declared-synchronized getParams()Landroid/hardware/Camera$Parameters;
    .registers 2

    monitor-enter p0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    .line 274
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_10

    .line 276
    :cond_d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_b

    throw v0
.end method

.method public getRotation()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    return p0
.end method

.method public initCamera(I)V
    .registers 11

    .line 314
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    const-string v1, "CameraInstance"

    if-nez v0, :cond_c

    .line 315
    const-string p0, "initCamera: Camera is not opened!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_c
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 320
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 323
    const-string v3, "Picture Format: %x"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 326
    :cond_37
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 328
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    if-eqz v3, :cond_69

    .line 335
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    if-lt v5, v6, :cond_4f

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    if-lt v5, v6, :cond_4f

    :cond_69
    move-object v3, v4

    goto :goto_4f

    .line 340
    :cond_6b
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 343
    iget-object v4, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7a
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 346
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Supported preview size: %d x %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_ad

    .line 347
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    if-lt v5, v6, :cond_7a

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    if-lt v5, v6, :cond_7a

    :cond_ad
    move-object v2, v4

    goto :goto_7a

    .line 353
    :cond_af
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 355
    iget-object v4, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 356
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 358
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 359
    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 360
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_da
    mul-int/lit8 v2, p1, 0x2

    .line 365
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 p1, p1, 0x4

    .line 366
    div-int/lit8 p1, p1, 0x3

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move v5, v3

    :cond_ea
    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supported frame rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v5, v7, :cond_114

    .line 370
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 372
    :cond_114
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v4, v7, :cond_ea

    .line 373
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_ea

    .line 377
    :cond_11f
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 378
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FpsRange = ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v2, v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/4 p1, 0x2

    .line 384
    new-array p1, p1, [I

    .line 385
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget p1, p1, v2

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_17d
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_184} :catch_185

    goto :goto_189

    :catch_185
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 395
    :goto_189
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 397
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 398
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 400
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewWidth:I

    .line 401
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewHeight:I

    .line 403
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    .line 404
    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    .line 406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Camera Picture Size: %d x %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget p0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Camera Preview Size: %d x %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCameraOpened()Z
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewing()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    return p0
.end method

.method public isUsingFrontCamera()Z
    .registers 2

    .line 106
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public pictureHeight()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    return p0
.end method

.method public pictureWidth()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    return p0
.end method

.method public previewHeight()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewHeight:I

    return p0
.end method

.method public previewWidth()I
    .registers 1

    .line 73
    iget p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreviewWidth:I

    return p0
.end method

.method public declared-synchronized setFocusMode(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    .line 413
    monitor-exit p0

    return-void

    .line 415
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 416
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 417
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 418
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_21

    .line 420
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1d

    throw p1
.end method

.method public setOrientationDegrees(I)I
    .registers 5

    .line 140
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 142
    iget v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 145
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 146
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x21c

    .line 147
    rem-int/lit16 p1, p1, 0x168

    goto :goto_20

    .line 149
    :cond_19
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 153
    :goto_20
    :try_start_20
    iget-object p0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    return p1
.end method

.method public declared-synchronized setParams(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    monitor-enter p0

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    .line 281
    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 282
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 285
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public declared-synchronized setPictureSize(IIZ)V
    .registers 7

    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_e

    .line 425
    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    .line 426
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 427
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto/16 :goto_80

    .line 430
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    .line 433
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_3c

    .line 437
    iget-object p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorBigger:Ljava/util/Comparator;

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_24
    :goto_24
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_3a

    .line 439
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v2, p1, :cond_24

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v2, p2, :cond_24

    :cond_3a
    move-object v1, v0

    goto :goto_24

    .line 444
    :cond_3c
    iget-object p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->comparatorSmaller:Ljava/util/Comparator;

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_45
    :goto_45
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_5b

    .line 446
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, p1, :cond_45

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v2, p2, :cond_45

    :cond_5b
    move-object v1, v0

    goto :goto_45

    :cond_5d
    if-eqz v1, :cond_63

    .line 453
    iget p1, v1, Landroid/hardware/Camera$Size;->width:I

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    :cond_63
    if-eqz v1, :cond_69

    .line 456
    iget p1, v1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_b

    .line 460
    :cond_69
    :try_start_69
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    iget p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureWidth:I

    iget p3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPictureHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 461
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_7a
    .catchall {:try_start_69 .. :try_end_79} :catchall_b

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 463
    :try_start_7b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_b

    .line 465
    :goto_7e
    monitor-exit p0

    return-void

    :goto_80
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_b

    throw p1
.end method

.method public setPreferPreviewSize(II)V
    .registers 3

    .line 89
    iput p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewHeight:I

    .line 90
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mPreferPreviewWidth:I

    return-void
.end method

.method public declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    monitor-enter p0

    .line 237
    :try_start_1
    const-string v0, "CameraInstance"

    const-string v1, "Camera startPreview..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    if-eqz v0, :cond_17

    .line 239
    const-string p1, "CameraInstance"

    const-string v0, "Camera is previewing..."

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 241
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_57

    .line 244
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_15

    if-eqz v0, :cond_55

    .line 246
    :try_start_1b
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 247
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_27
    .catchall {:try_start_1b .. :try_end_26} :catchall_15

    goto :goto_55

    :catch_27
    move-exception p1

    .line 250
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    const-string v0, "CameraInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_15

    .line 254
    :try_start_48
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e
    .catchall {:try_start_48 .. :try_end_4d} :catchall_15

    goto :goto_52

    :catch_4e
    move-exception p1

    .line 256
    :try_start_4f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_52
    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_15

    .line 261
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_15

    throw p1
.end method

.method public declared-synchronized stopCamera()V
    .registers 3

    monitor-enter p0

    .line 218
    :try_start_1
    const-string v0, "CameraInstance"

    const-string v1, "stopCamera..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    .line 221
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    const/4 v0, 0x0

    .line 223
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1b
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception v0

    goto :goto_28

    :catch_1b
    move-exception v1

    .line 225
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    :goto_1f
    iget-object v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 228
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    .line 230
    :cond_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_19

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .registers 3

    monitor-enter p0

    .line 264
    :try_start_1
    const-string v0, "CameraInstance"

    const-string v1, "Camera stopPreview..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 266
    iput-boolean v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mIsPreviewing:Z

    .line 267
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 268
    const-string v0, "CameraInstance"

    const-string v1, "Camera stopped!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception v0

    goto :goto_22

    .line 270
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw v0
.end method

.method public tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;)Z
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/utils/CameraInstance;->tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized tryOpenCamera(Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;I)Z
    .registers 9

    monitor-enter p0

    .line 161
    :try_start_1
    const-string v0, "CameraInstance"

    const-string v1, "try open camera..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    :try_start_a
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 167
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v1

    :goto_14
    if-ge v4, v2, :cond_29

    .line 169
    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 170
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, p2, :cond_26

    .line 171
    iput v4, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    .line 172
    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    goto :goto_26

    :catchall_22
    move-exception p1

    goto :goto_95

    :catch_24
    move-exception p1

    goto :goto_87

    :cond_26
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 176
    :cond_29
    invoke-virtual {p0}, Lcom/ss/android/ttve/utils/CameraInstance;->stopPreview()V

    .line 177
    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p2, :cond_33

    .line 178
    invoke-virtual {p2}, Landroid/hardware/Camera;->release()V

    .line 180
    :cond_33
    iget p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mDefaultCameraID:I

    if-ltz p2, :cond_3e

    .line 181
    invoke-static {p2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_46

    .line 183
    :cond_3e
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    .line 184
    iput v1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mFacing:I

    .line 187
    :goto_46
    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/utils/CameraInstance;->setOrientationDegrees(I)I

    move-result p2

    iput p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    .line 188
    const-string p2, "CameraInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_64} :catch_24
    .catchall {:try_start_a .. :try_end_64} :catchall_22

    .line 196
    :try_start_64
    iget-object p2, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p2, :cond_85

    .line 197
    const-string p2, "CameraInstance"

    const-string v2, "Camera opened!"

    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_22

    const/16 p2, 0x1e

    .line 200
    :try_start_71
    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/utils/CameraInstance;->initCamera(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7c
    .catchall {:try_start_71 .. :try_end_74} :catchall_22

    if-eqz p1, :cond_79

    .line 208
    :try_start_76
    invoke-interface {p1}, Lcom/ss/android/ttve/utils/CameraInstance$CameraOpenCallback;->cameraReady()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_22

    .line 211
    :cond_79
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 202
    :catch_7c
    :try_start_7c
    iget-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 203
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_22

    .line 204
    monitor-exit p0

    return v1

    .line 214
    :cond_85
    monitor-exit p0

    return v1

    .line 190
    :goto_87
    :try_start_87
    const-string p2, "CameraInstance"

    const-string v2, "Open Camera Failed!"

    invoke-static {p2, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    iput-object v0, p0, Lcom/ss/android/ttve/utils/CameraInstance;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_22

    .line 193
    monitor-exit p0

    return v1

    :goto_95
    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_22

    throw p1
.end method
