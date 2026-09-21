.class final Lcom/google/common/flogger/util/JavaLangAccessStackGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/util/StackGetter;


# static fields
.field private static final access:Lsun/misc/JavaLangAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaLangAccess()Lsun/misc/JavaLangAccess;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findCallerIndex(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 62
    sget-object p0, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    invoke-interface {p0, p1}, Lsun/misc/JavaLangAccess;->getStackTraceDepth(Ljava/lang/Throwable;)I

    move-result p0

    .line 64
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_b
    if-ge p3, p0, :cond_25

    .line 66
    sget-object v1, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    invoke-interface {v1, p1, p3}, Lsun/misc/JavaLangAccess;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_22

    :cond_1f
    if-eqz v0, :cond_22

    return p3

    :cond_22
    :goto_22
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_25
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

    .line 35
    :goto_6
    const-string v2, "skipFrames must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    add-int/2addr p2, v0

    .line 37
    invoke-direct {p0, v1, p1, p2}, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->findCallerIndex(Ljava/lang/Throwable;Ljava/lang/Class;I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_1a
    sget-object p1, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    invoke-interface {p1, v1, p0}, Lsun/misc/JavaLangAccess;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object p0

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

    .line 43
    :goto_b
    const-string v4, "maxDepth must be > 0 or -1"

    invoke-static {v3, v4}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_14

    move v3, v0

    goto :goto_15

    :cond_14
    move v3, v1

    .line 44
    :goto_15
    const-string v4, "skipFrames must be >= 0"

    invoke-static {v3, v4}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 45
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    add-int/2addr p3, v0

    .line 46
    invoke-direct {p0, v3, p1, p3}, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->findCallerIndex(Ljava/lang/Throwable;Ljava/lang/Class;I)I

    move-result p0

    if-ne p0, v2, :cond_29

    .line 48
    new-array p0, v1, [Ljava/lang/StackTraceElement;

    return-object p0

    .line 50
    :cond_29
    sget-object p1, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    invoke-interface {p1, v3}, Lsun/misc/JavaLangAccess;->getStackTraceDepth(Ljava/lang/Throwable;)I

    move-result p1

    sub-int/2addr p1, p0

    if-lez p2, :cond_35

    if-ge p2, p1, :cond_35

    goto :goto_36

    :cond_35
    move p2, p1

    .line 54
    :goto_36
    new-array p1, p2, [Ljava/lang/StackTraceElement;

    :goto_38
    if-ge v1, p2, :cond_47

    .line 56
    sget-object p3, Lcom/google/common/flogger/util/JavaLangAccessStackGetter;->access:Lsun/misc/JavaLangAccess;

    add-int v0, p0, v1

    invoke-interface {p3, v3, v0}, Lsun/misc/JavaLangAccess;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object p3

    aput-object p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_47
    return-object p1
.end method
