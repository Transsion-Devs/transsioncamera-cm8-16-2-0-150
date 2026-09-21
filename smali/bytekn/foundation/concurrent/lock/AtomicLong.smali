.class public final Lbytekn/foundation/concurrent/lock/AtomicLong;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lbytekn/foundation/concurrent/lock/AtomicLong;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final incrementAndGet()J
    .registers 3

    .line 19
    iget-object p0, p0, Lbytekn/foundation/concurrent/lock/AtomicLong;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method
