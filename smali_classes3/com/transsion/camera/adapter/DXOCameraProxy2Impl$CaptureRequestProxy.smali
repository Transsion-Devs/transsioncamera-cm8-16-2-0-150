.class abstract Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureRequestProxy"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final getRequestType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 225
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureRequestProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 226
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    const-string v2, "getRequestType"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;->getRequestType:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static getRequestType(Landroid/hardware/camera2/CaptureRequest;)I
    .registers 5

    .line 229
    sget-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;->getRequestType:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    if-eqz v0, :cond_2e

    if-eqz p0, :cond_2e

    const/4 v2, 0x0

    .line 231
    :try_start_8
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 232
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    .line 233
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 236
    sget-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2e
    return v1
.end method
