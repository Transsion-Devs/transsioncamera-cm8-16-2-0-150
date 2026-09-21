.class final Lcom/google/common/flogger/context/NoOpContextDataProvider;
.super Lcom/google/common/flogger/context/ContextDataProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;
    }
.end annotation


# static fields
.field private static final NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;


# instance fields
.field private final noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/common/flogger/context/NoOpContextDataProvider;

    invoke-direct {v0}, Lcom/google/common/flogger/context/NoOpContextDataProvider;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/NoOpContextDataProvider;->NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextDataProvider;-><init>()V

    .line 108
    new-instance v0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;-><init>(Lcom/google/common/flogger/context/NoOpContextDataProvider$1;)V

    iput-object v0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider;->noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-void
.end method

.method static final getNoOpInstance()Lcom/google/common/flogger/context/ContextDataProvider;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/common/flogger/context/NoOpContextDataProvider;->NO_OP_INSTANCE:Lcom/google/common/flogger/context/ContextDataProvider;

    return-object v0
.end method


# virtual methods
.method public getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider;->noOpContext:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 117
    const-string p0, "No-op Provider"

    return-object p0
.end method
