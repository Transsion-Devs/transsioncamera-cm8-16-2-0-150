.class public final Lorg/koin/core/time/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/time/Timer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/koin/core/time/Timer$Companion;

.field public static final NANO_TO_MILLI:D = 1000000.0


# instance fields
.field private end:J

.field private final start:J

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/koin/core/time/Timer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/time/Timer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/time/Timer;->Companion:Lorg/koin/core/time/Timer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/koin/core/time/Timer;->start:J

    .line 12
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/koin/core/time/Timer;->end:J

    .line 14
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/koin/core/time/Timer;->time:J

    return-void
.end method


# virtual methods
.method public final getEnd-UwyO8pc()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->end:J

    return-wide v0
.end method

.method public final getStart-UwyO8pc()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->start:J

    return-wide v0
.end method

.method public final getTimeInMillis()D
    .registers 3

    .line 24
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->time:J

    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeInNanos()D
    .registers 3

    .line 25
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->time:J

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeInSeconds()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->time:J

    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final stop()V
    .registers 5

    .line 17
    iget-wide v0, p0, Lorg/koin/core/time/Timer;->end:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 18
    sget-object v0, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/koin/core/time/Timer;->end:J

    .line 19
    iget-wide v2, p0, Lorg/koin/core/time/Timer;->start:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/koin/core/time/Timer;->time:J

    :cond_24
    return-void
.end method
