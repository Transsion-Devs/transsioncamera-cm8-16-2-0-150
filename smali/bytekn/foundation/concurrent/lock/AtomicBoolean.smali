.class public final Lbytekn/foundation/concurrent/lock/AtomicBoolean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final atom:Lbytekn/foundation/concurrent/lock/AtomicInt;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lbytekn/foundation/concurrent/lock/AtomicInt;

    invoke-direct {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->boolToInt(Z)I

    move-result p1

    invoke-direct {v0, p1}, Lbytekn/foundation/concurrent/lock/AtomicInt;-><init>(I)V

    iput-object v0, p0, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->atom:Lbytekn/foundation/concurrent/lock/AtomicInt;

    return-void
.end method

.method private final boolToInt(Z)I
    .registers 2

    return p1
.end method


# virtual methods
.method public final getValue()Z
    .registers 1

    .line 25
    iget-object p0, p0, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->atom:Lbytekn/foundation/concurrent/lock/AtomicInt;

    invoke-static {p0}, Lbytekn/foundation/concurrent/lock/AtomicIntKt;->getValue(Lbytekn/foundation/concurrent/lock/AtomicInt;)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final setValue(Z)V
    .registers 3

    .line 27
    iget-object v0, p0, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->atom:Lbytekn/foundation/concurrent/lock/AtomicInt;

    invoke-direct {p0, p1}, Lbytekn/foundation/concurrent/lock/AtomicBoolean;->boolToInt(Z)I

    move-result p0

    invoke-static {v0, p0}, Lbytekn/foundation/concurrent/lock/AtomicIntKt;->setValue(Lbytekn/foundation/concurrent/lock/AtomicInt;I)V

    return-void
.end method
