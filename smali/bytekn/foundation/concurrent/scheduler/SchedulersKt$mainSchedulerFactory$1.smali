.class final synthetic Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/SchedulersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;-><init>()V

    sput-object v0, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;->INSTANCE:Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    const-string p0, "createMainScheduler"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .registers 2

    const-class p0, Lbytekn/foundation/concurrent/scheduler/CreateMainSchedulerKt;

    const-string v0, "kn_common_release"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 1

    const-string p0, "createMainScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;"

    return-object p0
.end method

.method public final invoke()Lbytekn/foundation/concurrent/scheduler/Scheduler;
    .registers 1

    .line 26
    invoke-static {}, Lbytekn/foundation/concurrent/scheduler/CreateMainSchedulerKt;->createMainScheduler()Lbytekn/foundation/concurrent/scheduler/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lbytekn/foundation/concurrent/scheduler/SchedulersKt$mainSchedulerFactory$1;->invoke()Lbytekn/foundation/concurrent/scheduler/Scheduler;

    move-result-object p0

    return-object p0
.end method
