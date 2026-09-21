.class public Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;


# static fields
.field private static final ACTIVITY_CLASS:Ljava/lang/String; = "android.app.ActivityManager"

.field private static final TAG:Ljava/lang/String; = "TranAospUsfManager"


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 18
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    const-string v1, "TranAospUsfManager"

    if-eqz v0, :cond_29

    .line 24
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 26
    :try_start_1a
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_22} :catch_23

    return-void

    .line 28
    :catch_23
    const-string p0, "Class not found: android.app.ActivityManager"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 31
    :cond_29
    const-string p0, "THUB SDK NOT INIT, context is null"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addRuntimeWhiteApp(IZ)Z
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_4d

    .line 155
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz p2, :cond_2d

    .line 156
    :try_start_c
    const-string p2, "addWhiteApp"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 157
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 159
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 162
    :cond_2d
    const-string p2, "removeWhiteApp"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 163
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_44} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_44} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_44} :catch_46

    const/4 p0, 0x1

    return p0

    .line 167
    :catch_46
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: addRuntimeWhiteApp"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 p0, 0x0

    return p0
.end method

.method public enableFastFreezer(Z)Z
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_32

    .line 225
    :try_start_8
    const-string v1, "enableFastFreezer"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 228
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2a} :catch_2b

    return p0

    .line 231
    :catch_2b
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: enableFastFreezer"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public enableHiber(Z)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_29

    .line 39
    :try_start_8
    const-string v1, "enableHiber"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_22

    return-void

    .line 42
    :catch_22
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: enableHiber"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public enableNightNetwork(Z)V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_29

    .line 277
    :try_start_8
    const-string v1, "enableNightNetwork"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 278
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_22

    return-void

    .line 280
    :catch_22
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: enableNightNetwork"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public fastFreeze(Ljava/lang/String;)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 253
    :try_start_8
    const-string v1, "fastFreeze"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 254
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1d} :catch_1e

    return-void

    .line 256
    :catch_1e
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: fastFreeze"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public fastFreezeTemporarily(Ljava/lang/String;J)V
    .registers 8

    .line 239
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_2b

    .line 241
    :try_start_8
    const-string v1, "fastFreezeTemporarily"

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_23} :catch_24

    return-void

    .line 244
    :catch_24
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: fastFreezeTemporarily"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public fastUnfreeze(Ljava/lang/String;)V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 265
    :try_start_8
    const-string v1, "fastUnfreeze"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 266
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1d} :catch_1e

    return-void

    .line 268
    :catch_1e
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: fastUnfreeze"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public freeze(ILjava/lang/String;)I
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_34

    .line 127
    :try_start_8
    const-string v1, "freeze"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 128
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 130
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2c} :catch_2d

    return p0

    .line 133
    :catch_2d
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: freeze"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public getAppListMode(I)[I
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_2e

    .line 95
    :try_start_8
    const-string v1, "getAppListMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 98
    check-cast p0, [I
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_26} :catch_27

    return-object p0

    .line 101
    :catch_27
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: getAppListMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p0, 0x0

    .line 104
    new-array p0, p0, [I

    return-object p0
.end method

.method public getAppMode(I)I
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_32

    .line 79
    :try_start_8
    const-string v1, "getAppMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 82
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2a} :catch_2b

    return p0

    .line 85
    :catch_2b
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: getAppMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, -0x1

    return p0
.end method

.method public getUnfreezeReason(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 191
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_30

    .line 193
    :try_start_8
    const-string v1, "getUnfreezeReason"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 194
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 196
    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_28} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_28} :catch_29

    return-object p0

    .line 199
    :catch_29
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: getUnfreezeReason"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_30
    const-string p0, ""

    return-object p0
.end method

.method public isEnableNightNetwork()Z
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 289
    :try_start_8
    const-string v1, "isEnableNightNetwork"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 290
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 292
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1d} :catch_1e

    return p0

    .line 295
    :catch_1e
    const-string p0, "TranAospUsfManager"

    const-string v0, "Method not found: isEnableNightNetwork"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledHiber()Z
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 51
    :try_start_8
    const-string v1, "isEnabledHiber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 54
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1d} :catch_1e

    return p0

    .line 57
    :catch_1e
    const-string p0, "TranAospUsfManager"

    const-string v0, "Method not found: isEnabledHiber"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isFastFreezerEnable()Z
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 209
    :try_start_8
    const-string v1, "isFastFreezerEnable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 212
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1d} :catch_1e

    return p0

    .line 215
    :catch_1e
    const-string p0, "TranAospUsfManager"

    const-string v0, "Method not found: isFastFreezerEnable"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isRuntimeWhiteApp(I)Z
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_32

    .line 177
    :try_start_8
    const-string v1, "isRuntimeWhiteApp"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 180
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2a} :catch_2b

    return p0

    .line 183
    :catch_2b
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: isRuntimeWhiteApp"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_2e

    .line 111
    :try_start_8
    const-string v1, "isWhiteApp"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 114
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_26} :catch_27

    return p0

    .line 117
    :catch_27
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: isWhiteApp"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public setAppMode(II)V
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_2d

    .line 67
    :try_start_8
    const-string v1, "setAppMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_25} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_25} :catch_26

    return-void

    .line 70
    :catch_26
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: setAppMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public unfreeze(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 141
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityClass:Ljava/lang/Class;

    if-eqz v1, :cond_2b

    .line 143
    :try_start_a
    const-string v2, "unfreeze"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/tranfs/TranAospUsfManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_23} :catch_24

    return-void

    .line 146
    :catch_24
    const-string p0, "TranAospUsfManager"

    const-string p1, "Method not found: unfreeze"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method
