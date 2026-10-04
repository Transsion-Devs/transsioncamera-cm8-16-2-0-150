.class public Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAsyncThreadAnimImpl"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAsyncThreadAnimImplInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, "android.view.AsyncThreadAnimImpl"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asyncAnimScheduleTraversals(Landroid/view/View;)Z
    .registers 7

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TranAospAsyncThreadAnimImpl"

    if-eqz v0, :cond_33

    if-nez p1, :cond_a

    goto :goto_33

    .line 46
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/view/View;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asyncAnimScheduleTraversals"

    invoke-static {v0, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 48
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 50
    :cond_2d
    const-string p0, "asyncAnimScheduleTraversals method is null!"

    invoke-static {v2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 43
    :cond_33
    :goto_33
    const-string p0, "mObject or target is null!"

    invoke-static {v2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public init(Landroid/os/Looper;)V
    .registers 6

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz v0, :cond_29

    if-nez p1, :cond_9

    goto :goto_29

    .line 32
    :cond_9
    const-class v2, Landroid/os/Looper;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    return-void

    .line 36
    :cond_23
    const-string p0, "Method getInstance not found in sClass or mObject is null"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_29
    :goto_29
    const-string p0, "AsyncThreadAnimImpl Class or looper is null, cannot initialize"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)Z
    .registers 7

    .line 87
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 91
    :cond_a
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewAlpha"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 95
    :cond_2e
    const-string p0, "setViewAlpha method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 88
    :cond_34
    :goto_34
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewScaleX(Landroid/view/View;F)Z
    .registers 7

    .line 57
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 61
    :cond_a
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewScaleX"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :cond_2e
    const-string p0, "setViewScaleX method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 58
    :cond_34
    :goto_34
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewScaleY(Landroid/view/View;F)Z
    .registers 7

    .line 72
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 76
    :cond_a
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewScaleY"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 80
    :cond_2e
    const-string p0, "setViewScaleY method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 73
    :cond_34
    :goto_34
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewTranslationX(Landroid/view/View;F)Z
    .registers 7

    .line 102
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 106
    :cond_a
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewTranslationX"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 108
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 110
    :cond_2e
    const-string p0, "setViewTranslationX method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 103
    :cond_34
    :goto_34
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewTranslationY(Landroid/view/View;F)Z
    .registers 7

    .line 117
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 121
    :cond_a
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewTranslationY"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 123
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 125
    :cond_2e
    const-string p0, "setViewTranslationY method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 118
    :cond_34
    :goto_34
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
