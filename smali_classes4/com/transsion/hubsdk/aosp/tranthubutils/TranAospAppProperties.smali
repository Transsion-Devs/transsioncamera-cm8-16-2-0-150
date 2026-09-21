.class public Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-string v0, "com.transsion.hubsdk.tranthubutils.TranAppProperties"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    if-nez p0, :cond_7

    .line 32
    const-string p0, ""

    return-object p0

    .line 34
    :cond_7
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 22
    sget-object p0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 25
    :cond_6
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 4

    .line 13
    sget-object p0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    if-nez p0, :cond_5

    return-void

    .line 16
    :cond_5
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initialize"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 17
    sget-object v0, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;->sClass:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
