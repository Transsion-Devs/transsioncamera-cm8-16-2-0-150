.class final Lcom/google/common/flogger/backend/Platform$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    # getter for: Lcom/google/common/flogger/backend/Platform;->AVAILABLE_PLATFORMS:[Ljava/lang/String;
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->loadFirstAvailablePlatform([Ljava/lang/String;)Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/Platform$LazyHolder;->INSTANCE:Lcom/google/common/flogger/backend/Platform;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/flogger/backend/Platform;
    .registers 1

    .line 65
    sget-object v0, Lcom/google/common/flogger/backend/Platform$LazyHolder;->INSTANCE:Lcom/google/common/flogger/backend/Platform;

    return-object v0
.end method

.method private static loadFirstAvailablePlatform([Ljava/lang/String;)Lcom/google/common/flogger/backend/Platform;
    .registers 9

    const/4 v0, 0x0

    .line 72
    :try_start_1
    invoke-static {}, Lcom/google/common/flogger/backend/PlatformProvider;->getPlatform()Lcom/google/common/flogger/backend/Platform;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_a

    return-object v1

    .line 83
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_41

    aget-object v5, p0, v4

    .line 87
    :try_start_16
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/flogger/backend/Platform;
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_25

    return-object v6

    :catchall_25
    move-exception v6

    const/16 v7, 0xa

    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    instance-of v5, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v5, :cond_3b

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    :cond_3b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 98
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No logging platforms found:"

    .line 99
    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
