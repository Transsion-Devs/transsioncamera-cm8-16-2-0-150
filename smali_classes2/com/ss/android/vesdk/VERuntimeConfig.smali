.class public Lcom/ss/android/vesdk/VERuntimeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "VERuntimeConfig"

.field public static sBingoRefactor:Z = false

.field public static sHardWareEncFallBack:I = 0x0

.field public static sOpenEditorFpsLog:Z = false

.field public static sOutResolutionBase4:Z = false

.field public static sRuntimeConfigMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sSeekTimeCostOpt:Z = false

.field private static sUseSingleGLThread:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    sget-object v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->HW_ENC_FALLBACK_NONE:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->getValue()I

    move-result v0

    sput v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sRuntimeConfigMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueForKey(Ljava/lang/String;J)J
    .registers 4

    .line 96
    sget-object v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sRuntimeConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 97
    sget-object p1, Lcom/ss/android/vesdk/VERuntimeConfig;->sRuntimeConfigMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_15
    return-wide p1
.end method

.method public static setConfig(I)V
    .registers 5

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 58
    :goto_b
    sput-boolean v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sUseSingleGLThread:Z

    and-int/lit16 v0, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 59
    :goto_16
    sput-boolean v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sSeekTimeCostOpt:Z

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1e

    move v1, v2

    .line 61
    :cond_1e
    sput-boolean v1, Lcom/ss/android/vesdk/VERuntimeConfig;->sOutResolutionBase4:Z

    .line 62
    sget-object p0, Lcom/ss/android/vesdk/VERuntimeConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig, sUseSingleGLThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ss/android/vesdk/VERuntimeConfig;->sUseSingleGLThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSeekTimeCostOpt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ss/android/vesdk/VERuntimeConfig;->sSeekTimeCostOpt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sOutResolutionBase4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/ss/android/vesdk/VERuntimeConfig;->sOutResolutionBase4:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRuntimeConfig(Ljava/lang/String;)V
    .registers 6

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_29

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    :try_start_15
    sget-object v2, Lcom/ss/android/vesdk/VERuntimeConfig;->sRuntimeConfigMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_9

    :catch_23
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_28
    return-void

    :catch_29
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static useSingleGLThread()Z
    .registers 3

    .line 108
    sget-boolean v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sUseSingleGLThread:Z

    if-nez v0, :cond_17

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "vesdk_use_agfxcontext"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
