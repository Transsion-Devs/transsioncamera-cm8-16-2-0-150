.class public interface abstract Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 309
    const-string v2, "vendor$transsion$hardware$camera$tzservice$ITZCaptureCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onTZCapAllDone()Z
.end method

.method public abstract onTZSGetAppUserID()I
.end method

.method public abstract onTZSGetBatteryLevel()I
.end method

.method public abstract onTZSGetPackageName()Ljava/lang/String;
.end method

.method public abstract onTZSGetSystemUserID()I
.end method
