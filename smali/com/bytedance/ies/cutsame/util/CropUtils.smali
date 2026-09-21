.class public final Lcom/bytedance/ies/cutsame/util/CropUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/CropUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cropInRange(F)F
    .registers 3

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_6

    return p0

    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_d

    return p0

    :cond_d
    return p1
.end method

.method private final getSaleFactorMax(FFFF)F
    .registers 5

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final clip2ItemCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 5

    const-string p0, "clip"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getLeftUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toCutsameCropX(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getLeftUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toCutsameCropY(F)F

    move-result v1

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getRightLower()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toCutsameCropX(F)F

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getRightLower()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toCutsameCropY(F)F

    move-result p1

    .line 71
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    return-object p0
.end method

.method public final convertCrop(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oriCrop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "align_video"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a5

    .line 18
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-nez p3, :cond_a5

    .line 19
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result p3

    cmpg-float p3, p3, v0

    if-nez p3, :cond_a5

    .line 20
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-nez p3, :cond_a5

    .line 21
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p3

    cmpg-float p3, p3, v0

    if-nez p3, :cond_a5

    .line 22
    sget-object p2, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {p2, p1, p4}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p2

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p3

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result p4

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_5d

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result p4

    const/16 v1, 0x10e

    if-ne p4, v1, :cond_65

    .line 26
    :cond_5d
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p2

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p3

    :cond_65
    if-lez p2, :cond_71

    if-lez p3, :cond_71

    int-to-float p1, p2

    int-to-float p4, p3

    int-to-float v0, p5

    int-to-float v1, p6

    .line 31
    invoke-direct {p0, p1, p4, v0, v1}, Lcom/bytedance/ies/cutsame/util/CropUtils;->getSaleFactorMax(FFFF)F

    move-result v0

    :cond_71
    int-to-float p1, p2

    mul-float/2addr p1, v0

    int-to-float p2, p5

    sub-float p4, p1, p2

    float-to-int p4, p4

    int-to-float p4, p4

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float/2addr p4, p5

    div-float/2addr p4, p1

    int-to-float p3, p3

    mul-float/2addr p3, v0

    int-to-float p6, p6

    sub-float v0, p3, p6

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    div-float/2addr v0, p3

    add-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float p2, p2

    mul-float/2addr p2, p5

    div-float/2addr p2, p1

    add-float/2addr p6, p3

    float-to-int p1, p6

    int-to-float p1, p1

    mul-float/2addr p1, p5

    div-float/2addr p1, p3

    .line 37
    new-instance p3, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 38
    invoke-direct {p0, p4}, Lcom/bytedance/ies/cutsame/util/CropUtils;->cropInRange(F)F

    move-result p4

    .line 39
    invoke-direct {p0, v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;->cropInRange(F)F

    move-result p5

    .line 40
    invoke-direct {p0, p2}, Lcom/bytedance/ies/cutsame/util/CropUtils;->cropInRange(F)F

    move-result p2

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/util/CropUtils;->cropInRange(F)F

    move-result p0

    .line 37
    invoke-direct {p3, p4, p5, p2, p0}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    return-object p3

    :cond_a5
    return-object p2
.end method

.method public final crop2ItemCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 5

    const-string p0, "crop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXLeftUpper()F

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYLeftUpper()F

    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXRightLower()F

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYRightLower()F

    move-result p1

    .line 64
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    return-object p0
.end method

.method public final itemCrop2Clip(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;
    .registers 4

    const-string p0, "itemCrop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>()V

    .line 96
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipX(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setX(F)V

    .line 98
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setY(F)V

    .line 99
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->setLeftUpper(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    .line 100
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipX(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setX(F)V

    .line 102
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setY(F)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->setRightUpper(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    .line 104
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipX(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setX(F)V

    .line 106
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipY(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setY(F)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->setLeftLower(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    .line 108
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipX(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setX(F)V

    .line 110
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p1

    invoke-static {p1}, Lcom/bytedance/ies/cutsame/util/CropUtilsKt;->toNLEClipY(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->setY(F)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->setRightLower(Lcom/bytedance/ies/nle/editor_jni/NLEPoint;)V

    return-object p0
.end method

.method public final itemCrop2Crop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;
    .registers 3

    const-string p0, "itemCrop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setXLeftUpper(F)V

    .line 81
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setYLeftUpper(F)V

    .line 83
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setXRightUpper(F)V

    .line 84
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setYRightUpper(F)V

    .line 86
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setXLeftLower(F)V

    .line 87
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setYLeftLower(F)V

    .line 89
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setXRightLower(F)V

    .line 90
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->setYRightLower(F)V

    return-object p0
.end method
