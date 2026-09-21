.class public final synthetic Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/StackWalker$StackFrame;

    invoke-static {p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/StackWalker$StackFrame;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
