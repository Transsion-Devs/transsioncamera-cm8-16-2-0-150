.class public Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;,
        Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceType;
    }
.end annotation


# static fields
.field private static final FACE_RATIO_THRESHOLD:F

.field private static final INTS_OF_FACE:I = 0x19

.field private static final LARGE_FACE_RATIO_THRESHOLD:F

.field private static final LARGE_FACE_YAW_THRESHOLD:F

.field private static final LEFT_EYE_X0_INDEX:I = 0x2

.field private static final LEFT_EYE_Y0_INDEX:I = 0x3

.field private static final MIN_FACE_COUNT:I = 0x2

.field private static final MOUTH_X0_INDEX:I = 0xa

.field private static final MOUTH_X1_INDEX:I = 0xc

.field private static final MOUTH_Y0_INDEX:I = 0xb

.field private static final MOUTH_Y1_INDEX:I = 0xd

.field private static final NOSE_X_INDEX:I = 0xe

.field private static final NOSE_Y_INDEX:I = 0xf

.field private static final RIGHT_EYE_X1_INDEX:I = 0x8

.field private static final RIGHT_EYE_Y1_INDEX:I = 0x9

.field private static final STEADY_FACE_RESULT_THRESHOLD:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final YAW_THRESHOLD:F


# instance fields
.field private volatile mAdditionalResult:[I

.field private volatile mFaces:[Landroid/hardware/camera2/params/Face;

.field private mLastSteadyFaceResult:Z

.field private mPreFrameHasValidFaces:Z

.field private volatile mPreviewSize:Landroid/util/Size;

.field private mSteadyFaceResultCount:I

.field private mTotalFaceCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviewSize(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetFACE_RATIO_THRESHOLD()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->FACE_RATIO_THRESHOLD:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetLARGE_FACE_RATIO_THRESHOLD()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_RATIO_THRESHOLD:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetLARGE_FACE_YAW_THRESHOLD()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_YAW_THRESHOLD:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetYAW_THRESHOLD()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->YAW_THRESHOLD:F

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceChecker"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x3dae147b    # 0.085f

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getGroupCaptureLargeFaceRatioThreshold(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_RATIO_THRESHOLD:F

    const v0, 0x3b449ba6    # 0.003f

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getGroupCaptureFaceRatioThreshold(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->FACE_RATIO_THRESHOLD:F

    const/high16 v0, 0x420c0000    # 35.0f

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getGroupCaptureFaceYawThreshold(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->YAW_THRESHOLD:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getGroupCaptureLargeFaceYawThreshold(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_YAW_THRESHOLD:F

    const/4 v0, 0x5

    .line 42
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getGroupCaptureSteadyFaceResultThreshold(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->STEADY_FACE_RESULT_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LARGE_FACE_RATIO_THRESHOLD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_RATIO_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", FACE_RATIO_THRESHOLD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->FACE_RATIO_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", LARGE_FACE_YAW_THRESHOLD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->LARGE_FACE_YAW_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", YAW_THRESHOLD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->YAW_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", STEADY_FACE_RESULT_THRESHOLD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->STEADY_FACE_RESULT_THRESHOLD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getFaceType(I)I
    .registers 8

    mul-int/lit8 v0, p1, 0x19

    .line 144
    new-instance v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker-IA;)V

    .line 145
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mLeftEye:Landroid/graphics/Point;

    .line 148
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v4, v0, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v5, v0, 0x9

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mRightEye:Landroid/graphics/Point;

    .line 151
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v4, v0, 0xa

    aget v3, v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v5, v0, 0xb

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mLeftMouth:Landroid/graphics/Point;

    .line 152
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v4, v0, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v5, v0, 0xd

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mRightMouth:Landroid/graphics/Point;

    .line 153
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v4, v0, 0xe

    aget v3, v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    add-int/lit8 v0, v0, 0xf

    aget v0, v4, v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mNose:Landroid/graphics/Point;

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mBounds:Landroid/graphics/Rect;

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mScore:I

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->mId:I

    .line 158
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker$FaceInfo;->getFaceType()I

    move-result p0

    return p0
.end method

.method private hasEnoughValidFaces()Z
    .registers 3

    .line 98
    iget v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mTotalFaceCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->checkAdditionResult()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public checkAdditionResult()Z
    .registers 11

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_c

    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x19

    :goto_c
    if-nez v0, :cond_f

    return v1

    :cond_f
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_13
    if-ge v2, v0, :cond_38

    .line 116
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->getFaceType(I)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v8, :cond_29

    if-eq v6, v7, :cond_26

    const/4 v9, 0x3

    if-eq v6, v9, :cond_23

    goto :goto_2b

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_29
    add-int/lit8 v3, v3, 0x1

    :goto_2b
    add-int v6, v3, v5

    if-lt v6, v7, :cond_30

    return v8

    :cond_30
    if-ne v6, v8, :cond_35

    if-lt v4, v8, :cond_35

    return v8

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_38
    return v1
.end method

.method public hasSteadyValidFaces()Z
    .registers 5

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->hasEnoughValidFaces()Z

    move-result v0

    .line 83
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreFrameHasValidFaces:Z

    const/4 v2, 0x0

    if-ne v1, v0, :cond_10

    .line 84
    iget v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    goto :goto_12

    .line 86
    :cond_10
    iput v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    .line 88
    :goto_12
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreFrameHasValidFaces:Z

    .line 89
    iget v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    sget v3, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->STEADY_FACE_RESULT_THRESHOLD:I

    if-lt v1, v3, :cond_1f

    .line 90
    iput v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mLastSteadyFaceResult:Z

    return v0

    .line 94
    :cond_1f
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mLastSteadyFaceResult:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 163
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    .line 164
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreviewSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mLastSteadyFaceResult:Z

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreFrameHasValidFaces:Z

    .line 167
    iput v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mSteadyFaceResultCount:I

    return-void
.end method

.method public updateFaceResult(Landroid/hardware/camera2/CaptureResult;[ILandroid/util/Size;)V
    .registers 10

    .line 68
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    .line 69
    :cond_c
    array-length v1, v0

    .line 70
    :goto_d
    iget v2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mTotalFaceCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    if-lt v1, v3, :cond_18

    :cond_14
    if-ge v2, v3, :cond_3b

    if-lt v1, v3, :cond_3b

    .line 72
    :cond_18
    sget-object v2, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFaceResult, faceCount changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frameNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    :cond_3b
    iput v1, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mTotalFaceCount:I

    .line 76
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 77
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mAdditionalResult:[I

    .line 78
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/groupcapture/FaceChecker;->mPreviewSize:Landroid/util/Size;

    return-void
.end method
