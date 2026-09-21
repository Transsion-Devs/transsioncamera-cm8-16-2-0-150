.class final Lcom/google/common/flogger/util/StackWalkerStackGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/util/StackGetter;


# static fields
.field private static final STACK_WALKER:Ljava/lang/StackWalker;


# direct methods
.method public static synthetic $r8$lambda$6aHZrMBUxLxLKjl-TfoNnLu99rY(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;IILjava/util/stream/Stream;)[Ljava/lang/StackTraceElement;
    .registers 5

    .line 58
    invoke-direct {p0, p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->isTargetClass(Ljava/lang/Class;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1, p2, p4}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->filterStackTraceAfterTarget(Ljava/util/function/Predicate;ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_11

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_12

    :cond_11
    int-to-long p1, p3

    .line 59
    :goto_12
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda6;-><init>()V

    .line 60
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public static synthetic $r8$lambda$nuePAfe5v2IRGOarsJ8LQ-K52Ck(I)[Ljava/lang/StackTraceElement;
    .registers 1

    .line 60
    new-array p0, p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public static synthetic $r8$lambda$rofYdNaDQStM0XYX4YPCxmNQpUk(Ljava/lang/String;Ljava/lang/StackWalker$StackFrame;)Z
    .registers 2

    .line 65
    invoke-static {p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/StackWalker$StackFrame;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vKpM-pV41xNMSIPrVMJgTsgmW6w(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;ILjava/util/stream/Stream;)Ljava/lang/StackTraceElement;
    .registers 4

    .line 47
    invoke-direct {p0, p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->isTargetClass(Ljava/lang/Class;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->filterStackTraceAfterTarget(Ljava/util/function/Predicate;ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline2;->m()Ljava/lang/StackWalker$Option;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/StackWalker$Option;)Ljava/lang/StackWalker;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/util/StackWalkerStackGetter;->STACK_WALKER:Ljava/lang/StackWalker;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/google/common/flogger/util/StackWalkerStackGetter;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->callerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    return-void
.end method

.method private filterStackTraceAfterTarget(Ljava/util/function/Predicate;ILjava/util/stream/Stream;)Ljava/util/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;I",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;)",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    .line 71
    invoke-interface {p3, v0, v1}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    .line 73
    invoke-interface {p1}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 75
    invoke-static {p0, p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda7;-><init>()V

    .line 76
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private isTargetClass(Ljava/lang/Class;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 65
    new-instance p1, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public callerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    if-ltz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 44
    :goto_5
    const-string v1, "skipFrames must be >= 0"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/common/flogger/util/StackWalkerStackGetter;->STACK_WALKER:Ljava/lang/StackWalker;

    new-instance v1, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;-><init>(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;I)V

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/StackWalker;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public getStackForCaller(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_a

    if-lez p2, :cond_8

    goto :goto_a

    :cond_8
    move v0, v2

    goto :goto_b

    :cond_a
    :goto_a
    move v0, v1

    .line 54
    :goto_b
    const-string v3, "maxDepth must be > 0 or -1"

    invoke-static {v0, v3}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    .line 55
    :goto_14
    const-string v0, "skipFrames must be >= 0"

    invoke-static {v1, v0}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 56
    sget-object v0, Lcom/google/common/flogger/util/StackWalkerStackGetter;->STACK_WALKER:Ljava/lang/StackWalker;

    new-instance v1, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;-><init>(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;II)V

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/StackWalker;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method
