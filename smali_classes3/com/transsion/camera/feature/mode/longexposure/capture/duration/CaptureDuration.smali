.class public Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTO_CAPTURE_FRAME:I = 0x16

.field private static final CORRECT_COEFFICIENT:F = 1.1f

.field private static final CORRECT_DURATION:J = 0x50L

.field private static final MAX_DURATION:J = 0x927c0L

.field private static final MIN_CAPTURE_TIME_STAR:J = 0x3a98L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

.field private final mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

.field private final mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    .line 49
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    .line 50
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    return-void
.end method

.method private calculateAutoDuration()J
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getCurrentBv()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getAeDrvBty()I

    move-result p0

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable;->getParam(II)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 85
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateAutoDuration param is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 88
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->getExposureTime()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    const-wide/16 v2, 0x16

    mul-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public getCaptureDuration(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getCaptureDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 56
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getCaptureDuration duration is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_15
    const-string v1, "stellartrack"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "infinity"

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->isDay()Z

    move-result p1

    if-eqz p1, :cond_28

    move-object v0, v1

    .line 65
    :cond_28
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_DOWN:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    .line 66
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->calculateAutoDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_67

    .line 68
    :cond_3d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 70
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    const-wide/32 v0, 0x927c0

    goto :goto_67

    .line 73
    :cond_49
    :try_start_49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_67

    .line 75
    :catch_4e
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/duration/CaptureDuration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCaptureDuration parse exception, duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-wide v0, v1

    .line 79
    :goto_67
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;-><init>(JLcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;)V

    return-object p0
.end method
