.class public final Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;


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

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V
    .registers 12

    const-string p3, "segment"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "slot"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getWidth()F

    move-result p2

    invoke-direct {v1, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 68
    new-instance v2, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getHeight()F

    move-result p2

    invoke-direct {v2, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 69
    new-instance v3, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getCenterX()F

    move-result p2

    invoke-direct {v3, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 70
    new-instance v4, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getCenterY()F

    move-result p2

    invoke-direct {v4, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 71
    new-instance v5, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getRotation()F

    move-result p2

    invoke-direct {v5, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 72
    new-instance v6, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getFeather()F

    move-result p2

    invoke-direct {v6, p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 73
    new-instance v7, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getRoundCorner()F

    move-result p1

    invoke-direct {v7, p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 59
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 60
    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 61
    iput-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 62
    iput-object p5, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 63
    iput-object p6, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 64
    iput-object p7, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_8

    .line 58
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p1

    :cond_8
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_10

    .line 59
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    :cond_10
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_18

    .line 60
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p3

    :cond_18
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_20

    .line 61
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p4

    :cond_20
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_28

    .line 62
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p5

    :cond_28
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_30

    .line 63
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p6

    :cond_30
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_38

    .line 64
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

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

    .line 57
    invoke-direct/range {p2 .. p9}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component4()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component5()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component6()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component7()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;
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

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    return v2

    :cond_59
    return v0
.end method

.method public final getCenterX()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getCenterY()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getFeather()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getHeight()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getRoundCorner()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getWidth()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

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

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->width:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->height:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerX:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->centerY:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->feather:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roundCorner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->roundCorner:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
