.class public final Lcom/tencent/qgame/animplayer/util/VertexUtil;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/VertexUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final switchX(F)F
    .registers 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method

.method private final switchY(F)F
    .registers 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    sub-float/2addr p1, p0

    const/high16 p0, -0x40800000    # -1.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F
    .registers 7

    const-string v0, "rect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

    const/4 v1, 0x1

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

    const/4 v1, 0x2

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    int-to-float v0, v0

    iget v1, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

    const/4 v1, 0x3

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    int-to-float v0, v0

    iget v1, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result v0

    const/4 v1, 0x4

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result v0

    const/4 v1, 0x5

    aput v0, p4, v1

    iget v0, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    int-to-float v0, v0

    iget v1, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchX(F)F

    move-result p1

    const/4 v0, 0x6

    aput p1, p4, v0

    iget p1, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    int-to-float p1, p1

    iget p3, p3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->switchY(F)F

    move-result p0

    const/4 p1, 0x7

    aput p0, p4, p1

    return-object p4
.end method
