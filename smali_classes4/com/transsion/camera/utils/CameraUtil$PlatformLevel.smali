.class public abstract Lcom/transsion/camera/utils/CameraUtil$PlatformLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformLevel"
.end annotation


# static fields
.field private static final PLATFORM_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2270
    const-string v0, "ro.tr_animation.platform_level"

    const/4 v1, 0x3

    .line 2271
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/CameraUtil$PlatformLevel;->PLATFORM_LEVEL:I

    return-void
.end method

.method public static isHigherPlatform(I)Z
    .registers 2

    .line 2290
    sget v0, Lcom/transsion/camera/utils/CameraUtil$PlatformLevel;->PLATFORM_LEVEL:I

    if-lt v0, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
