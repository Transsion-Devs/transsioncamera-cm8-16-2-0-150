.class Lcom/transsion/camera/app/proxy/TranClassInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEBUG:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFuncDefault:Ljava/util/function/Supplier;

.field private volatile mImpl:Ljava/lang/Object;

.field private final mImplClassName:Ljava/lang/String;

.field private final mImplClassNames:[Ljava/lang/String;

.field private final mInterfaceClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranClassInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/proxy/TranClassInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/transsion/camera/app/proxy/TranClassInfo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mInterfaceClass:Ljava/lang/Class;

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mFuncDefault:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImpl()Ljava/lang/Object;
    .registers 8

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    return-object p0

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mInterfaceClass:Ljava/lang/Class;

    monitor-enter v0

    .line 58
    :try_start_a
    iget-object v1, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    if-eqz v1, :cond_15

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto/16 :goto_f4

    .line 62
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mInterfaceClass:Ljava/lang/Class;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_12

    const/4 v2, 0x0

    .line 65
    :try_start_18
    iget-object v3, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2f

    goto :goto_85

    :catchall_2f
    move-exception v3

    .line 70
    :try_start_30
    sget-boolean v4, Lcom/transsion/camera/app/proxy/TranClassInfo;->DEBUG:Z

    if-eqz v4, :cond_59

    .line 71
    sget-object v4, Lcom/transsion/camera/app/proxy/TranClassInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instance failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    .line 73
    :cond_59
    sget-object v4, Lcom/transsion/camera/app/proxy/TranClassInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instance failed. className:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    :goto_85
    iget-object v3, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mInterfaceClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 78
    iput-object v2, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    .line 79
    sget-boolean v3, Lcom/transsion/camera/app/proxy/TranClassInfo;->DEBUG:Z

    if-eqz v3, :cond_f0

    .line 80
    sget-object v3, Lcom/transsion/camera/app/proxy/TranClassInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instance successfully. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_f0

    .line 82
    :cond_b6
    iget-object v3, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mFuncDefault:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    .line 83
    sget-object v3, Lcom/transsion/camera/app/proxy/TranClassInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " instead of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_d8

    goto :goto_da

    :cond_d8
    iget-object v2, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImplClassName:Ljava/lang/String;

    :goto_da
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    :cond_f0
    :goto_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_30 .. :try_end_f1} :catchall_12

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/proxy/TranClassInfo;->mImpl:Ljava/lang/Object;

    return-object p0

    .line 86
    :goto_f4
    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_12

    throw p0
.end method
