.class public abstract Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WatermarkService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static addWatermark(Lcom/transsion/camera/app/common/ai/IAIFeature;[BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B
    .registers 7

    .line 34
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "addWatermark start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    :try_start_b
    const-string v2, "key_ai_art_museum"

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIFeature;->getFeature()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 41
    invoke-static {p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->generateAIArtWatermark([BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B

    move-result-object p0

    :goto_1b
    move-object p1, p0

    goto :goto_2b

    :catch_1d
    move-exception p0

    goto :goto_24

    .line 43
    :cond_1f
    invoke-static {p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->generateWatermark([BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_1d

    goto :goto_1b

    .line 46
    :goto_24
    sget-object p2, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "addWatermark failed"

    invoke-static {p2, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_2b
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWatermark end, cost "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private static generateAIArtWatermark([BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B
    .registers 5

    .line 56
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->requestJpeg()[B

    move-result-object v0

    if-nez v0, :cond_f

    .line 58
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addWatermark requestJpeg is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_f
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->watermarkDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 64
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->watermark()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 62
    invoke-static {v1, p1}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkFactoryKt;->newAIArtWatermarkHelper(Ljava/lang/String;Z)Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;

    move-result-object p1

    .line 66
    invoke-interface {p1, p0, v0}, Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;->generate([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static generateWatermark([BLcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;)[B
    .registers 4

    .line 70
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->requestJpeg()[B

    move-result-object v0

    if-nez v0, :cond_f

    .line 72
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addWatermark requestJpeg is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_f
    new-instance v0, Lcom/imaging/libwatermark/WatermarkParam;

    invoke-direct {v0}, Lcom/imaging/libwatermark/WatermarkParam;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->watermarkDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaging/libwatermark/WatermarkParam;->setSpecialItemName(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/imaging/libwatermark/WatermarkState;->OFF_ALL:Lcom/imaging/libwatermark/WatermarkState;

    invoke-virtual {v0, v1}, Lcom/imaging/libwatermark/WatermarkParam;->setWatermarkState(Lcom/imaging/libwatermark/WatermarkState;)V

    .line 79
    new-instance v1, Lcom/imaging/libwatermark/WatermarkHelper;

    invoke-direct {v1, v0}, Lcom/imaging/libwatermark/WatermarkHelper;-><init>(Lcom/imaging/libwatermark/WatermarkParam;)V

    .line 82
    const-string v0, "on"

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->watermark()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 83
    invoke-virtual {v1, p0}, Lcom/imaging/libwatermark/WatermarkHelper;->generatePro([B)[B

    move-result-object p0

    return-object p0

    .line 85
    :cond_36
    invoke-virtual {v1, p0}, Lcom/imaging/libwatermark/WatermarkHelper;->generateOverlay([B)[B

    move-result-object p0

    return-object p0
.end method
