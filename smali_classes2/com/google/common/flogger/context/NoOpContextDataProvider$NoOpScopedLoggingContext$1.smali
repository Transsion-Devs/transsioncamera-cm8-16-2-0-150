.class Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;
.super Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;

    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;

    # invokes: Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V
    invoke-static {v0}, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;->access$100(Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;)V

    .line 69
    iget-object p0, p0, Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/context/NoOpContextDataProvider$NoOpScopedLoggingContext;

    return-object p0
.end method
