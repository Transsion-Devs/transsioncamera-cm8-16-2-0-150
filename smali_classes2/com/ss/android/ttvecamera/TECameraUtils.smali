.class public Lcom/ss/android/ttvecamera/TECameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraUtils$ClosestComparator;
    }
.end annotation


# static fields
.field public static final CAPTURE_HQ_2X:I = 0xa00

.field public static final CAPTURE_HQ_3X:I = 0xcc0

.field public static final CAPTURE_NORMAL:I = 0x780

.field static final COMMON_RESOLUTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TECameraUtils"

.field private static abortCapturesBlockList:[Ljava/lang/String; = null

.field private static highPerformanceCpuList:[Ljava/lang/String; = null

.field private static isHighPerformanceCpu:Z = false

.field private static isInAbortCapturesBlockList:Z = false

.field private static mCameraMNClass:Ljava/lang/Class; = null

.field private static mCameraMNField:Ljava/lang/reflect/Field; = null

.field private static mCameraMNFinalizeMethod:Ljava/lang/reflect/Method; = null

.field public static mOptionFlags:B = 0x0t

.field private static sHardware:Ljava/lang/String; = null

.field private static sTakePickMaxSide:I = 0x780


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 61
    const-string v16, "Exynos 9810"

    const-string v17, "Exynos 8895"

    const-string v1, "SDM632"

    const-string v2, "SDM636"

    const-string v3, "SDM638"

    const-string v4, "SDM660"

    const-string v5, "SDM670"

    const-string v6, "SDM710"

    const-string v7, "SDM720"

    const-string v8, "MSM8996"

    const-string v9, "MSM8998"

    const-string v10, "SDM845"

    const-string v11, "KIRIN980"

    const-string v12, "KIRIN970"

    const-string v13, "KIRIN710"

    const-string v14, "HI3660"

    const-string v15, "MT6771"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->highPerformanceCpuList:[Ljava/lang/String;

    .line 64
    const-string v0, "ANE-AL00"

    const-string v1, "HWI-AL00"

    const-string v2, "BAC-AL00"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->abortCapturesBlockList:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lcom/ss/android/ttvecamera/TECameraUtils;->isInAbortCapturesBlockList:Z

    const/4 v1, 0x0

    .line 67
    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNClass:Ljava/lang/Class;

    .line 68
    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNField:Ljava/lang/reflect/Field;

    .line 69
    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNFinalizeMethod:Ljava/lang/reflect/Method;

    .line 71
    sput-byte v0, Lcom/ss/android/ttvecamera/TECameraUtils;->mOptionFlags:B

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v3, 0x78

    const/16 v4, 0xa0

    invoke-direct {v2, v4, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0xf0

    invoke-direct {v3, v5, v4}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v6, 0x140

    invoke-direct {v4, v6, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v7, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v8, 0x190

    invoke-direct {v7, v8, v5}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v5, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v8, 0x1e0

    invoke-direct {v5, v8, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v6, v5

    move-object v5, v7

    new-instance v7, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v9, 0x168

    const/16 v10, 0x280

    invoke-direct {v7, v10, v9}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v9, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v9, v10, v8}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v11, v9

    new-instance v9, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v12, 0x300

    invoke-direct {v9, v12, v8}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v12, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v13, 0x356

    invoke-direct {v12, v13, v8}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v8, v11

    new-instance v11, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v13, 0x320

    const/16 v14, 0x258

    invoke-direct {v11, v13, v14}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v13, v12

    new-instance v12, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v15, 0x21c

    const/16 v0, 0x3c0

    invoke-direct {v12, v0, v15}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v15, v13

    new-instance v13, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v13, v0, v10}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v10, 0x240

    const/16 v14, 0x400

    invoke-direct {v0, v14, v10}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object v10, v15

    new-instance v15, Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-object/from16 v17, v0

    const/16 v0, 0x258

    invoke-direct {v15, v14, v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v14, 0x2d0

    move-object/from16 v18, v2

    const/16 v2, 0x500

    invoke-direct {v0, v2, v14}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v14, Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-object/from16 v19, v0

    const/16 v0, 0x400

    invoke-direct {v14, v2, v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v2, 0x438

    move-object/from16 v16, v3

    const/16 v3, 0x780

    invoke-direct {v0, v3, v2}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-object/from16 v20, v0

    const/16 v0, 0x5a0

    invoke-direct {v2, v3, v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-object/from16 v21, v2

    const/16 v2, 0xa00

    invoke-direct {v3, v2, v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v2, 0xf00

    move-object/from16 v22, v3

    const/16 v3, 0x870

    invoke-direct {v0, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    move-object/from16 v2, v17

    move-object/from16 v17, v14

    move-object v14, v2

    move-object/from16 v3, v16

    move-object/from16 v2, v18

    move-object/from16 v16, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v0

    filled-new-array/range {v2 .. v21}, [Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 98
    invoke-static {}, Lcom/ss/android/ttvecamera/TECameraUtils;->getCPUHardware()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_132

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->highPerformanceCpuList:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_122
    if-ge v4, v3, :cond_132

    aget-object v5, v1, v4

    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 103
    sput-boolean v2, Lcom/ss/android/ttvecamera/TECameraUtils;->isHighPerformanceCpu:Z

    goto :goto_132

    :cond_12f
    add-int/lit8 v4, v4, 0x1

    goto :goto_122

    .line 109
    :cond_132
    :goto_132
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v3, Lcom/ss/android/ttvecamera/TECameraUtils;->abortCapturesBlockList:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_142
    if-ge v5, v4, :cond_152

    aget-object v6, v3, v5

    .line 113
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 114
    sput-boolean v2, Lcom/ss/android/ttvecamera/TECameraUtils;->isInAbortCapturesBlockList:Z

    goto :goto_152

    :cond_14f
    add-int/lit8 v5, v5, 0x1

    goto :goto_142

    .line 119
    :cond_152
    :goto_152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpuHardware: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isHighPerformanceCpu: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/ss/android/ttvecamera/TECameraUtils;->isHighPerformanceCpu:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "model: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isInAbortCapturesBlockList: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/ss/android/ttvecamera/TECameraUtils;->isInAbortCapturesBlockList:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraUtils"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcHighCpuPictureSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    .line 687
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 688
    iget v3, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v4, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-le v3, v4, :cond_6

    iget v4, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v5, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-gt v4, v5, :cond_1f

    goto :goto_6

    :cond_1f
    if-eqz v1, :cond_25

    .line 689
    iget v4, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ge v3, v4, :cond_6

    :cond_25
    move-object v1, v2

    goto :goto_6

    :cond_27
    if-eqz v1, :cond_2a

    return-object v1

    :cond_2a
    return-object v0
.end method

.method public static calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9c

    .line 556
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9c

    .line 557
    iget v1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 558
    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 561
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 562
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 565
    iget v6, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    int-to-float v6, v6

    iget v7, v5, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 566
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_3b

    .line 567
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 569
    :cond_3b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 573
    :cond_3f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_73

    .line 575
    new-instance p0, Lcom/ss/android/ttvecamera/TECameraUtils$8;

    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraUtils$8;-><init>()V

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_52
    :goto_52
    if-ge v2, p0, :cond_72

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-nez v0, :cond_60

    :goto_5e
    move-object v0, v4

    goto :goto_52

    .line 588
    :cond_60
    iget v5, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v5, v1, :cond_69

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne v6, p1, :cond_69

    return-object v4

    :cond_69
    if-le v5, v1, :cond_70

    .line 593
    iget v6, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ge v5, v6, :cond_70

    goto :goto_5e

    :cond_70
    if-ge v5, v1, :cond_52

    :cond_72
    return-object v0

    .line 601
    :cond_73
    new-instance p0, Lcom/ss/android/ttvecamera/TECameraUtils$9;

    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraUtils$9;-><init>()V

    invoke-static {v4, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_7f
    :goto_7f
    if-ge v2, p0, :cond_9c

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-nez v0, :cond_8d

    :goto_8b
    move-object v0, v3

    goto :goto_7f

    .line 612
    :cond_8d
    iget v5, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-lt v5, v1, :cond_96

    iget v6, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-lt v6, p1, :cond_96

    goto :goto_8b

    :cond_96
    if-ge v5, v1, :cond_7f

    .line 614
    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ge v3, p1, :cond_7f

    :cond_9c
    return-object v0
.end method

.method public static calcPreviewSizeByRadio(Ljava/util/List;F)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;F)",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_7

    return-object v1

    :cond_7
    if-eqz p0, :cond_b5

    .line 628
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 635
    iget v3, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    int-to-float v3, v3

    iget v4, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 636
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3a

    .line 637
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 639
    :cond_3a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 643
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/16 p1, 0x10

    const/16 v2, 0xe

    if-nez p0, :cond_7c

    .line 645
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraUtils;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 646
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 649
    :cond_5b
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 650
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 654
    :cond_6c
    new-instance p0, Lcom/ss/android/ttvecamera/TECameraUtils$10;

    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraUtils$10;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 660
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 662
    :cond_7c
    sget-object p0, Lcom/ss/android/ttvecamera/TECameraUtils;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 663
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 666
    :cond_8f
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 667
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    .line 671
    :cond_a0
    new-instance p0, Lcom/ss/android/ttvecamera/TECameraUtils$11;

    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraUtils$11;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0

    :cond_b5
    return-object v1
.end method

.method public static checkIsOnCameraThread(Landroid/os/Handler;)V
    .registers 2

    .line 499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_f

    return-void

    .line 500
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clamp(I)I
    .registers 3

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    .line 515
    invoke-static {p0, v0, v1}, Lcom/ss/android/ttvecamera/TECameraUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static clamp(III)I
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

.method public static contains([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 791
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 803
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 804
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v0
.end method

.method public static convertFromCameraSizes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 708
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 709
    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_26
    return-object v0
.end method

.method public static convertRanges([Landroid/util/Range;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 739
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 740
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2f

    aget-object v3, p0, v2

    .line 741
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2f
    return-object v0
.end method

.method public static convertSizes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 716
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 717
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 719
    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_32
    return-object v0
.end method

.method public static convertSizes([Landroid/util/Size;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 727
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 728
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 729
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    return-object v0
.end method

.method public static createCameraInstance(Ljava/lang/String;ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Ljava/lang/Object;
    .registers 17
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
        .end annotation
    .end param

    .line 1047
    const-string v1, "createCameraInstance for "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1050
    :try_start_7
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1051
    const-string v5, "create"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const-class v8, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-class v9, Landroid/os/Handler;

    const-class v10, Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    .line 1053
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1054
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object/from16 v6, p5

    filled-new-array {p1, p2, p3, p4, v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_4d

    :catch_32
    move-exception v0

    move-object p1, v0

    .line 1057
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", exception occurred."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VESDK-TECameraUtils"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    :goto_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cost time = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms, cameraInstance = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraUtils"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static finalizeCameraResult(Ljava/lang/Object;)Z
    .registers 6

    .line 749
    const-string v0, "TECameraUtils"

    :try_start_2
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNClass:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNFinalizeMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3a

    .line 750
    :cond_10
    const-string v1, "android.hardware.camera2.impl.CameraMetadataNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNClass:Ljava/lang/Class;

    .line 751
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "mResults"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNField:Ljava/lang/reflect/Field;

    .line 752
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNClass:Ljava/lang/Class;

    const-string v4, "finalize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNFinalizeMethod:Ljava/lang/reflect/Method;

    .line 753
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 754
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 756
    :cond_3a
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 757
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraUtils;->mCameraMNFinalizeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_45} :catch_64
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_45} :catch_5e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_45} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_45} :catch_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_45} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_46

    return v3

    .line 772
    :catch_46
    const-string p0, "unknown error"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 770
    :catch_4c
    const-string p0, "method invoke error"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 768
    :catch_52
    const-string p0, "illegal access"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 766
    :catch_58
    const-string p0, "mResults field not found"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 764
    :catch_5e
    const-string p0, "finalize method not found"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 762
    :catch_64
    const-string p0, "CameraMetadataNative class not found"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    const/4 p0, 0x0

    return p0
.end method

.method public static generateCamera2Key(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1024
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1025
    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v2, 0x1

    .line 1027
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1028
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p1

    goto :goto_23

    :cond_22
    return-object v0

    .line 1032
    :goto_23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateCamera2Key for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception occurred."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "VESDK-TECameraUtils"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getCPUHardware()Ljava/lang/String;
    .registers 4

    .line 124
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->sHardware:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 125
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->sHardware:Ljava/lang/String;

    return-object v0

    .line 127
    :cond_b
    const-string v0, "/proc/cpuinfo"

    const/4 v1, 0x0

    .line 130
    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_53
    .catchall {:try_start_e .. :try_end_18} :catchall_51

    .line 132
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 133
    const-string v1, "Hardware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_18

    .line 134
    :cond_27
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_18

    .line 136
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->sHardware:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_39} :catch_45
    .catchall {:try_start_18 .. :try_end_39} :catchall_42

    .line 145
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    return-object v0

    :catch_3d
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catchall_42
    move-exception v0

    move-object v1, v2

    goto :goto_61

    :catch_45
    move-exception v0

    move-object v1, v2

    goto :goto_54

    .line 145
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_5c

    :catch_4c
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5c

    :catchall_51
    move-exception v0

    goto :goto_61

    :catch_53
    move-exception v0

    .line 141
    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    if-eqz v1, :cond_5c

    .line 145
    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_4c

    .line 151
    :cond_5c
    :goto_5c
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraUtils;->sHardware:Ljava/lang/String;

    return-object v0

    :goto_61
    if-eqz v1, :cond_6b

    .line 145
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :cond_6b
    :goto_6b
    throw v0
.end method

.method public static getClosestFpsRange([ILjava/util/List;)[I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 171
    const-string v0, "TECameraUtils"

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_99

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_99

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 175
    aget v8, p0, v3

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_3c

    .line 176
    aget v8, v7, v2

    const/16 v9, 0x7530

    if-ne v8, v9, :cond_38

    .line 177
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 179
    :cond_38
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 182
    :cond_3c
    aget v8, v7, v2

    if-ne v8, v1, :cond_44

    .line 183
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 185
    :cond_44
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 191
    :cond_48
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 192
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraUtils$1;

    invoke-direct {v1}, Lcom/ss/android/ttvecamera/TECameraUtils$1;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v3

    :cond_5b
    if-ge v5, v1, :cond_6c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, [I

    .line 200
    aget v7, v6, v3

    aget v8, p0, v3

    if-gt v7, v8, :cond_5b

    goto :goto_6d

    :cond_6c
    const/4 v6, 0x0

    :goto_6d
    if-nez v6, :cond_73

    .line 210
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRangeFromRest([ILjava/util/List;)[I

    move-result-object v6

    .line 212
    :cond_73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculate fps range = ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v6, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v6, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 214
    :cond_99
    const-string p0, "supported fpsRange is null,use [7,30]"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 215
    new-array p0, p0, [I

    const/4 p1, 0x7

    aput p1, p0, v3

    aput v1, p0, v2

    return-object p0
.end method

.method public static getClosestFpsRangeFromRest([ILjava/util/List;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraUtils$2;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/TECameraUtils$2;-><init>([I)V

    .line 244
    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraUtils$5;

    invoke-direct {v0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils$5;-><init>(Landroid/util/Size;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraUtils$4;

    invoke-direct {v0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils$4;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;IF)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            "IF)",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    if-eqz p1, :cond_38

    .line 410
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFrameSizei;->isValid()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 411
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 412
    iget v1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 413
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 415
    iget v4, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float v3, v1, v4

    .line 416
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p3

    if-lez v3, :cond_16

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 422
    :cond_38
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraUtils$7;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TECameraUtils$7;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 430
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 432
    iget v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-gt v2, p2, :cond_44

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    .line 439
    :goto_56
    sget-byte v0, Lcom/ss/android/ttvecamera/TECameraUtils;->mOptionFlags:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_71

    if-eqz v1, :cond_6a

    .line 440
    iget v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-le v0, v2, :cond_6a

    iget v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-gt v0, v2, :cond_86

    .line 444
    :cond_6a
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcHighCpuPictureSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    if-eqz p0, :cond_86

    goto :goto_85

    :cond_71
    if-eqz v1, :cond_7f

    .line 450
    iget v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-lt v0, v2, :cond_7f

    iget v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ge v0, v2, :cond_86

    .line 454
    :cond_7f
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcHighCpuPictureSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    if-eqz p0, :cond_86

    :goto_85
    move-object v1, p0

    :cond_86
    if-nez v1, :cond_ae

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClosestSupportedSize failed, maxWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", accuracy: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", previewSize: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraUtils"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    return-object v1
.end method

.method public static getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ")",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 353
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TEFrameSizei;->isValid()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 354
    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TEFrameSizei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object p2

    .line 358
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 359
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 361
    iget v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    mul-int/2addr v2, v3

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    mul-int/2addr v1, v3

    if-eq v2, v1, :cond_19

    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 367
    :cond_35
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraUtils$6;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/TECameraUtils$6;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_42
    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-nez p1, :cond_52

    :goto_50
    move-object p1, v0

    goto :goto_42

    .line 381
    :cond_52
    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v1, v2, :cond_5f

    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne v1, v2, :cond_5f

    return-object v0

    .line 386
    :cond_5f
    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-le v1, v2, :cond_6a

    iget v3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ge v1, v3, :cond_6a

    goto :goto_50

    :cond_6a
    if-ge v1, v2, :cond_42

    :cond_6c
    return-object p1
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)I
    .registers 2

    .line 478
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 479
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const/16 p0, 0x10e

    return p0

    :cond_1e
    const/16 p0, 0xb4

    return p0

    :cond_21
    const/16 p0, 0x5a

    return p0
.end method

.method public static getFixedFpsRange([ILjava/util/List;)[I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 249
    const-string v0, "TECameraUtils"

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_99

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_99

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 255
    aget v8, v7, v3

    aget v9, v7, v2

    if-ne v8, v9, :cond_32

    .line 256
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 258
    :cond_32
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 263
    :cond_36
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6c

    .line 264
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraUtils$3;

    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraUtils$3;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_49
    if-ge v6, v5, :cond_6c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, [I

    .line 272
    aget v8, v7, v2

    const/16 v9, 0xf

    if-lt v8, v9, :cond_5b

    if-le v8, v1, :cond_65

    :cond_5b
    const/16 v9, 0x3a98

    if-lt v8, v9, :cond_49

    aget v8, v7, v3

    const/16 v9, 0x7530

    if-gt v8, v9, :cond_49

    :cond_65
    aget v8, p0, v3

    aget v9, v7, v3

    if-ne v8, v9, :cond_49

    goto :goto_6d

    :cond_6c
    const/4 v7, 0x0

    :goto_6d
    if-nez v7, :cond_73

    .line 282
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRangeFromRest([ILjava/util/List;)[I

    move-result-object v7

    .line 285
    :cond_73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculate fps range = ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v7, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v7, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 287
    :cond_99
    const-string p0, "supported fpsRange is null,use [30,30]"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 288
    new-array p0, p0, [I

    aput v1, p0, v2

    aput v1, p0, v3

    return-object p0
.end method

.method public static getFpsRange(II[ILjava/util/List;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requiredFpsRange : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TECameraUtils"

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v2, :cond_35

    .line 298
    const-string p0, "fixed framerate for all cameras"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getFixedFpsRange([ILjava/util/List;)[I

    move-result-object p0

    return-object p0

    :cond_35
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4e

    if-nez p1, :cond_44

    .line 302
    const-string p0, "fixed framerate for rear camera"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getFixedFpsRange([ILjava/util/List;)[I

    move-result-object p0

    return-object p0

    .line 305
    :cond_44
    const-string p0, "dynamic framerate for front camera"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRange([ILjava/util/List;)[I

    move-result-object p0

    return-object p0

    :cond_4e
    const/4 p1, 0x3

    if-ne p0, p1, :cond_5b

    .line 309
    const-string p0, "dynamic framerate without select"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRangeFromRest([ILjava/util/List;)[I

    move-result-object p0

    return-object p0

    :cond_5b
    const/4 p1, 0x4

    if-ne p0, p1, :cond_89

    .line 312
    const-string p0, "framerate by user"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 314
    aget v0, p1, v1

    aget v3, p2, v1

    if-ne v0, v3, :cond_67

    aget p1, p1, v2

    aget v0, p2, v2

    if-ne p1, v0, :cond_67

    move-object p0, p2

    goto :goto_82

    :cond_81
    const/4 p0, 0x0

    :goto_82
    if-nez p0, :cond_88

    .line 320
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRange([ILjava/util/List;)[I

    move-result-object p0

    :cond_88
    return-object p0

    .line 323
    :cond_89
    const-string p0, "dynamic framerate"

    invoke-static {v3, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p2, p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestFpsRange([ILjava/util/List;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSameFrameSize(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 820
    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static getTakePickMaxSide()I
    .registers 1

    .line 698
    sget v0, Lcom/ss/android/ttvecamera/TECameraUtils;->sTakePickMaxSide:I

    return v0
.end method

.method public static imageToNV21(Landroid/media/Image;[B)Z
    .registers 14

    .line 832
    const-string v0, "TECameraUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    .line 833
    const-string p0, "image is null"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 837
    :cond_b
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2c

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image format wrong: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2c
    if-nez p1, :cond_34

    .line 843
    const-string p0, "output buffer is null"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 847
    :cond_34
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 848
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 849
    array-length v4, p1

    mul-int v5, v2, v3

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_4b

    .line 850
    const-string p0, "output buffer size invalid..."

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 854
    :cond_4b
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    move v4, v1

    move v5, v4

    .line 856
    :goto_51
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v4, v6, :cond_be

    .line 857
    aget-object v6, p0, v4

    .line 858
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    if-nez v8, :cond_5e

    return v1

    .line 864
    :cond_5e
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    if-gtz v9, :cond_79

    .line 867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageToNV21, rowStride: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v2

    .line 869
    :cond_79
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    if-gtz v6, :cond_94

    .line 871
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imageToNV21, pixelStride: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_94
    move v7, v6

    .line 874
    :goto_95
    div-int v6, v3, v7

    if-ne v9, v2, :cond_a3

    mul-int/2addr v9, v6

    .line 877
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-virtual {v8, p1, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v9

    goto :goto_bb

    :cond_a3
    move v7, v1

    :goto_a4
    add-int/lit8 v10, v6, -0x1

    if-ge v7, v10, :cond_af

    .line 881
    invoke-virtual {v8, p1, v5, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    .line 884
    :cond_af
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 885
    invoke-virtual {v8, p1, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v2

    :goto_bb
    add-int/lit8 v4, v4, 0x2

    goto :goto_51

    :cond_be
    return v7
.end method

.method public static isHighPerformanceCpu()Z
    .registers 1

    .line 402
    sget-boolean v0, Lcom/ss/android/ttvecamera/TECameraUtils;->isHighPerformanceCpu:Z

    return v0
.end method

.method public static isInAbortCapturesBlockList()Z
    .registers 1

    .line 779
    sget-boolean v0, Lcom/ss/android/ttvecamera/TECameraUtils;->isInAbortCapturesBlockList:Z

    return v0
.end method

.method public static isSupportCameraV2AutoFocus()Z
    .registers 2

    .line 815
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportsCamera2(Landroid/content/Context;)Z
    .registers 8

    .line 984
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 988
    :try_start_3
    const-string v2, "supportsCamera2ApiLocked"

    .line 989
    const-string v3, "0"

    .line 990
    const-string v4, "camera"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 993
    const-class v4, Ljava/lang/Class;

    const-string v5, "getDeclaredMethod"

    const-class v6, [Ljava/lang/Class;

    filled-new-array {v0, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 994
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 996
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    return p0

    :catchall_3d
    move-exception p0

    .line 1005
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static isValidRect(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p0, :cond_1a

    .line 783
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1a

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ltz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 533
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    neg-int p0, p0

    int-to-float p0, p0

    .line 536
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 537
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 538
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 539
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 540
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 542
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 543
    iget v2, p0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 544
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 545
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 547
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 549
    iget p0, v1, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget p1, v1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static saveJPEGToPath([BLjava/lang/String;)V
    .registers 6

    .line 899
    const-string v0, "close FileOutputStream failed!"

    const-string v1, "TECameraUtils"

    if-nez p0, :cond_c

    .line 900
    const-string p0, "Input null data, failed to save jpeg!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 906
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2b
    .catchall {:try_start_d .. :try_end_12} :catchall_29

    .line 907
    :try_start_12
    array-length p1, p0

    const/4 v2, 0x0

    invoke-virtual {v3, p0, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_26
    .catchall {:try_start_12 .. :try_end_17} :catchall_23

    .line 915
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 918
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_23
    move-exception p0

    move-object v2, v3

    goto :goto_42

    :catch_26
    move-exception p0

    move-object v2, v3

    goto :goto_2c

    :catchall_29
    move-exception p0

    goto :goto_42

    :catch_2b
    move-exception p0

    .line 909
    :goto_2c
    :try_start_2c
    const-string p1, "save jpeg failed\uff01"

    invoke-static {v1, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    if-eqz v2, :cond_41

    .line 915
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    move-exception p0

    .line 918
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_41
    :goto_41
    return-void

    :goto_42
    if-eqz v2, :cond_4f

    .line 915
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4f

    :catch_48
    move-exception p1

    .line 918
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 921
    :cond_4f
    :goto_4f
    throw p0
.end method

.method public static saveYUVToPath([Landroid/media/Image$Plane;IILjava/lang/String;)V
    .registers 8

    .line 934
    const-string v0, "close FileOutputStream failed!"

    const-string v1, "TECameraUtils"

    if-nez p0, :cond_c

    .line 935
    const-string p0, "Input null plane, failed to save yuv!"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 942
    aget-object v3, p0, v2

    if-eqz v3, :cond_93

    const/16 v3, 0x10

    .line 943
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 944
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 945
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p2, p0, v2

    .line 946
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p2, p0, v2

    .line 947
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 954
    :try_start_33
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_6e
    .catchall {:try_start_33 .. :try_end_38} :catchall_6c

    .line 955
    :try_start_38
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 957
    array-length p1, p0

    :goto_40
    if-ge v2, p1, :cond_60

    aget-object p3, p0, v2

    .line 958
    invoke-virtual {p3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 959
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 961
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 962
    invoke-virtual {p2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 964
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_57} :catch_5d
    .catchall {:try_start_38 .. :try_end_57} :catchall_5a

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :catchall_5a
    move-exception p0

    move-object p1, p2

    goto :goto_85

    :catch_5d
    move-exception p0

    move-object p1, p2

    goto :goto_6f

    .line 973
    :cond_60
    :try_start_60
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception p0

    .line 976
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_6c
    move-exception p0

    goto :goto_85

    :catch_6e
    move-exception p0

    .line 967
    :goto_6f
    :try_start_6f
    const-string p2, "save yuv failed!"

    invoke-static {v1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_6c

    if-eqz p1, :cond_84

    .line 973
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_84

    :catch_7d
    move-exception p0

    .line 976
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_84
    :goto_84
    return-void

    :goto_85
    if-eqz p1, :cond_92

    .line 973
    :try_start_87
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_92

    :catch_8b
    move-exception p1

    .line 976
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 979
    :cond_92
    :goto_92
    throw p0

    .line 949
    :cond_93
    const-string p0, "save yuv failed, plane is null"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTakePickMaxSide(I)V
    .registers 1

    .line 702
    sput p0, Lcom/ss/android/ttvecamera/TECameraUtils;->sTakePickMaxSide:I

    return-void
.end method
