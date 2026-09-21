.class public final Lbytekn/foundation/concurrent/lock/AtomicInt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbytekn/foundation/concurrent/lock/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 1

    .line 13
    iget-object p0, p0, Lbytekn/foundation/concurrent/lock/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final set(I)V
    .registers 2

    .line 17
    iget-object p0, p0, Lbytekn/foundation/concurrent/lock/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
