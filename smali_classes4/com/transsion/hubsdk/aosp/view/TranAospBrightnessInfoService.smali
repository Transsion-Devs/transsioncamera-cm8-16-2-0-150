.class public Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospBrightnessInfoService"

.field private static sBrightnessInfoClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "android.view.Display"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sClassName:Ljava/lang/Class;

    .line 28
    const-string v0, "android.hardware.display.BrightnessInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBrightnessInfo()Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
    .registers 11

    const/4 p0, 0x0

    .line 36
    :try_start_1
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;-><init>()V

    .line 37
    sget-object v1, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sClassName:Ljava/lang/Class;

    const-string v2, "getBrightnessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v0

    .line 42
    :cond_1a
    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 43
    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :catch_39
    move-exception v0

    goto :goto_9e

    .line 45
    :cond_3b
    :goto_3b
    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v3, "brightness"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    .line 47
    sget-object v3, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v4, "adjustedBrightness"

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    .line 49
    sget-object v4, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v5, "brightnessMinimum"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    .line 51
    sget-object v5, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v6, "brightnessMaximum"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    .line 53
    sget-object v6, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v7, "highBrightnessTransitionPoint"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    .line 55
    sget-object v7, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v8, "highBrightnessMode"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 56
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 57
    sget-object v8, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v9, "brightnessMaxReason"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 58
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 59
    iput v2, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    .line 60
    iput v3, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    .line 61
    iput v4, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    .line 62
    iput v5, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    .line 63
    iput v6, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    .line 64
    iput v7, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    .line 65
    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_39

    return-object v0

    .line 68
    :goto_9e
    sget-object v1, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessInfo fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
