.class public final Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedPath:Landroid/graphics/Path;

.field private final replacedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const-string v0, "originValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 11
    const-string v2, ","

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ","

    const-string v3, " "

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_20
    move-object v1, p1

    :goto_21
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    return-void
.end method

.method private final operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V
    .registers 15

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v8, v6

    .line 47
    :goto_8
    :try_start_8
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 48
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 49
    const-string v10, "s"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_8

    :cond_1e
    if-nez v1, :cond_24

    .line 50
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_24
    const/4 v10, 0x1

    if-ne v1, v10, :cond_2b

    .line 51
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :cond_2b
    const/4 v10, 0x2

    if-ne v1, v10, :cond_32

    .line 52
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    :cond_32
    const/4 v10, 0x3

    if-ne v1, v10, :cond_39

    .line 53
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :cond_39
    const/4 v10, 0x4

    if-ne v1, v10, :cond_40

    .line 54
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    :cond_40
    const/4 v10, 0x5

    if-ne v1, v10, :cond_47

    .line 55
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_4a

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_4a
    :cond_4a
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 59
    new-instance v6, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v6, v7, v7, v7}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    .line 60
    const-string v9, "M"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 62
    new-instance v6, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v6, v1, v2, v7}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    :cond_64
    move-object v9, v6

    goto :goto_80

    .line 63
    :cond_66
    const-string v9, "m"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 65
    new-instance v9, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v10

    add-float/2addr v10, v1

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v6

    add-float/2addr v6, v2

    invoke-direct {v9, v10, v6, v7}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    .line 67
    :goto_80
    const-string v6, "L"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_97

    .line 69
    :cond_8c
    const-string v6, "l"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 72
    :cond_97
    :goto_97
    const-string v6, "C"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    move-object v0, p1

    move v6, v8

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_b2

    :cond_a5
    move v6, v8

    .line 74
    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move-object v0, p1

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 77
    :cond_b2
    :goto_b2
    const-string v5, "Q"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 78
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_c9

    .line 79
    :cond_be
    const-string v5, "q"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 80
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 82
    :cond_c9
    :goto_c9
    const-string v2, "H"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 83
    invoke-virtual {v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e4

    .line 84
    :cond_d9
    const-string v2, "h"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 85
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 87
    :cond_e4
    :goto_e4
    const-string v2, "V"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 88
    invoke-virtual {v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_ff

    .line 89
    :cond_f4
    const-string v2, "v"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 90
    invoke-virtual {p1, v7, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 92
    :cond_ff
    :goto_ff
    const-string v1, "Z"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_116

    .line 95
    :cond_10b
    const-string v1, "z"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_116
    :goto_116
    return-void
.end method


# virtual methods
.method public final buildPath(Landroid/graphics/Path;)V
    .registers 9

    const-string v0, "toPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_d

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void

    .line 20
    :cond_d
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    const-string v3, "MLHVCSQRAZmlhvcsqraz"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    const-string v2, ""

    move-object v3, v2

    .line 23
    :goto_1f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 25
    const-string v5, "segment"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_35

    goto :goto_1f

    .line 26
    :cond_35
    # getter for: Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->VALID_METHODS:Ljava/util/Set;
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->access$getVALID_METHODS$p()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 28
    const-string v3, "Z"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "z"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_4f
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    :cond_57
    move-object v3, v4

    goto :goto_1f

    .line 31
    :cond_59
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    goto :goto_1f

    .line 34
    :cond_64
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method
