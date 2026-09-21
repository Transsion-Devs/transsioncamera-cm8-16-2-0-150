.class public final Lcom/transsion/widgetslib/util/VibrateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUNDLE_VIBRATE:Landroid/os/Bundle;

.field private static final CLASS_ITRAN_VIBRATOR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final FILE_VIBRATE:Ljava/lang/String; = "Time_roller.he"

.field public static final INSTANCE:Lcom/transsion/widgetslib/util/VibrateUtils;

.field private static final METHOD_VIBRATE:Ljava/lang/reflect/Method;

.field private static final PACKAGE_NAME_KEY_VIBRATE:Ljava/lang/String; = "tran_vibrate_package"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/transsion/widgetslib/util/VibrateUtils;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/VibrateUtils;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->INSTANCE:Lcom/transsion/widgetslib/util/VibrateUtils;

    .line 14
    const-string v0, "VibrateUtils"

    sput-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "com.transsion.hubsdk.os.TranVibrator"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->CLASS_ITRAN_VIBRATOR:Ljava/lang/Class;

    .line 16
    const-class v1, Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-static {v0, v2, v1}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/widgetslib/util/VibrateUtils;->METHOD_VIBRATE:Ljava/lang/reflect/Method;

    .line 17
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/transsion/widgetslib/util/VibrateUtils;->BUNDLE_VIBRATE:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 24
    :try_start_2d
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_37
    sput-object v1, Lcom/transsion/widgetslib/util/VibrateUtils;->instance:Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    .line 26
    sget-object v1, Lcom/transsion/widgetslib/util/VibrateUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get VIBRATOR instance. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final vibrateV2(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_5
    sget-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_26

    .line 34
    sget-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->BUNDLE_VIBRATE:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 35
    const-string v1, "tran_vibrate_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/transsion/widgetslib/util/VibrateUtils;->METHOD_VIBRATE:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_26

    sget-object v1, Lcom/transsion/widgetslib/util/VibrateUtils;->instance:Ljava/lang/Object;

    const-string v2, "Time_roller.he"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p0

    .line 39
    sget-object v0, Lcom/transsion/widgetslib/util/VibrateUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke vibrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
