.class public Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_46

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$1;)V

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 34
    :try_start_2d
    new-instance v1, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingInterface;

    .line 35
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 36
    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3e

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_3e
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    throw v1

    .line 41
    :cond_43
    const-string p0, ""

    return-object p0

    .line 24
    :cond_46
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call in the main thread, You must call in the other thread"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
