.class public final Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F
    .registers 9

    const-string p0, "rect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "array"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    int-to-float v0, p0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 v1, 0x0

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    int-to-float v1, v0

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/4 v2, 0x1

    aput v1, p4, v2

    int-to-float v1, p0

    div-float/2addr v1, p1

    const/4 v2, 0x2

    aput v1, p4, v2

    int-to-float v1, v0

    iget v2, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    div-float/2addr v1, p2

    const/4 v3, 0x3

    aput v1, p4, v3

    int-to-float v1, p0

    iget p3, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    int-to-float v3, p3

    add-float/2addr v1, v3

    div-float/2addr v1, p1

    const/4 v3, 0x4

    aput v1, p4, v3

    int-to-float v1, v0

    div-float/2addr v1, p2

    const/4 v3, 0x5

    aput v1, p4, v3

    int-to-float p0, p0

    int-to-float p3, p3

    add-float/2addr p0, p3

    div-float/2addr p0, p1

    const/4 p1, 0x6

    aput p0, p4, p1

    int-to-float p0, v0

    int-to-float p1, v2

    add-float/2addr p0, p1

    div-float/2addr p0, p2

    const/4 p1, 0x7

    aput p0, p4, p1

    return-object p4
.end method

.method public final rotate90([F)[F
    .registers 7

    const-string p0, "array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    aget v0, p1, p0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    aput v4, p1, p0

    const/4 p0, 0x3

    aget v4, p1, p0

    aput v4, p1, v1

    const/4 v1, 0x6

    aget v4, p1, v1

    aput v4, p1, v3

    const/4 v3, 0x7

    aget v4, p1, v3

    aput v4, p1, p0

    const/4 p0, 0x4

    aget v4, p1, p0

    aput v4, p1, v1

    const/4 v1, 0x5

    aget v4, p1, v1

    aput v4, p1, v3

    aput v0, p1, p0

    aput v2, p1, v1

    return-object p1
.end method
