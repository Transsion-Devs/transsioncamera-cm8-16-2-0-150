.class public final Lcom/google/common/flogger/context/LogLevelMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/LogLevelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultLevel:Ljava/util/logging/Level;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    .line 45
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/LogLevelMap$1;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/google/common/flogger/context/LogLevelMap$Builder;-><init>()V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/util/logging/Level;)V
    .registers 4

    .line 50
    iget-object p0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    .line 51
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate entry for class/package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs add(Ljava/util/logging/Level;[Ljava/lang/Class;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/flogger/context/LogLevelMap$Builder;"
        }
    .end annotation

    .line 58
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p2, v1

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;->put(Ljava/lang/String;Ljava/util/logging/Level;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public varargs add(Ljava/util/logging/Level;[Ljava/lang/Package;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .registers 6

    .line 67
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p2, v1

    .line 68
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;->put(Ljava/lang/String;Ljava/util/logging/Level;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public build()Lcom/google/common/flogger/context/LogLevelMap;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->map:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method

.method public setDefault(Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "default log level must not be null"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/google/common/flogger/context/LogLevelMap$Builder;->defaultLevel:Ljava/util/logging/Level;

    return-object p0
.end method
