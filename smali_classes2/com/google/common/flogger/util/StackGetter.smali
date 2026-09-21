.class interface abstract Lcom/google/common/flogger/util/StackGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation
.end method

.method public abstract getStackForCaller(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation
.end method
