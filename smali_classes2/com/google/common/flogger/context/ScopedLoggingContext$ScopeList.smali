.class public final Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopedLoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopeList"
.end annotation


# instance fields
.field private final key:Lcom/google/common/flogger/context/ScopeType;

.field private final next:Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;

.field private final scope:Lcom/google/common/flogger/LoggingScope;


# direct methods
.method public constructor <init>(Lcom/google/common/flogger/context/ScopeType;Lcom/google/common/flogger/LoggingScope;Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;)V
    .registers 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "scope type"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/context/ScopeType;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->key:Lcom/google/common/flogger/context/ScopeType;

    .line 122
    const-string p1, "scope"

    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/LoggingScope;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->scope:Lcom/google/common/flogger/LoggingScope;

    .line 123
    iput-object p3, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->next:Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;

    return-void
.end method

.method public static addScope(Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;
    .registers 4

    if-eqz p1, :cond_12

    .line 100
    invoke-static {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->lookup(Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/LoggingScope;

    move-result-object v0

    if-nez v0, :cond_12

    .line 101
    new-instance v0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;

    invoke-virtual {p1}, Lcom/google/common/flogger/context/ScopeType;->newScope()Lcom/google/common/flogger/LoggingScope;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;-><init>(Lcom/google/common/flogger/context/ScopeType;Lcom/google/common/flogger/LoggingScope;Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;)V

    return-object v0

    :cond_12
    return-object p0
.end method

.method public static lookup(Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/LoggingScope;
    .registers 3

    :goto_0
    if-eqz p0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->key:Lcom/google/common/flogger/context/ScopeType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 109
    iget-object p0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->scope:Lcom/google/common/flogger/LoggingScope;

    return-object p0

    .line 111
    :cond_d
    iget-object p0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;->next:Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;

    goto :goto_0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
