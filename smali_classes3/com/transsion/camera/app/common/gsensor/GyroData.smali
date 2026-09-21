.class public Lcom/transsion/camera/app/common/gsensor/GyroData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mGyroValues:[F


# direct methods
.method public constructor <init>([F)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    return-void
.end method

.method private static format(F)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%+.4f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGyroXAbsValue()F
    .registers 1

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/GyroData;->getGyroXValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroXValue()F
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_d

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    .line 46
    aget p0, p0, v0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public getGyroYAbsValue()F
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/GyroData;->getGyroYValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroYValue()F
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_d

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x1

    .line 57
    aget p0, p0, v0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public getGyroZAbsValue()F
    .registers 1

    .line 72
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/GyroData;->getGyroZValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroZValue()F
    .registers 3

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_d

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x2

    .line 68
    aget p0, p0, v0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    if-nez v0, :cond_7

    .line 27
    const-string p0, "Data{null}"

    return-object p0

    .line 29
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/transsion/camera/app/common/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 30
    invoke-static {v2}, Lcom/transsion/camera/app/common/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/GyroData;->mGyroValues:[F

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Lcom/transsion/camera/app/common/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
