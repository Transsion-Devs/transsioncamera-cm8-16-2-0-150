.class public final Lcom/bytedance/ies/cutsame/util/CanvasUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/CanvasUtils;

.field public static final TAG:Ljava/lang/String; = "CanvasUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/CanvasUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CanvasUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ibaseScaleAspectFit(Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;Lcom/ss/android/vesdk/VESize;)Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;
    .registers 6

    .line 56
    iget p0, p2, Lcom/ss/android/vesdk/VESize;->width:I

    if-nez p0, :cond_1b

    iget p0, p2, Lcom/ss/android/vesdk/VESize;->height:I

    if-nez p0, :cond_1b

    .line 57
    new-instance p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;-><init>(IIII)V

    return-object p0

    .line 59
    :cond_1b
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 60
    iget v0, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v0, v0

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getMarginLeft()I

    move-result p2

    .line 62
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getMarginTop()I

    move-result v1

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_52

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p0

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 69
    new-instance p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    invoke-direct {p1, p2, v1, p0, v0}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;-><init>(IIII)V

    return-object p1

    .line 71
    :cond_52
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result p0

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 74
    new-instance p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    invoke-direct {p1, p2, v1, v0, p0}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;-><init>(IIII)V

    return-object p1
.end method

.method private final ibaseScaleAspectFit(IIII)Lcom/ss/android/vesdk/VESize;
    .registers 7

    int-to-float p0, p3

    int-to-float v0, p1

    div-float/2addr p0, v0

    int-to-float v0, p4

    int-to-float v1, p2

    div-float/2addr v0, v1

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_12

    .line 45
    new-instance p0, Lcom/ss/android/vesdk/VESize;

    mul-int/2addr p4, p1

    div-int/2addr p4, p3

    invoke-direct {p0, p1, p4}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    return-object p0

    .line 47
    :cond_12
    new-instance p0, Lcom/ss/android/vesdk/VESize;

    mul-int/2addr p3, p2

    div-int/2addr p3, p2

    invoke-direct {p0, p3, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public final handleCanvasWidth(Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;II)Lcom/bytedance/ies/cutsame/util/Size;
    .registers 10

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    const-string v1, "original"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 138
    iget v0, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    .line 139
    iget v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    goto/16 :goto_a9

    .line 141
    :cond_15
    const-string v0, "16:9"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    div-int/lit8 v0, p2, 0x10

    mul-int/lit8 v2, v0, 0x9

    :goto_23
    move v0, p2

    goto/16 :goto_a9

    .line 142
    :cond_26
    const-string v0, "1:1"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, p2

    move v2, v0

    goto/16 :goto_a9

    .line 143
    :cond_34
    const-string v0, "3:4"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v2, v0, 0x4

    goto :goto_23

    .line 144
    :cond_43
    const-string v0, "4:3"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v2, v0, 0x3

    goto :goto_23

    .line 145
    :cond_52
    const-string v0, "9:16"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    div-int/lit8 v0, p2, 0x9

    mul-int/lit8 v2, v0, 0x10

    goto :goto_23

    .line 146
    :cond_61
    const-string v0, "2:1"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    div-int/lit8 v2, p2, 0x2

    goto :goto_23

    .line 147
    :cond_6e
    const-string v0, "2.35:1"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    int-to-double v2, p2

    const-wide v4, 0x4002cccccccccccdL    # 2.35

    :goto_7e
    div-double/2addr v2, v4

    :goto_7f
    double-to-int v2, v2

    goto :goto_23

    .line 148
    :cond_81
    const-string v0, "1.85:1"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    int-to-double v2, p2

    const-wide v4, 0x3ffd99999999999aL    # 1.85

    goto :goto_7e

    .line 149
    :cond_92
    const-string v0, "1.125:2.436"

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    int-to-double v2, p2

    const-wide/high16 v4, 0x3ff2000000000000L    # 1.125

    div-double/2addr v2, v4

    const-wide v4, 0x40037ced916872b0L    # 2.436

    mul-double/2addr v2, v4

    goto :goto_7f

    :cond_a7
    move v0, p2

    move v2, p3

    .line 153
    :goto_a9
    filled-new-array {v0, v2}, [I

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0, p2, p3}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->tryFixCanvasSize([III)[I

    move-result-object p0

    .line 157
    iget-object p2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_cb

    .line 158
    aget p2, p0, v0

    add-int/lit8 p2, p2, 0xf

    and-int/lit8 p2, p2, -0x10

    aput p2, p0, v0

    .line 159
    aget p2, p0, p3

    add-int/lit8 p2, p2, 0xf

    and-int/lit8 p2, p2, -0x10

    aput p2, p0, p3

    .line 161
    :cond_cb
    aget p2, p0, v0

    iput p2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    .line 162
    aget p2, p0, p3

    iput p2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCanvasWidth: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CanvasUtils"

    invoke-static {p2, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Lcom/bytedance/ies/cutsame/util/Size;

    aget p2, p0, v0

    aget p0, p0, p3

    invoke-direct {p1, p2, p0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object p1
.end method

.method public final scaleCanvasAspect(Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;",
            "Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation

    const-string v0, "viewOriginInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvasParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v1

    .line 85
    const-string v2, "original"

    iget-object v3, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 86
    iget v0, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    if-lez v0, :cond_36

    iget p2, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    if-gtz p2, :cond_25

    goto :goto_36

    .line 93
    :cond_25
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v2

    .line 90
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->ibaseScaleAspectFit(IIII)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 96
    iget v0, p2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 97
    iget v1, p2, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_8a

    .line 87
    :cond_36
    :goto_36
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v1

    mul-int/lit8 p2, v1, 0x9

    .line 88
    div-int/lit8 v0, p2, 0x10

    goto :goto_8a

    .line 99
    :cond_3f
    const-string v2, "16:9"

    iget-object v3, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    mul-int/lit8 p2, v0, 0x9

    .line 100
    div-int/lit8 v1, p2, 0x10

    goto :goto_8a

    .line 101
    :cond_4e
    const-string v2, "1:1"

    iget-object v3, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    if-ge v0, v1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    move v1, v0

    goto :goto_8a

    .line 104
    :cond_5e
    const-string v2, "3:4"

    iget-object v3, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    mul-int/lit8 p2, v1, 0x3

    .line 105
    div-int/lit8 v0, p2, 0x4

    goto :goto_8a

    .line 106
    :cond_6d
    const-string v2, "4:3"

    iget-object v3, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    mul-int/lit8 p2, v0, 0x3

    .line 107
    div-int/lit8 v1, p2, 0x4

    goto :goto_8a

    .line 108
    :cond_7c
    const-string v2, "9:16"

    iget-object p2, p2, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->ratio:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8a

    mul-int/lit8 p2, v1, 0x9

    .line 109
    div-int/lit8 v0, p2, 0x10

    .line 112
    :cond_8a
    :goto_8a
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_99

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getWidth()I

    move-result p2

    goto :goto_9d

    :cond_99
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->getHeight()I

    move-result p2

    .line 113
    :goto_9d
    invoke-direct {p0, p2, p2, v0, v1}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->ibaseScaleAspectFit(IIII)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/CanvasUtils;->ibaseScaleAspectFit(Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;Lcom/ss/android/vesdk/VESize;)Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    move-result-object p0

    .line 118
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tryFixCanvasSize([III)[I
    .registers 11

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 18
    new-array p0, p0, [I

    int-to-float v0, p2

    const/4 v1, 0x0

    .line 19
    aget v2, p1, v1

    int-to-float v3, v2

    div-float/2addr v0, v3

    int-to-float v3, p3

    const/4 v4, 0x1

    .line 20
    aget v5, p1, v4

    int-to-float v6, v5

    div-float/2addr v3, v6

    cmpl-float v6, v0, v3

    if-lez v6, :cond_20

    int-to-float p2, v2

    mul-float/2addr p2, v3

    float-to-int p2, p2

    .line 22
    aput p2, p0, v1

    .line 23
    aput p3, p0, v4

    goto :goto_27

    .line 25
    :cond_20
    aput p2, p0, v1

    int-to-float p2, v5

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 26
    aput p2, p0, v4

    .line 30
    :goto_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryFixCanvasSize fixed input: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "java.util.Arrays.toString(this)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", output: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string p2, "CanvasUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
