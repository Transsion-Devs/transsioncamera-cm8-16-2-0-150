.class public Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospStorageEventListener"
.end annotation


# instance fields
.field private iListener:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;->this$0:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;->iListener:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 113
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;->iListener:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 10

    if-eqz p1, :cond_28

    .line 119
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;->this$0:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;-><init>(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;->setDescription(Ljava/lang/String;)V

    .line 121
    iget p1, p1, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;->setState(I)V

    .line 123
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;->iListener:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;

    invoke-interface {p0, v0, p2, p3}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;->onVolumeStateChanged(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;II)V

    :cond_28
    return-void
.end method
