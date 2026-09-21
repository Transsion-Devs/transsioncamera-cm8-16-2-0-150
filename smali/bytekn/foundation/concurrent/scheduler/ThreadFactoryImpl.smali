.class public final Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

.field private static final factory$delegate:Lkotlin/Lazy;


# instance fields
.field private final namePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

    .line 19
    sget-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion$factory$2;->INSTANCE:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion$factory$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->factory$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "namePrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->namePrefix:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$Companion()Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;
    .registers 1

    sget-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

    return-object v0
.end method

.method public static final synthetic access$getFactory$cp()Lkotlin/Lazy;
    .registers 1

    .line 6
    sget-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->factory$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

    # invokes: Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;->getFactory()Ljava/util/concurrent/ThreadFactory;
    invoke-static {v0}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;->access$getFactory$p(Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 13
    const-string p0, "factory\n            .new\u2026emon = true\n            }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
