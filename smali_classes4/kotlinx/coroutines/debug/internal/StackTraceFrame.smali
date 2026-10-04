.class public final Lkotlinx/coroutines/debug/internal/StackTraceFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# instance fields
.field private final callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

.field public final stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/StackTraceFrame;->callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 12
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/StackTraceFrame;->stackTraceElement:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .registers 1

    .line 10
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/StackTraceFrame;->callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 1

    .line 14
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/StackTraceFrame;->stackTraceElement:Ljava/lang/StackTraceElement;

    return-object p0
.end method
