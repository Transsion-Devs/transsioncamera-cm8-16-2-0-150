.class public Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;,
        Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;,
        Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$VolumeInfoExt;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospStorageManagerExt"


# instance fields
.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;",
            "Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mListenerMap:Landroid/util/ArrayMap;

    .line 33
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method


# virtual methods
.method public registerListener(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V
    .registers 4

    .line 38
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;-><init>(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V

    .line 39
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public unregisterListener(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$TranAospStorageEventListener;

    if-eqz v0, :cond_14

    .line 47
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method
