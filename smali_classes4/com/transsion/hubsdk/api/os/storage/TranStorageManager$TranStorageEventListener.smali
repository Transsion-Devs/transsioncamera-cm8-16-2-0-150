.class public interface abstract Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TranStorageEventListener"
.end annotation


# virtual methods
.method public abstract onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVolumeStateChanged(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;II)V
.end method
