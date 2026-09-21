.class public abstract Lcom/transsion/camera/utils/analytics/storage/FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static currentDayHasMaxDetectNumber(Landroid/content/Context;)Z
    .registers 3

    .line 30
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->isCurrentDay(J)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoNumber(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static getFaceInfoMMKV()Lcom/tencent/mmkv/MMKV;
    .registers 1

    .line 17
    const-string v0, "faceinfo"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private static getFaceInfoNumber(Landroid/content/Context;)I
    .registers 3

    .line 46
    invoke-static {}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "facetime"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getFaceInfoTime(Landroid/content/Context;)J
    .registers 4

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "facetime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCurrentDay(J)Z
    .registers 8

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 51
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 55
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 56
    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 57
    invoke-virtual {p1, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 60
    invoke-virtual {v5, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 61
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    invoke-virtual {v5, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 64
    invoke-virtual {v5, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v2, p0

    long-to-int p0, v2

    const p1, 0x5265c00

    div-int/2addr p0, p1

    if-nez p0, :cond_57

    const/4 p0, 0x1

    return p0

    :cond_57
    return v1
.end method

.method private static setFaceInfoNumber(Landroid/content/Context;I)V
    .registers 3

    .line 42
    invoke-static {}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "facenumber"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    return-void
.end method

.method private static setFaceInfoTime(Landroid/content/Context;J)V
    .registers 4

    .line 34
    invoke-static {}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "facetime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;J)Z

    return-void
.end method

.method public static updateFaceInfo(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->isCurrentDay(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 22
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoNumber(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoNumber(Landroid/content/Context;I)V

    goto :goto_17

    .line 24
    :cond_14
    invoke-static {p0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoNumber(Landroid/content/Context;I)V

    .line 26
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoTime(Landroid/content/Context;J)V

    return-void
.end method
