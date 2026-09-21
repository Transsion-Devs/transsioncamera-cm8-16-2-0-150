.class Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_CAPACITY:I = 0x5

.field private static final LIMIT_BV:I = -0xf

.field private static final VALID_DURATION:J = 0x4e20L


# instance fields
.field private final mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDetectTime:J

.field private mHighLight:Z


# direct methods
.method public static synthetic $r8$lambda$I1s6yLyslLKzXwGd07padv2Ykzc(Ljava/lang/Integer;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 150
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, -0xf

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Zultye-E3GM1x6jeKoMzvrYq0jU(Ljava/lang/Integer;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 155
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, -0xf

    if-le p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method constructor <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    return-void
.end method

.method private highLightInternal()Z
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private lowLightInternal()Z
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method detect(I)V
    .registers 8

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 112
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mDetectTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->reset()V

    .line 115
    :cond_15
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mDetectTime:J

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->detectImpl(I)V

    return-void
.end method

.method detectImpl(I)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_26

    .line 124
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->lowLightInternal()Z

    move-result p1

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->highLightInternal()Z

    move-result v0

    .line 127
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mHighLight:Z

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mHighLight:Z

    return-void

    :cond_1f
    if-eqz v1, :cond_26

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mHighLight:Z

    :cond_26
    :goto_26
    return-void
.end method

.method highLight()Z
    .registers 5

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 136
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mDetectTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 137
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "invalid BV cache"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_1c
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mHighLight:Z

    return p0
.end method

.method declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mCache:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector$Cache;->clear()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->mHighLight:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 146
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method
