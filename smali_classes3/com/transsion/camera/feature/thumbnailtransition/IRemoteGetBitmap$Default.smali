.class public Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitMap()Landroid/graphics/Bitmap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNewBitmap()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
