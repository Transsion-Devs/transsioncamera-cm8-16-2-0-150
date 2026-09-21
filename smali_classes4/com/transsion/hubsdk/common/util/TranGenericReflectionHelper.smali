.class public Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final checkLock:Ljava/lang/Object;

.field private classExists:Ljava/lang/Boolean;

.field private final existenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExistenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final targetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    .line 28
    iput-object p1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    return-void
.end method

.method private checkClassExistence()Z
    .registers 2

    const/4 v0, 0x0

    .line 155
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    const/4 p0, 0x1

    return p0

    :catch_8
    return v0
.end method

.method private checkFieldExistence(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 169
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    return v0
.end method

.method private checkMethodExistence(Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 141
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    return v0
.end method

.method private generateMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 125
    :goto_b
    array-length v0, p2

    if-ge p1, v0, :cond_21

    if-lez p1, :cond_15

    .line 127
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_15
    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 131
    :cond_21
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearCache()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 192
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    .line 194
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getTargetClassName()Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    return-object p0
.end method

.method public isFieldExists(Ljava/lang/String;)Z
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_18
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 47
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    goto :goto_5f

    .line 51
    :cond_30
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    if-nez v1, :cond_3e

    .line 52
    invoke-direct {p0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkClassExistence()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    .line 56
    :cond_3e
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_50

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 58
    monitor-exit v0

    return p0

    .line 62
    :cond_50
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkFieldExistence(Ljava/lang/String;)Z

    move-result v1

    .line 63
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v0

    return v1

    .line 65
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_18 .. :try_end_60} :catchall_2e

    throw p0
.end method

.method public isMethodExists(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->isMethodExists(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isMethodExists(Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->generateMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 91
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 95
    :cond_19
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_1c
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 98
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_32
    move-exception p0

    goto :goto_63

    .line 102
    :cond_34
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    if-nez v2, :cond_42

    .line 103
    invoke-direct {p0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkClassExistence()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    .line 107
    :cond_42
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_54

    .line 108
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 109
    monitor-exit v1

    return p0

    .line 113
    :cond_54
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkMethodExistence(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p1

    .line 114
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v1

    return p1

    .line 116
    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_1c .. :try_end_64} :catchall_32

    throw p0
.end method
