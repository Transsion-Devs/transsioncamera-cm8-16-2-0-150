.class final Lkotlinx/coroutines/scheduling/TaskContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# instance fields
.field private final taskMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    return-void
.end method


# virtual methods
.method public afterTask()V
    .registers 1

    return-void
.end method

.method public getTaskMode()I
    .registers 1

    .line 70
    iget p0, p0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    return p0
.end method
