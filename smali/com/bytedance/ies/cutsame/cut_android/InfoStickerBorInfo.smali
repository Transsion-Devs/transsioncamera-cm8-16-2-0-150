.class public final Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final angle:F

.field private final height:F

.field private final width:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFFFF)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    .line 9
    iput p2, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    .line 10
    iput p3, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    .line 11
    iput p4, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    .line 12
    iput p5, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;FFFFFILjava/lang/Object;)Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget p4, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget p5, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    :cond_1e
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->copy(FFFFF)Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    return p0
.end method

.method public final component5()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    return p0
.end method

.method public final copy(FFFFF)Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;
    .registers 6

    new-instance p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;-><init>(FFFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    return v2

    :cond_6b
    return v0
.end method

.method public final getAngle()F
    .registers 1

    .line 12
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    return p0
.end method

.method public final getHeight()F
    .registers 1

    .line 11
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    return p0
.end method

.method public final getWidth()F
    .registers 1

    .line 10
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    return p0
.end method

.method public final getX()F
    .registers 1

    .line 8
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    return p0
.end method

.method public final getY()F
    .registers 1

    .line 9
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoStickerBorInfo(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/InfoStickerBorInfo;->angle:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
