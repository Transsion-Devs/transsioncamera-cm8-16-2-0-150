.class public final Lbytekn/foundation/utils/Stopwatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/utils/Stopwatch$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/utils/Stopwatch$Companion;


# instance fields
.field private startTick:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/utils/Stopwatch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/utils/Stopwatch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/utils/Stopwatch;->Companion:Lbytekn/foundation/utils/Stopwatch$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbytekn/foundation/utils/Stopwatch;->startTick:J

    return-void
.end method
