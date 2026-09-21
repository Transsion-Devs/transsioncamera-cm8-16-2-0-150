.class public Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospTraceManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

.field private mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

.field private mMethodNameBegin:Ljava/lang/reflect/Method;

.field private mMethodNameEnd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-string v0, "android.os.Trace"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    .line 22
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

    .line 23
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public asyncTraceBegin(JLjava/lang/String;I)V
    .registers 9

    .line 57
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

    if-nez v0, :cond_18

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Long;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asyncTraceBegin"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

    .line 62
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncBegin:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception p0

    .line 65
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "asyncTraceBegin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public asyncTraceEnd(JLjava/lang/String;I)V
    .registers 9

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

    if-nez v0, :cond_18

    .line 71
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Long;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asyncTraceEnd"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

    .line 75
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameAsyncEnd:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception p0

    .line 78
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "asyncTraceEnd: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceBegin(JLjava/lang/String;)V
    .registers 8

    .line 28
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    const-string v1, "traceBegin"

    if-nez v0, :cond_16

    .line 29
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    .line 33
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception p0

    .line 37
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "traceBegin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceEnd(J)V
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    if-nez v0, :cond_14

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "traceEnd"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    .line 47
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception p0

    .line 50
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "traceEnd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
