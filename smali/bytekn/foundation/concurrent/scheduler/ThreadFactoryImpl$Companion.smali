.class final Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFactory$p(Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;)Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 18
    invoke-direct {p0}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;->getFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    return-object p0
.end method

.method private final getFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    # getter for: Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->factory$delegate:Lkotlin/Lazy;
    invoke-static {}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->access$getFactory$cp()Lkotlin/Lazy;

    move-result-object p0

    # getter for: Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->Companion:Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;
    invoke-static {}, Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl;->access$Companion()Lbytekn/foundation/concurrent/scheduler/ThreadFactoryImpl$Companion;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
