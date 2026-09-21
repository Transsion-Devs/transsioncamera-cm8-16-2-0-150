.class public final Lbytekn/foundation/utils/Stopwatch$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/utils/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lbytekn/foundation/utils/Stopwatch$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createStarted()Lbytekn/foundation/utils/Stopwatch;
    .registers 3

    .line 17
    new-instance p0, Lbytekn/foundation/utils/Stopwatch;

    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getUptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbytekn/foundation/utils/Stopwatch;-><init>(J)V

    return-object p0
.end method
