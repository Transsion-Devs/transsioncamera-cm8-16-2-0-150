.class public abstract synthetic Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/lang/StackWalker$StackFrame;)Ljava/lang/StackTraceElement;
    .registers 1

    .line 0
    invoke-interface {p0}, Ljava/lang/StackWalker$StackFrame;->toStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
