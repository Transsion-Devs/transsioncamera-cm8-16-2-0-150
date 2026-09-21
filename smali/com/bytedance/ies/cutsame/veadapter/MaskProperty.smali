.class public final Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 0
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V
    .registers 9

    const-string v0, "width"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerX"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerY"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feather"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roundCorner"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 72
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 73
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 74
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 75
    iput-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 76
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 77
    iput-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_8

    .line 71
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p1

    :cond_8
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_10

    .line 72
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p2

    :cond_10
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_18

    .line 73
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p3

    :cond_18
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_20

    .line 74
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p4

    :cond_20
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_28

    .line 75
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p5

    :cond_28
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_30

    .line 76
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p6

    :cond_30
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_38

    .line 77
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p7

    :cond_38
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 70
    invoke-direct/range {p2 .. p9}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 11

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getWidth()D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 81
    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getHeight()D

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 82
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getCenterX()D

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 83
    new-instance v5, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getCenterY()D

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 84
    new-instance v6, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getRotation()D

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 85
    new-instance v7, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getFeather()D

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 86
    new-instance v8, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getMaskConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/MaskConfig;->getRoundCorner()D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    move-object v1, p0

    .line 79
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component4()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component5()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component6()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component7()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;
    .registers 16

    const-string p0, "width"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "height"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "centerX"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "centerY"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotation"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "feather"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "roundCorner"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public final getCenterX()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getCenterY()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getFeather()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getHeight()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getRoundCorner()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getWidth()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskProperty(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->width:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->height:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerX:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->centerY:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->feather:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roundCorner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/MaskProperty;->roundCorner:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
