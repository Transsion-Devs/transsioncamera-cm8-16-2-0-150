.class public Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;


# static fields
.field private static final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

.field private static final METHOD_obtain:Ljava/lang/reflect/Method;

.field private static final METHOD_setAnimCallback:Ljava/lang/reflect/Method;

.field private static final METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

.field private static final METHOD_setInputConnection:Ljava/lang/reflect/Method;

.field private static final METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

.field private static final METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;


# instance fields
.field private final mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 19
    const-string v0, "com.transsion.text.StreamingAnimProcessor"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "obtain"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_obtain:Ljava/lang/reflect/Method;

    .line 24
    const-class v1, Ljava/lang/CharSequence;

    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "handleStreamingOutput"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

    .line 26
    const-class v1, Landroid/view/inputmethod/InputConnection;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setInputConnection"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setInputConnection:Ljava/lang/reflect/Method;

    .line 28
    const-class v1, Ljava/lang/Runnable;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAnimCallback"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setAnimCallback:Ljava/lang/reflect/Method;

    .line 30
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v5, v3, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartAnimParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

    .line 32
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v4, v3

    move-object v6, v5

    move-object v7, v3

    move-object v9, v8

    move-object v10, v8

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUpdateAnimParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;

    .line 35
    const-string v1, "setEndAnimParams"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_obtain:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 5

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 46
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setAnimCallback:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEndAnimParams(I)V
    .registers 3

    .line 78
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 3

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setInputConnection:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartAnimParams(JJII)V
    .registers 8

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 65
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUpdateAnimParams(IIJJIFFF)V
    .registers 12

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 73
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    invoke-static {p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p8

    filled-new-array/range {p1 .. p8}, [Ljava/lang/Object;

    move-result-object p1

    .line 72
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
