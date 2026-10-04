.class final Lkotlinx/coroutines/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finishing"
.end annotation


# static fields
.field private static final synthetic _exceptionsHolder$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _isCompleting$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _rootCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _exceptionsHolder$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleting$volatile:I

.field private volatile synthetic _rootCause$volatile:Ljava/lang/Object;

.field private final list:Lkotlinx/coroutines/NodeList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "_isCompleting$volatile"

    const-class v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_rootCause$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_exceptionsHolder$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V
    .registers 4

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    .line 1080
    iput p2, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting$volatile:I

    .line 1085
    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final allocateList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1139
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method private final getExceptionsHolder()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_exceptionsHolder$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1092
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic get_exceptionsHolder$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_exceptionsHolder$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_isCompleting$volatile()I
    .registers 1

    iget p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting$volatile:I

    return p0
.end method

.method private static final synthetic get_isCompleting$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_rootCause$volatile()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_rootCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final setExceptionsHolder(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_exceptionsHolder$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1093
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic set_exceptionsHolder$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_isCompleting$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting$volatile:I

    return-void
.end method

.method private final synthetic set_rootCause$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addExceptionLocked(Ljava/lang/Throwable;)V
    .registers 4

    .line 1118
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1120
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setRootCause(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    if-ne p1, v0, :cond_d

    goto :goto_1d

    .line 1124
    :cond_d
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1125
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    return-void

    .line 1126
    :cond_17
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    if-ne p1, v0, :cond_1e

    :goto_1d
    return-void

    .line 1128
    :cond_1e
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1129
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    return-void

    .line 1134
    :cond_2c
    instance-of p0, v0, Ljava/util/ArrayList;

    if-eqz p0, :cond_36

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getList()Lkotlinx/coroutines/NodeList;
    .registers 1

    .line 1076
    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    return-object p0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_rootCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1087
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    .line 1098
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isCancelling()Z
    .registers 1

    .line 1097
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isCompleting()Z
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_isCompleting$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isSealed()Z
    .registers 2

    .line 1096
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object p0

    # getter for: Lkotlinx/coroutines/JobSupportKt;->SEALED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final sealLocked(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1103
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1104
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1e

    .line 1105
    :cond_b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1e

    .line 1106
    :cond_18
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_3b

    check-cast v0, Ljava/util/ArrayList;

    .line 1109
    :goto_1e
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    .line 1110
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_28
    if-eqz p1, :cond_33

    .line 1111
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_33
    # getter for: Lkotlinx/coroutines/JobSupportKt;->SEALED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    return-object v0

    .line 1106
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompleting(Z)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_isCompleting$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 1083
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setRootCause(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/JobSupport$Finishing;->get_rootCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1088
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
