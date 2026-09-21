.class final Lcom/google/common/flogger/util/ThrowableStackGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/util/StackGetter;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findCallerIndex([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 58
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 59
    :goto_5
    array-length v0, p1

    if-ge p3, v0, :cond_1c

    .line 60
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p2, 0x1

    goto :goto_19

    :cond_16
    if-eqz p2, :cond_19

    return p3

    :cond_19
    :goto_19
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public callerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 28
    :goto_6
    const-string v2, "skipFrames must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 29
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    add-int/2addr p2, v0

    .line 30
    invoke-direct {p0, v1, p1, p2}, Lcom/google/common/flogger/util/ThrowableStackGetter;->findCallerIndex([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1f

    .line 32
    aget-object p0, v1, p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStackForCaller(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_a

    if-lez p2, :cond_8

    goto :goto_a

    :cond_8
    move v3, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v3, v0

    .line 40
    :goto_b
    const-string v4, "maxDepth must be > 0 or -1"

    invoke-static {v3, v4}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_14

    move v3, v0

    goto :goto_15

    :cond_14
    move v3, v1

    .line 41
    :goto_15
    const-string v4, "skipFrames must be >= 0"

    invoke-static {v3, v4}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 42
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/2addr p3, v0

    .line 43
    invoke-direct {p0, v3, p1, p3}, Lcom/google/common/flogger/util/ThrowableStackGetter;->findCallerIndex([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p0

    if-ne p0, v2, :cond_2d

    .line 45
    new-array p0, v1, [Ljava/lang/StackTraceElement;

    return-object p0

    .line 47
    :cond_2d
    array-length p1, v3

    sub-int/2addr p1, p0

    if-lez p2, :cond_34

    if-ge p2, p1, :cond_34

    goto :goto_35

    :cond_34
    move p2, p1

    .line 51
    :goto_35
    new-array p1, p2, [Ljava/lang/StackTraceElement;

    .line 52
    invoke-static {v3, p0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
