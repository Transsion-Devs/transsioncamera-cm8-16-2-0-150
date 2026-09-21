.class public final Lcom/google/common/flogger/util/CallerFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STACK_GETTER:Lcom/google/common/flogger/util/StackGetter;

.field private static final STACK_GETTER_IMPLEMENTATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/util/CallerFinder;->STACK_GETTER_IMPLEMENTATIONS:[Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/google/common/flogger/util/CallerFinder;->getBestStackGetter()Lcom/google/common/flogger/util/StackGetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/util/CallerFinder;->STACK_GETTER:Lcom/google/common/flogger/util/StackGetter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCallerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 78
    const-string v0, "target"

    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p1, :cond_10

    .line 82
    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->STACK_GETTER:Lcom/google/common/flogger/util/StackGetter;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p0, p1}, Lcom/google/common/flogger/util/StackGetter;->callerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0

    .line 80
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip count cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBestStackGetter()Lcom/google/common/flogger/util/StackGetter;
    .registers 4

    .line 37
    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->STACK_GETTER_IMPLEMENTATIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 38
    invoke-static {v3}, Lcom/google/common/flogger/util/CallerFinder;->maybeCreateStackGetter(Ljava/lang/String;)Lcom/google/common/flogger/util/StackGetter;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 43
    :cond_12
    new-instance v0, Lcom/google/common/flogger/util/ThrowableStackGetter;

    invoke-direct {v0}, Lcom/google/common/flogger/util/ThrowableStackGetter;-><init>()V

    return-object v0
.end method

.method public static getStackForCallerOf(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 96
    const-string v0, "target"

    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p1, :cond_22

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    goto :goto_22

    .line 98
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid maximum depth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    if-ltz p2, :cond_2d

    .line 103
    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->STACK_GETTER:Lcom/google/common/flogger/util/StackGetter;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/flogger/util/StackGetter;->getStackForCaller(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0

    .line 101
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip count cannot be negative: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static maybeCreateStackGetter(Ljava/lang/String;)Lcom/google/common/flogger/util/StackGetter;
    .registers 3

    const/4 v0, 0x0

    .line 48
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/google/common/flogger/util/StackGetter;

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/util/StackGetter;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    return-object v0
.end method
