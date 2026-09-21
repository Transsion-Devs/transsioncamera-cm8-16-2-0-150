.class public Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospNvramManager"


# instance fields
.field private mBootClassLoader:Ljava/lang/ClassLoader;

.field private mSystemServerClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mBootClassLoader:Ljava/lang/ClassLoader;

    .line 22
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 24
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->getSystemServerClassLoader()Ljava/lang/ClassLoader;

    return-void
.end method

.method private getSystemServerClassLoader()Ljava/lang/ClassLoader;
    .registers 6

    .line 30
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mBootClassLoader:Ljava/lang/ClassLoader;

    .line 32
    const-string v1, "com.android.internal.os.ZygoteInit"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    const-string v2, "getOrCreateSystemServerClassLoader"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    instance-of v1, v0, Ljava/lang/ClassLoader;

    if-eqz v1, :cond_4c

    .line 39
    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_4c

    :catch_35
    move-exception v0

    .line 42
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemServerClassLoader fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method


# virtual methods
.method public backupToBinRegion_All()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 49
    const-string v0, "vendor.mediatek.hardware.nvram.V1_1.INvram"

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 51
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    const-string v1, "vendor.mediatek.hardware.nvram.V1_1.INvram$Proxy"

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 53
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "readFileByName"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 56
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_47

    .line 57
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .registers 8

    .line 64
    const-string v0, "vendor.mediatek.hardware.nvram.V1_1.INvram"

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    const-string v1, "vendor.mediatek.hardware.nvram.V1_1.INvram$Proxy"

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;->mSystemServerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 68
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeFileByNamevec"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p3, Ljava/util/ArrayList;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_4f

    .line 72
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_4f
    const/4 p0, 0x0

    return p0
.end method
