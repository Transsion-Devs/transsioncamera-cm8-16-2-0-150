.class public final Lcom/google/common/flogger/util/RecursionDepth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final holder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/common/flogger/util/RecursionDepth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/google/common/flogger/util/RecursionDepth$1;

    invoke-direct {v0}, Lcom/google/common/flogger/util/RecursionDepth$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/util/RecursionDepth;->holder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    return-void
.end method

.method public static enterLogStatement()Lcom/google/common/flogger/util/RecursionDepth;
    .registers 2

    .line 57
    invoke-static {}, Lcom/google/common/flogger/util/RecursionDepth;->getRecursionDepth()Lcom/google/common/flogger/util/RecursionDepth;

    move-result-object v0

    .line 60
    iget v1, v0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    if-eqz v1, :cond_d

    return-object v0

    .line 61
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Overflow of RecursionDepth (possible error in core library)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getCurrentDepth()I
    .registers 1

    .line 47
    invoke-static {}, Lcom/google/common/flogger/util/RecursionDepth;->getRecursionDepth()Lcom/google/common/flogger/util/RecursionDepth;

    move-result-object v0

    iget v0, v0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    return v0
.end method

.method private static getRecursionDepth()Lcom/google/common/flogger/util/RecursionDepth;
    .registers 1

    .line 42
    sget-object v0, Lcom/google/common/flogger/util/RecursionDepth;->holder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/util/RecursionDepth;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 70
    iget v0, p0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 71
    iput v0, p0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    return-void

    .line 75
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Mismatched calls to RecursionDepth (possible error in core library)"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getValue()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/google/common/flogger/util/RecursionDepth;->value:I

    return p0
.end method
