.class public interface abstract Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITranAospStorageEventListenerExt"
.end annotation


# virtual methods
.method public abstract onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onVolumeStateChanged(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;II)V
.end method
