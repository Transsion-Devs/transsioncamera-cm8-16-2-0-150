.class public final Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private density:F

.field private densityDpi:I

.field private scaledDensity:F

.field private screenHeightDp:I

.field private screenWidthDp:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 0
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;-><init>(FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFIII)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    .line 41
    iput p2, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    .line 42
    iput p3, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    .line 43
    iput p4, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    .line 44
    iput p5, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    return-void
.end method

.method public synthetic constructor <init>(FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_8

    .line 40
    # getter for: Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F
    invoke-static {}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->access$getBASE_DENSITY$p()F

    move-result p1

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_e

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_e
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_14

    move p3, v0

    :cond_14
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1a

    const/16 p4, 0x168

    :cond_1a
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_25

    move p7, v0

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    goto :goto_2b

    :cond_25
    move p7, p5

    move p6, p4

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    :goto_2b
    invoke-direct/range {p2 .. p7}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;-><init>(FFIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;FFIIIILjava/lang/Object;)Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget p4, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget p5, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    :cond_1e
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->copy(FFIII)Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    return p0
.end method

.method public final copy(FFIII)Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;
    .registers 6

    new-instance p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;-><init>(FFIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    iget v3, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    iget v3, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    iget v3, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    iget v3, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    iget p1, p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    if-eq p0, p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getDensity()F
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    return p0
.end method

.method public final getDensityDpi()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    return p0
.end method

.method public final getScaledDensity()F
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    return p0
.end method

.method public final getScreenHeightDp()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    return p0
.end method

.method public final getScreenWidthDp()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDensity(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    return-void
.end method

.method public final setDensityDpi(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    return-void
.end method

.method public final setScaledDensity(F)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    return-void
.end method

.method public final setScreenHeightDp(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    return-void
.end method

.method public final setScreenWidthDp(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenWidthDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeightDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->screenHeightDp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
