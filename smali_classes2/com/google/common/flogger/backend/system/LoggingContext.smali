.class public abstract Lcom/google/common/flogger/backend/system/LoggingContext;
.super Lcom/google/common/flogger/context/ContextDataProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;-><init>(Lcom/google/common/flogger/backend/system/LoggingContext$1;)V

    sput-object v0, Lcom/google/common/flogger/backend/system/LoggingContext;->NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextDataProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .registers 1

    .line 36
    sget-object p0, Lcom/google/common/flogger/backend/system/LoggingContext;->NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-object p0
.end method
