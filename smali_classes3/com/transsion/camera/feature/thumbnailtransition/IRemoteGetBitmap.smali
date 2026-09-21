.class public interface abstract Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$_Parcel;,
        Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;,
        Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.camera.feature.thumbnailtransition.IRemoteGetBitmap"


# virtual methods
.method public abstract getBitMap()Landroid/graphics/Bitmap;
.end method

.method public abstract hasNewBitmap()Z
.end method
