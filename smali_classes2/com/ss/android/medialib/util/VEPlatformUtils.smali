.class public Lcom/ss/android/medialib/util/VEPlatformUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatform()Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    .registers 3

    .line 46
    sget-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_UNKNOWN:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 48
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 50
    const-string v2, "qcom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 51
    sget-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_QCOM:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    return-object v0

    .line 52
    :cond_f
    const-string v2, "mt[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 53
    sget-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_MTK:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    return-object v0

    .line 54
    :cond_1a
    const-string v2, "kirin[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 55
    sget-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_HISI:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    :cond_24
    return-object v0
.end method
