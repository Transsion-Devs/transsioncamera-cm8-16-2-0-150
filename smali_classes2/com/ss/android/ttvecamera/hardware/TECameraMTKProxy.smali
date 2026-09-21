.class public Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;
.super Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static sNoZsdPlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlatform:Ljava/lang/String;

.field private static sZsdModeSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sNoZsdPlatforms:Ljava/util/List;

    .line 24
    const-string v0, "ro.mediatek.platform"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttvecamera/framework/TEReflectUtil;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sPlatform:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sNoZsdPlatforms:Ljava/util/List;

    const-string v19, "MT6570"

    const-string v20, "MT6761"

    const-string v1, "MT6571"

    const-string v2, "MT6595"

    const-string v3, "MT6795"

    const-string v4, "MT6572"

    const-string v5, "MT6752"

    const-string v6, "MT6582"

    const-string v7, "MT6735"

    const-string v8, "MT6592"

    const-string v9, "MT6753"

    const-string v10, "MT6589"

    const-string v11, "MT6755"

    const-string v12, "MT6735m"

    const-string v13, "MT6737T"

    const-string v14, "MT6580"

    const-string v15, "MT6750"

    const-string v16, "MT6750S"

    const-string v17, "MT6737"

    const-string v18, "MT6739"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static isMTKPlatform()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sPlatform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportZsdMode()Z
    .registers 2

    .line 58
    sget-boolean v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sZsdModeSupport:Z

    if-nez v0, :cond_17

    .line 59
    sget-object v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sNoZsdPlatforms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sPlatform:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sput-boolean v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sZsdModeSupport:Z

    .line 63
    :cond_17
    sget-boolean v0, Lcom/ss/android/ttvecamera/hardware/TECameraMTKProxy;->sZsdModeSupport:Z

    return v0
.end method
